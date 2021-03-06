package foxconn.fit.controller.bi;

import com.monitorjbl.xlsx.StreamingReader;
import foxconn.fit.advice.Log;
import foxconn.fit.controller.BaseController;
import foxconn.fit.entity.base.AjaxResult;
import foxconn.fit.service.bi.PlOfflineDataSupplementService;
import foxconn.fit.service.bi.PoTableService;
import foxconn.fit.util.ExceptionUtil;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.util.WebUtils;
import org.springside.modules.orm.Page;
import org.springside.modules.orm.PageRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * @author maggao
 */
@Controller
@RequestMapping("/bi/plOfflineDataSupplement")
public class PlOfflineDataSupplementController extends BaseController {

    @Autowired
    private PoTableService poTableService;

    @Autowired
    private PlOfflineDataSupplementService offlineDataSupplementService;

    @RequestMapping(value = "index")
    public String index() {
        return "/bi/plOfflineDataSupplement/index";
    }

    @RequestMapping(value = "/query")
    @ResponseBody
    public String query(AjaxResult result,HttpServletRequest request,String type){
        try {
            Locale locale = (Locale) WebUtils.getSessionAttribute(request,SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
            List<Map> map=offlineDataSupplementService.selectQuery(type,locale);
            result.put("queryList", map);
        }catch (Exception e){
            logger.error("?????????????????????????????????", e);
            result.put("flag", "fail");
            result.put("msg", ExceptionUtil.getRootCauseMessage(e));
        }
        return result.getJson();
    }
    @RequestMapping(value = "/list")
    public String list(Model model, PageRequest pageRequest, HttpServletRequest request,String queryCondition,String type) {
        try {
            Locale locale = (Locale) WebUtils.getSessionAttribute(request, SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
            String sql = offlineDataSupplementService.selectDataSql(queryCondition,locale,model,type);
            Page<Object[]> page = poTableService.findPageBySql(pageRequest, sql);
            int index = 1;
            if (pageRequest.getPageNo() > 1) {
                index = 2;
            }
            model.addAttribute("index", index);
            model.addAttribute("page", page);
            model.addAttribute("tableType", type);
        } catch (Exception e) {
            logger.error("??????????????????(Failed to query data)", e);
        }
        return "/bi/plOfflineDataSupplement/list";
    }

    @RequestMapping(value = "upload")
    @ResponseBody
    @Log(name = "????????????-->??????")
    public String upload(HttpServletRequest request,HttpServletResponse response, AjaxResult result,@Log(name = "??????")String tableName) {
        Locale locale = (Locale) WebUtils.getSessionAttribute(request, SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
        result.put("msg", getLanguage(locale, "????????????", "Upload success"));
        try {
            MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
            Map<String, MultipartFile> mutipartFiles = multipartHttpServletRequest.getFileMap();
            if (mutipartFiles != null && mutipartFiles.size() > 0) {
                MultipartFile file = (MultipartFile) mutipartFiles.values().toArray()[0];
                String suffix = "";
                if (file.getOriginalFilename().lastIndexOf(".") != -1) {
                    suffix = file.getOriginalFilename().substring(
                            file.getOriginalFilename().lastIndexOf(".") + 1,
                            file.getOriginalFilename().length());
                    suffix = suffix.toLowerCase();
                }
                if (!"xlsx".equals(suffix)) {
                    result.put("flag", "fail");
                    result.put("msg", getLanguage(locale, "????????????????????????Excel??????", "The format of excel is error"));
                    return result.getJson();
                }
                Workbook wk = StreamingReader.builder()
                        .rowCacheSize(100)
                        .bufferSize(4096)
                        .open(file.getInputStream());
                Sheet sheet = wk.getSheetAt(0);
                String str =offlineDataSupplementService.uploadFile(sheet,result,locale,tableName);
                return str;
            } else {
                result.put("flag", "fail");
                result.put("msg", getLanguage(locale, "???????????????????????????????????????", "Uploaded file not received"));
            }
        } catch (Exception e) {
            logger.error("??????????????????", e);
            result.put("flag", "fail");
            result.put("msg", ExceptionUtil.getRootCauseMessage(e));
        }

        return result.getJson();
    }


    @RequestMapping(value = "download")
    @ResponseBody
    @Log(name = "????????????-->??????")
    public synchronized String download(HttpServletRequest request, HttpServletResponse response, PageRequest pageRequest, AjaxResult result,
            @Log(name = "????????????") String queryCondition,String tableName) {
        try {
            String fileName=offlineDataSupplementService.downloadFile(queryCondition,tableName,request,pageRequest);
            result.put("fileName",fileName);
            System.gc();
        } catch (Exception e) {
            logger.error("??????Excel??????", e);
            result.put("flag", "fail");
            result.put("msg", ExceptionUtil.getRootCauseMessage(e));
        }

        return result.getJson();
    }

    /**
     * ????????????
     */
    @RequestMapping(value = "template")
    @ResponseBody
    public synchronized String template(HttpServletRequest request, HttpServletResponse response, AjaxResult result) {
        Locale locale = (Locale) WebUtils.getSessionAttribute(request, SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
        try {
            String realPath = request.getRealPath("");
            File file=new File(realPath+File.separator+"static"+File.separator+"template"+File.separator+"bi"+File.separator+"???????????????????????????.xlsx");
            XSSFWorkbook workBook = new XSSFWorkbook(new FileInputStream(file));
            File outFile =offlineDataSupplementService.template(workBook,request);
            OutputStream out = new FileOutputStream(outFile);
            workBook.write(out);
            workBook.close();
            out.flush();
            out.close();
            result.put("fileName", outFile.getName());
        } catch (Exception e) {
            logger.error("????????????????????????", e);
            result.put("flag", "fail");
            result.put("msg", getLanguage(locale, "????????????????????????", "Fail to download template file") + " : " + ExceptionUtil.getRootCauseMessage(e));
        }

        return result.getJson();
    }


    @RequestMapping(value = "/delete")
    @ResponseBody
    public String deleteAll(AjaxResult ajaxResult, HttpServletRequest request, String no,String tableName) {
        ajaxResult= offlineDataSupplementService.deleteData(ajaxResult,no,tableName);
        return ajaxResult.getJson();
    }
}
