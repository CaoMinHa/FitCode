package foxconn.fit.service.bi;

import foxconn.fit.dao.base.BaseDaoHibernate;
import foxconn.fit.dao.bi.PoFlowDao;
import foxconn.fit.dao.bi.PoTaskDao;
import foxconn.fit.entity.base.AjaxResult;
import foxconn.fit.entity.bi.PoCdMonthDown;
import foxconn.fit.entity.bi.PoTask;
import foxconn.fit.service.base.BaseService;
import foxconn.fit.service.base.UserDetailImpl;
import foxconn.fit.util.EmailUtil;
import foxconn.fit.util.ExceptionUtil;
import foxconn.fit.util.SecurityUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

/**
 * @author Yang DaiSheng
 * @program fit
 * @description
 * @create 2021-04-21 14:27
 **/
@Service
@Transactional(rollbackFor = Exception.class)
public class PoTaskService extends BaseService<PoTask> {

    @Autowired
    private PoTaskDao poTaskDao;
    @Autowired
    private PoFlowDao poFlowDao;
    @Autowired
    private PoRoleService roRoleService;
    @Autowired
    private PoTableService poTableService;


    @Override
    public BaseDaoHibernate<PoTask> getDao() {
        return poTaskDao;
    }


    public void updateData(String updateSql) {
        poTaskDao.getSessionFactory().getCurrentSession().createSQLQuery(updateSql).executeUpdate();
    }


    public AjaxResult addCpoTask(AjaxResult ajaxResult,String year) {
        String flagSql="select  COUNT(*)  " + "from FIT_PO_Target_CPO_CD_DTL where year='"+year+"' and flag is not null ";
        List<Map> countMaps = poTableService.listMapBySql(flagSql);
        if(countMaps!=null&&"0".equals(countMaps.get(0).get("COUNT(*)").toString())){
            String taskId = UUID.randomUUID().toString();
            UserDetailImpl loginUser = SecurityUtils.getLoginUser();
            String user = loginUser.getUsername();
            List<String> userName= poTableService.listBySql("select realname from FIT_USER where username='"+user+"' and type='BI'");
            if(null==userName.get(0)){
                userName.set(0,user);
            }
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String signTimet = df.format(new Date());
            String updateSql = " update FIT_PO_Target_CPO_CD_DTL set flag='0', TASK_ID=" + "'" + taskId + "'," +
                    " FLOW_USER=" + "'" + user + "'," + " FLOW_TIME=" + "'" + signTimet + "'" +", USERNAME='"+userName.get(0)+"'"+
                    " WHERE YEAR=" + year;
            String like = year + "%";
            poFlowDao.getSessionFactory().getCurrentSession().createSQLQuery(updateSql).executeUpdate();
            String deleteSql = " delete from FIT_PO_TASK where name like " + "'" + like + "'" + " and type='FIT_PO_Target_CPO_CD_DTL'";
            poTaskDao.getSessionFactory().getCurrentSession().createSQLQuery(deleteSql).executeUpdate();
            String name = year + "???SBU??????CD????????????";
            String sql = " insert into FIT_PO_TASK (ID,TYPE,NAME,FLAG,CREATE_USER,CREATE_TIME,UPDATE_USER,UPDTAE_TIME,CREATE_USER_REAL,UPDATE_USER_REAL) " +
                    " values ( ";
            sql = sql + "'" + taskId + "'," + "'FIT_PO_Target_CPO_CD_DTL'," + "'" + name + "'," + "'0'," + "'" + user + "'," + "'" + signTimet + "'," + "'" + user + "'," + "'" + signTimet + "'" +
                    ",'"+userName.get(0)+"','"+userName.get(0)+"')";
            poTaskDao.getSessionFactory().getCurrentSession().createSQLQuery(sql).executeUpdate();
        }else{
            ajaxResult.put("flag", "fail");
            ajaxResult.put("msg", "???????????????????????????????????? ");
        }
        return ajaxResult;

    }

    /*
      ???????????? ?????? sbu cpo
      ?????????????????????????????? ?????????+?????? ???????????????
      type ????????????
      cm ????????????
     */

    public AjaxResult submit(AjaxResult ajaxResult,String type,String taskId,String roleCode) throws Exception {
        String sql = "";
        String msg="";
        String flag="1";
        //?????????????????????????????????????????????0???????????????1????????????
        String step="";
        List<String> emailList=new ArrayList<>();
        if ("FIT_PO_BUDGET_CD_DTL".equalsIgnoreCase(type)||
                "FIT_ACTUAL_PO_NPRICECD_DTL".equalsIgnoreCase(type)||
                "FIT_PO_CD_MONTH_DTL".equalsIgnoreCase(type)) {
            if("FIT_PO_CD_MONTH_DTL".equalsIgnoreCase(type)){
                String update="update FIT_PO_CD_MONTH_DTL set flag='0' where TASK_ID='"+taskId+"'";
                //?????????????????????down?????????????????????
                roRoleService.updateData(update);
                ajaxResult=this.checkCDObjectiveSummaryStatus(ajaxResult,taskId);
                Map<Object, Object> map=ajaxResult.getResult();
                if(map.get("flag").equals("fail")){
                    return ajaxResult;
                }
            }
            sql = " select distinct u.email from  fit_user u \n" +
                    " left join FIT_PO_AUDIT_ROLE_USER ur on u.id=ur.user_id \n" +
                    " left join FIT_PO_AUDIT_ROLE r on ur.role_id=r.id\n" +
                    " WHERE  r.code='CLASS' and u.type='BI'  and u.email is not null and instr(','||u.COMMODITY_MAJOR||',', (select ','||COMMODITY_MAJOR||',' from FIT_PO_TASK" +
                    " WHERE id='"+taskId+"')) > 0";
            List<String> classMaps = roRoleService.listBySql(sql);
            if (classMaps.size() == 0) {
                sql = " select distinct u.email from  fit_user u \n" +
                        " left join FIT_PO_AUDIT_ROLE_USER ur on u.id=ur.user_id \n" +
                        " left join FIT_PO_AUDIT_ROLE r on ur.role_id=r.id\n" +
                        " WHERE  r.code='MANAGER' and u.type='BI'  and u.email is not null and instr(','||u.COMMODITY_MAJOR||',', " +
                        "(select ','||COMMODITY_MAJOR||',' from FIT_PO_TASK WHERE id='"+taskId+"')) > 0";
                List<String> managers = roRoleService.listBySql(sql);
                flag="2";
                step="1";
                emailList=managers.stream().distinct().collect(Collectors.toList());
                msg="???????????????:</br>&nbsp;&nbsp;??????CD?????????????????????!";
            } else {
                emailList=classMaps.stream().distinct().collect(Collectors.toList());
                msg="???????????????:</br>&nbsp;&nbsp;??????CD?????????????????????!";
            }

        } else if ("FIT_PO_SBU_YEAR_CD_SUM".equals(type)) {
            sql = " select distinct  u.email from  fit_user u \n" +
                    " left join FIT_PO_AUDIT_ROLE_USER ur on u.id=ur.user_id \n" +
                    " left join FIT_PO_AUDIT_ROLE r on ur.role_id=r.id\n" +
                    " WHERE  r.code='PD' and u.type='BI' and u.email is not null and instr(','||u.SBU||',', " +
                    "(select ','||SBU||',' from FIT_PO_TASK WHERE id='"+taskId+"')) > 0";
            List<String> keyUser = roRoleService.listBySql(sql);
            emailList=keyUser.stream().distinct().collect(Collectors.toList());
            msg="???????????????:</br>&nbsp;&nbsp;SBU??????CD???????????????????????????!";
        } else if ("FIT_PO_Target_CPO_CD_DTL".equals(type)) {
            sql = " select distinct u.email from  fit_user u \n" +
                    " left join FIT_PO_AUDIT_ROLE_USER ur on u.id=ur.user_id \n" +
                    " left join FIT_PO_AUDIT_ROLE r on ur.role_id=r.id\n" +
                    " WHERE  r.code='T_MANAGER' and u.type='BI' and u.email is not null";
            List<String> tManager = roRoleService.listBySql(sql);
            emailList=tManager.stream().distinct().collect(Collectors.toList());
            msg="???????????????:</br>&nbsp;&nbsp;SBU??????CD???????????????????????????!";
        }else{
                ajaxResult.put("flag", "fail");
                ajaxResult.put("msg", "??????????????????(Task Type Fail)");
                return ajaxResult;
        }
        if(emailList.size()==0){
            ajaxResult.put("flag", "fail");
            ajaxResult.put("msg", "?????????????????????????????????????????????(Task Type Fail)");
            return ajaxResult;
        }else {
            //?????????????????????????????????????????????????????????isSend?????????isSend??????
            //????????????????????????????????????
            Boolean isSend = EmailUtil.emailsMany(emailList, "??????BI??????????????????????????????",msg+"</br>&nbsp;&nbsp;<a href=\"http://10.98.5.23:8080/fit/login?taskId="+taskId+"&statusType="+flag+"&roleCode="+replaceRole(roleCode,"1")+"\" style=\"color: blue;\">????????????</a>");
            if(isSend){  //???
                uploadTaskFlag(taskId,flag,type,"",step,"T");
            }else{
                ajaxResult.put("flag", "fail");
                ajaxResult.put("msg", "?????????????????? (Task Type Fail)");
                return ajaxResult;
            }
        }
        return ajaxResult;
    }

    /**
     * ????????????CDby??????????????????????????????????????????SBU??????????????????????????????????????????????????????
     * @param ajaxResult
     * @param taskId
     * @return
     */
    public  AjaxResult checkCDObjectiveSummaryStatus(AjaxResult ajaxResult,String taskId) throws Exception {
        String sql="select * from FIT_PO_CD_MONTH_DOWN where TASK_ID='"+taskId+"'";
        List<PoCdMonthDown> list=poTableService.listBySql(sql,PoCdMonthDown.class);
        for(int i=0;i<list.size();i++){
            PoCdMonthDown poCdMonthDown=list.get(i);
            String sqlCounrt="select COUNT(1) from FIT_PO_SBU_YEAR_CD_SUM where FLAG='3' and YEAR='"+poCdMonthDown.getYear()+"' and " +
                    "SBU='"+poCdMonthDown.getSbu()+"' and COMMODITY_MAJOR='"+poCdMonthDown.getCommodityMajor()+"'";
            List<Map> maps = poTableService.listMapBySql(sqlCounrt);
            if (maps == null || "0".equals(maps.get(0).get("COUNT(1)").toString())) {
                ajaxResult.put("flag", "fail");
                ajaxResult.put("msg","???????????????\""+poCdMonthDown.getYear()+"???+"+poCdMonthDown.getSbu()+"+"
                        +poCdMonthDown.getCommodityMajor()+"\"????????????\"SBU??????CD???????????????\"??????????????????????????????????????????");
                return ajaxResult;
            }
        }

//        for(int i=0;i<list.size();i++){
//            PoCdMonthDown poCdMonthDown=list.get(i);
//            String sqlCounrt="select COUNT(1) from fit_po_target_cpo_cd_dtl where FLAG='3' and YEAR='"+poCdMonthDown.getYear()+
//                    "' and COMMODITY_MAJOR='"+poCdMonthDown.getCommodityMajor()+"'";
//            List<Map> maps = poTableService.listMapBySql(sqlCounrt);
//            if (maps == null || "0".equals(maps.get(0).get("COUNT(1)").toString())) {
//                ajaxResult.put("flag", "fail");
//                ajaxResult.put("msg","???????????????\""+poCdMonthDown.getYear()+"???+"
//                        +poCdMonthDown.getCommodityMajor()+"\"????????????\"??????CD ???????????????\"??????????????????????????????????????????");
//                return ajaxResult;
//            }
//        }

        try {
            poTableService.validateMonth(taskId);
        }catch (RuntimeException e){
            ajaxResult.put("flag", "fail");
            ajaxResult.put("msg", e.getMessage() + "?????????CD????????????,?????????????????????");
            return ajaxResult;
        }catch (Exception e){
            e.printStackTrace();
            ajaxResult.put("flag", "fail");
            ajaxResult.put("msg", "??????????????????????????????????????????");
            return ajaxResult;
        }
        return ajaxResult;
    }
    /**
      ?????? ?????? cpo
      ?????????????????????????????? ?????????+?????? ???????????????
      type ????????????
      cm ????????????
     */
    public AjaxResult submitOne(AjaxResult ajaxResult,String type,String taskId,String status,String reamrk,String roleCode) {
        String sql = "";
        String msg="";
        String flag="2";
        String step="";
        List<String> emailList=new ArrayList<>();
        String sqlC="select distinct email from fit_user where username=(select CREATE_USER from FIT_PO_TASK WHERE id='"+taskId+"') and type='BI' and email is not null";
        List<String> emailListC=roRoleService.listBySql(sqlC);
        emailListC=emailListC.stream().distinct().collect(Collectors.toList());
        String msgC="????????????????????????";
        if ("FIT_PO_BUDGET_CD_DTL".equalsIgnoreCase(type)||
                "FIT_ACTUAL_PO_NPRICECD_DTL".equalsIgnoreCase(type)||
                "FIT_PO_CD_MONTH_DTL".equalsIgnoreCase(type)) {
                if("FIT_PO_CD_MONTH_DTL".equalsIgnoreCase(type)){
                    type="FIT_PO_CD_MONTH_DOWN";
                }
                if(!"0".equals(status)){
                    //??????
                    sql=sqlC;
                    msg="???????????????:</br>&nbsp;&nbsp;??????CD??????????????????????????????!";
                    flag="-1";
                }else{
                    sql = " select distinct u.email from  fit_user u \n" +
                            " left join FIT_PO_AUDIT_ROLE_USER ur on u.id=ur.user_id \n" +
                            " left join FIT_PO_AUDIT_ROLE r on ur.role_id=r.id\n" +
                            " WHERE  r.code='MANAGER' and u.type='BI' and u.email is not null and instr(','||u.COMMODITY_MAJOR||',', " +
                            "(select ','||COMMODITY_MAJOR||',' from FIT_PO_TASK WHERE id='"+taskId+"')) > 0";
                    msg="???????????????:</br>&nbsp;&nbsp;??????CD?????????????????????!";
                    msgC="???????????????:</br>&nbsp;&nbsp;??????CD???????????????????????????!";
                }
                List<String> managers = roRoleService.listBySql(sql);
                emailList=managers.stream().distinct().collect(Collectors.toList());

        } else if ("FIT_PO_Target_CPO_CD_DTL".equals(type)) {
            UserDetailImpl loginUser = SecurityUtils.getLoginUser();
            String user = loginUser.getUsername();
            List<String> userName= poTableService.listBySql("select realname from FIT_USER where username='"+user+"' and type='BI'");
            if(null==userName.get(0)){
                userName.set(0,user);
            }
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String signTimet = df.format(new Date());
            String updateSql = " update FIT_PO_Target_CPO_CD_DTL set" +
                    " FLOW_USER=" + "'" + user + "'," + " FLOW_TIME=" + "'" + signTimet + "'" +", USERNAME='"+userName.get(0)+"'"+
                    " WHERE task_id= '" + taskId+"'";
            poFlowDao.getSessionFactory().getCurrentSession().createSQLQuery(updateSql).executeUpdate();
            if(!"0".equals(status)){
                //??????
                sql=sqlC;
                msg="???????????????:</br>&nbsp;&nbsp;SBU??????CD????????????????????????????????????!";
                flag="-1";
            }else{
                sql = " select distinct u.email from  fit_user u \n" +
                        " left join FIT_PO_AUDIT_ROLE_USER ur on u.id=ur.user_id \n" +
                        " left join FIT_PO_AUDIT_ROLE r on ur.role_id=r.id\n" +
                        " WHERE  r.code='CPO' and u.type='BI' and u.email is not null";
                msg="???????????????:</br>&nbsp;&nbsp;SBU??????CD???????????????????????????!";
                msgC="???????????????:</br>&nbsp;&nbsp;SBU??????CD?????????????????????????????????!";
            }
            List<String> tManager = roRoleService.listBySql(sql);
            emailList=tManager.stream().distinct().collect(Collectors.toList());
        } else if ("FIT_PO_SBU_YEAR_CD_SUM".equals(type)) {
            if(!"0".equals(status)){
                //??????
                sql=sqlC;
                msg="???????????????:</br>&nbsp;&nbsp;SBU??????CD????????????????????????????????????!";
                flag="-1";
            }else{
                sql = " select distinct u.email from  fit_user u \n" +
                        " left join FIT_PO_AUDIT_ROLE_USER ur on u.id=ur.user_id \n" +
                        " left join FIT_PO_AUDIT_ROLE r on ur.role_id=r.id\n" +
                        " WHERE  r.code='KEYUSER' and u.type='BI' and u.email is not null and instr(','||u.SBU||',', " +
                        "(select ','||u.SBU||',' from FIT_PO_TASK WHERE id='"+taskId+"')) > 0";
                msg="???????????????:</br>&nbsp;&nbsp;??????CD?????????????????????!";
                msgC="???????????????:</br>&nbsp;&nbsp;??????CD???????????????????????????!";
            }
            List<String> tManager = roRoleService.listBySql(sql);
            emailList=tManager.stream().distinct().collect(Collectors.toList());
        }else{
            ajaxResult.put("flag", "fail");
            ajaxResult.put("msg", "??????????????????(Task Type Fail)");
            return ajaxResult;
        }
        if(emailList.size()==0&&emailListC.size()==0){
            ajaxResult.put("flag", "fail");
            ajaxResult.put("msg", "?????????????????????????????????????????????(Task Type Fail)");
            return ajaxResult;
        }else {
            if(flag.equalsIgnoreCase("-1")){
               roleCode=replaceRole("",taskId);
            }else if(flag.equalsIgnoreCase("2")){
               roleCode=replaceRole(roleCode,"1");
            }
            Boolean isSend = EmailUtil.emailsMany(emailList, "??????BI??????????????????????????????",msg+"</br>&nbsp;&nbsp;<a href=\"http://10.98.5.23:8080/fit/login?taskId="+taskId+"&statusType="+flag+"&roleCode="+roleCode+"\" style=\"color: blue;\">????????????</a>");
            if(isSend){ //???
                //??????????????????
                if("0".equals(status)){
                    Boolean isSend1 = EmailUtil.emailsMany(emailListC, "??????BI??????????????????????????????",msgC+"</br>&nbsp;&nbsp;<a href=\"http://10.98.5.23:8080/fit/login?taskId="+taskId+"&statusType="+flag+"&roleCode="+replaceRole("",taskId)+"\" style=\"color: blue;\">????????????</a>");
                    if(!isSend1){ //???
                        ajaxResult.put("flag", "fail");
                        ajaxResult.put("msg", "?????????????????? (Task Type Fail)");
                        return ajaxResult;
                    }
                }
                uploadTaskFlag(taskId,flag,type,reamrk,step,"C");
            }else{
                ajaxResult.put("flag", "fail");
                ajaxResult.put("msg", "?????????????????? (Task Type Fail)");
                return ajaxResult;
            }
        }
        return ajaxResult;
    }
    /*
     ?????? ?????? cpo
     ?????????????????????????????? ?????????+?????? ???????????????
     type ????????????
     cm ????????????
    */
    public AjaxResult submitEnd(AjaxResult ajaxResult,String type,String taskId,String status,String reamrk) {
        String msg="???????????????:</br>&nbsp;&nbsp;";
        String flag="3";
        String sqlC="select distinct email from fit_user where username=(select CREATE_USER from FIT_PO_TASK WHERE id='"+taskId+"')  and type='BI' and email is not null";

        List<String> emailListC=roRoleService.listBySql(sqlC);
        emailListC=emailListC.stream().distinct().collect(Collectors.toList());
        if ("FIT_PO_BUDGET_CD_DTL".equalsIgnoreCase(type)){
            msg+="??????CD????????????";
        }else if("FIT_ACTUAL_PO_NPRICECD_DTL".equalsIgnoreCase(type)){
            msg+="?????????????????????CD??????";
        }else if("FIT_PO_CD_MONTH_DTL".equalsIgnoreCase(type)) {
            msg+="??????CDby??????";
        } else if ("FIT_PO_SBU_YEAR_CD_SUM".equals(type)) {
            msg+="SBU??????CD????????????";
        }else if ("FIT_PO_Target_CPO_CD_DTL".equals(type)) {
            msg+="??????CD???????????????";
        }
        if("0".equals(status)){
            msg+="????????????????????????";
        }else {
            msg+= "???????????????????????????????????????";
            flag="-1";
        }

            if(emailListC.size()==0){
                ajaxResult.put("flag", "fail");
                ajaxResult.put("msg", "?????????????????????????????????????????????(Task Type Fail)");
                return ajaxResult;
            }else {
                List<String> emailList=new ArrayList<>();
                String[] user=null;
                if ("FIT_PO_SBU_YEAR_CD_SUM".equals(type)) {
                    String sql = "select distinct EMAIL from fit_user where COMMODITY_MAJOR is not null and type='BI' and  EMAIL is not null";
                    emailList = roRoleService.listBySql(sql);
                    sql = "select distinct u.EMAIL from fit_user u,FIT_PO_AUDIT_ROLE r ,FIT_PO_AUDIT_ROLE_USER ur where u.id=ur.user_id and r.id=ur.role_id and u.type='BI' and r.code in ('CLASS','MANAGER')" +
                            "union all " +
                            "select distinct u.EMAIL from fit_user u,FIT_PO_AUDIT_ROLE r ,FIT_PO_AUDIT_ROLE_USER ur where u.id=ur.user_id and r.id=ur.role_id and u.type='BI' and u.username='KSK0R959'";
                    emailList.addAll(roRoleService.listBySql(sql));
                    emailList = emailList.stream().distinct().collect(Collectors.toList());
                    sql = "select NAME from fit_po_task where type='FIT_PO_SBU_YEAR_CD_SUM' and id='" + taskId + "'";
                    List<String> userList = roRoleService.listBySql(sql);
                    user = userList.get(0).split("_");
                }
                Boolean isSend = EmailUtil.emailsMany(emailListC, "??????BI??????????????????????????????",msg+"</br>&nbsp;&nbsp;<a href=\"http://10.98.5.23:8080/fit/login?taskId="+taskId+"&statusType="+flag+"&roleCode="+replaceRole("",taskId)+"\" style=\"color: blue;\">????????????</a>");
                if(isSend){ //???
                    if("0".equals(status)){
                        uploadTaskFlag(taskId,"3",type,reamrk,"","Z");
                        if ("FIT_PO_SBU_YEAR_CD_SUM".equals(type)) {
                            msg="?????????????????????:</br> &nbsp;&nbsp;"+user[1]+"&nbsp;????????????????????????SBU CD??????????????????????????????";
                            Boolean isSends = EmailUtil.emailsMany(emailList, user[1]+"  SBU??????VOC",msg+"</br>&nbsp;&nbsp;<a href=\"http://10.98.5.23:8080/fit/login?taskId="+taskId+"\" style=\"color: blue;\">????????????</a>");
                            if(!isSends){ //???
                                ajaxResult.put("flag", "fail");
                                ajaxResult.put("msg", "Commodity???????????????????????? (Task Type Fail)");
                                return ajaxResult;
                            }
                        }
                    }else{
                        uploadTaskFlag(taskId,"-1",type,reamrk,"","Z");
                    }
                }else{
                    ajaxResult.put("flag", "fail");
                    ajaxResult.put("msg", "?????????????????? (Task Type Fail)");
                    return ajaxResult;
                }
            }
        return ajaxResult;
    }

    /*
      ????????????,???????????????SBU
    */
    public void uploadTaskFlag(String id, String flag, String tableName,String remark,String step,String checkStu) {
            UserDetailImpl loginUser = SecurityUtils.getLoginUser();
            String user = loginUser.getUsername();
            List<String> userName= poTableService.listBySql("select realname from FIT_USER where username='"+user+"' and type='BI'");
            if(null==userName.get(0)){
                userName.set(0,user);
            }
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String signTimet = df.format(new Date());
            String taskSql = " update FIT_PO_TASK set flag=" + "'" + flag + "'," + "UPDTAE_TIME =" + "'" + signTimet + "'," + " UPDATE_USER="
                    + "'" + user +"', UPDATE_USER_REAL ='"+userName.get(0)+"',";
            if("C".equalsIgnoreCase(checkStu)){
                taskSql+="AUDIT_ONE='"+user+"',";
            }else if("Z".equalsIgnoreCase(checkStu)){
                taskSql+="AUDIT_TWO='"+user+"',";
            }
            if (!StringUtils.isBlank(remark)) {
                taskSql += "remark=" + "'" + remark + "',";
            }
            if (!StringUtils.isBlank(step)) {
                taskSql += "step=" + "'" + step + "',";
            }
            taskSql=taskSql.substring(0,taskSql.length()-1);
            taskSql+=" where id='"+id+"'";
            poTaskDao.getSessionFactory().getCurrentSession().createSQLQuery(taskSql).executeUpdate();
            String updateSql = " update " + tableName + " set flag=" + "'" + flag + "'" + " where task_id=" + "'" + id + "'";
            poTaskDao.getSessionFactory().getCurrentSession().createSQLQuery(updateSql).executeUpdate();
            taskSql="select NAME from FIT_PO_TASK where id='"+id+"'";
            List<String> name= poTaskDao.listBySql(taskSql);
            if(null!=name&&name.size()>0){
                taskSql="insert into epmods.FIT_PO_TASK_LOG(task_name,create_user,create_time,remark,flag) values('"+name.get(0)+"','"+userName.get(0)+"','"+signTimet+"','"+remark+"','"+flag+"')";
                poTaskDao.getSessionFactory().getCurrentSession().createSQLQuery(taskSql).executeUpdate();
            }
    }

    /*
       ????????????????????????
       1 ????????????????????????????????????0
         ?????????????????????????????????????????????0
       2 cpo ?????????
     */

    public  AjaxResult cancelAudit(AjaxResult ajaxResult,String type,String id){
        if ("FIT_PO_BUDGET_CD_DTL".equalsIgnoreCase(type)||
                "FIT_ACTUAL_PO_NPRICECD_DTL".equalsIgnoreCase(type)||
                "FIT_PO_CD_MONTH_DTL".equalsIgnoreCase(type)
                ||"FIT_PO_SBU_YEAR_CD_SUM".equals(type)||"FIT_PO_Target_CPO_CD_DTL".equals(type)) {
            if("FIT_PO_CD_MONTH_DTL".equalsIgnoreCase(type)){
                type="FIT_PO_CD_MONTH_DOWN";
            }

            UserDetailImpl loginUser = SecurityUtils.getLoginUser();
            String user = loginUser.getUsername();
            List<String> userName= poTableService.listBySql("select realname from FIT_USER where username='"+user+"' and type='BI'");
            if(null==userName.get(0)){
                userName.set(0,user);
            }
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String signTimet = df.format(new Date());

            String sql=" update "+type+" set flag='0' where task_id='"+id+"'";
            String taskSql="update fit_po_task set flag='0' ,UPDTAE_TIME =" + "'" + signTimet + "'," + " UPDATE_USER="
                    + "'" + user +"', UPDATE_USER_REAL ='"+userName.get(0)+"' where id='"+id+"'";

            String sqlC="select distinct email from fit_user where username=(select CREATE_USER from FIT_PO_TASK WHERE id='"+id+"') and type='BI' and email is not null";

            List<String> emailListC=roRoleService.listBySql(sqlC);
            emailListC=emailListC.stream().distinct().collect(Collectors.toList());

            if(emailListC.size()==0){
                ajaxResult.put("flag", "fail");
                ajaxResult.put("msg", "?????????????????????????????????????????????(Task Type Fail)");
                return ajaxResult;
            }else {
                Boolean isSend = EmailUtil.emailsMany(emailListC, "??????BI??????????????????????????????","???????????????:</br>&nbsp;&nbsp;????????????????????????????????????????????????</br>&nbsp;&nbsp;<a href=\"http://10.98.5.23:8080/fit/login?taskId="+id+"&statusType=0&roleCode="+replaceRole("",id)+"\" style=\"color: blue;\">????????????</a>");
//                Boolean isSend = EmailUtil.emails(emailListC, "???????????????:</br>&nbsp;&nbsp;????????????????????????????????????????????????","??????BI??????????????????????????????");
                if(!isSend){
                    ajaxResult.put("flag", "fail");
                    ajaxResult.put("msg", "?????????????????? (Task Type Fail)");
                    return ajaxResult;
                }
            }
            poTaskDao.getSessionFactory().getCurrentSession().createSQLQuery(sql).executeUpdate();
            poTaskDao.getSessionFactory().getCurrentSession().createSQLQuery(taskSql).executeUpdate();

            taskSql="select NAME from FIT_PO_TASK where id='"+id+"'";
            List<String> name= poTaskDao.listBySql(taskSql);
            if(null!=name&&name.size()>0){
                taskSql="insert into epmods.FIT_PO_TASK_LOG(task_name,create_user,create_time,remark,flag) values('"+name.get(0)+"','"+userName.get(0)+"','"+signTimet+"','??????????????????????????????','0')";
                poTaskDao.getSessionFactory().getCurrentSession().createSQLQuery(taskSql).executeUpdate();
            }
            return ajaxResult;
        } else{
            ajaxResult.put("flag", "fail");
            ajaxResult.put("msg", "??????????????????(Task Type Fail)");
            return ajaxResult;
        }

    }


        /*
       ????????????
       cpo??????????????????
       ???????????????flag+taskId??????

     */

    public  AjaxResult cancelTask(AjaxResult ajaxResult,String id){
        try{
            List<String> list=poTaskDao.listBySql("select type from fit_po_task where id='"+id+"'");
            if (list.size()==1) {
                String deleteSql= "delete from fit_po_task where id='"+id+"'";
                String deleteSqlSJY= "delete from "+list.get(0)+" where TASK_ID='"+id+"'";
                String updateSql=" update FIT_PO_Target_CPO_CD_DTL set flag=null, task_id=null where task_id='"+id+"'";
                poTaskDao.getSessionFactory().getCurrentSession().createSQLQuery(deleteSql).executeUpdate();
                poTaskDao.getSessionFactory().getCurrentSession().createSQLQuery(deleteSqlSJY).executeUpdate();
                poTaskDao.getSessionFactory().getCurrentSession().createSQLQuery(updateSql).executeUpdate();
            }else {
                ajaxResult.put("flag", "fail");
                ajaxResult.put("msg", "??????????????????(Mission Cancel Failed)");
            }

        }catch (Exception e){
            ajaxResult.put("flag", "fail");
            ajaxResult.put("msg", "??????????????????(Mission Cancel Failed) : " + ExceptionUtil.getRootCauseMessage(e));
        }
        return ajaxResult;

    }

    public String replaceRole(String roleCode,String taskId){
        if(null!=taskId&&taskId.length()>2){
            roleCode="";
            String roleCodeSql=" select  r.code username from fit_user  u \n" +
                    "  left join FIT_PO_AUDIT_ROLE_USER ur on u.id=ur.user_id \n" +
                    "  left join FIT_PO_AUDIT_ROLE r on ur.role_id=r.id\n" +
                    "  where username=(select CREATE_USER from FIT_PO_TASK WHERE id='"+taskId+"')  and u.type='BI' and r.grade='1'";
            List<String> list=roRoleService.listBySql(roleCodeSql);
            if(null!=list&&list.size()>0){
                return list.get(0);
            }
        }else if (null!=taskId&&taskId.equalsIgnoreCase("1")) {
            switch (roleCode) {
                case "MM":
                    roleCode = "PD";
                    break;
                case "PD":
                    roleCode = "KEYUSER";
                    break;
                case "TDC":
                    roleCode = "T_MANAGER";
                    break;
                case "T_MANAGER":
                    roleCode = "CPO";
                    break;
                case "SOURCER":
                    roleCode = "CLASS";
                    break;
                case "CLASS":
                    roleCode = "MANAGER";
                    break;
                default:
                    roleCode = "";
                    break;
            }
        }
        return roleCode;
    }
}