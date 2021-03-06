package foxconn.fit.controller.hfm;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springside.modules.orm.PageRequest;

import foxconn.fit.advice.Log;
import foxconn.fit.controller.BaseController;
import foxconn.fit.dao.base.PropertyFilter;
import foxconn.fit.entity.base.AjaxResult;
import foxconn.fit.entity.hfm.ARTradeInvoice;
import foxconn.fit.service.hfm.ARTradeInvoiceService;
import foxconn.fit.task.hfm.ARTradeTask;
import foxconn.fit.util.DateUtil;
import foxconn.fit.util.ExcelUtil;
import foxconn.fit.util.ExceptionUtil;
import foxconn.fit.util.MyUUIDGenerator;
import foxconn.fit.util.SecurityUtils;
import foxconn.fit.util.SpringContextHelper;

@Controller
@RequestMapping("/hfm/arTradeInvoice")
public class ARTradeInvoiceController extends BaseController {

	private static String EXCEL_NAME="AR?????????????????????";
	private static int COLUMN_NUM=22;
	
	@Value("${ARTrade_url}")
	private String url;
	
	@Autowired
	private ARTradeInvoiceService arTradeInvoiceService;

	@RequestMapping(value = "index")
	public String index(HttpServletRequest request, Model model) {
		return "/hfm/arTradeInvoice/index";
	}

	@RequestMapping(value = "dataExtract")
	@ResponseBody
	@Log(name = "AR?????????????????????-->????????????")
	public String dataExtract(HttpServletRequest request,HttpServletResponse response, AjaxResult result,
			@Log(name = "??????") String month,@Log(name = "????????????") String corporCode) {
		result.put("msg", "??????????????????");
		try{
			Date date = DateUtil.parseByYyyy_MM(month);
			Assert.notNull(date, "??????????????????(Error Date Formats)");
			
			String[] split = month.split("-");
			String year = split[0];
			String period = split[1];
			
			Assert.hasText(corporCode, "????????????????????????(Entity Code Not Null)");
			if (corporCode.endsWith(",")) {
				corporCode=corporCode.substring(0, corporCode.length()-1);
			}
			String[] corCodes = corporCode.split(",");
			
			Assert.isTrue(corCodes.length<=5, "????????????????????????5???????????????(No More Than 5 Entity Code At A Time)");
			
			String code = SecurityUtils.getCorporationCode();
			String[] codes = code.split(",");
			
			List<String> tarList=new ArrayList<String>();
			for (String string : codes) {
				if (string.startsWith("F_")) {
					tarList.add(string.substring(2, string.length()));
				}
			}
			
			List<String> codeList=new ArrayList<String>();
			for (String string : corCodes) {
				if (tarList.contains(string)) {
					codeList.add(string);
				}
			}
			
			Assert.isTrue(!codeList.isEmpty(), "?????????????????????(Error Entity Code)");
			
			List<List<String>> extractList=new ArrayList<List<String>>();
			for (String string : codeList) {
				List<String> list=new ArrayList<String>();
				Date date1=new Date();
				String taskId=MyUUIDGenerator.getUUID();
				list.add(taskId);
				list.add(string);
				list.add(month);
				list.add(DateUtil.formatByHHmmss(date1));
				
				ARTradeTask task = (ARTradeTask) SpringContextHelper.getBean("ARTradeTask");
				task.setParam(taskId, request.getSession().getId(), url,string, year, period);
				new Thread(task).start();
				
				extractList.add(list);
			}
			
			result.put("extractList", extractList);
		} catch (Exception e) {
			logger.error("??????????????????", e);
			result.put("flag", "fail");
			result.put("msg", ExceptionUtil.getRootCauseMessage(e));
		}

		return result.getJson();
	}
	
	@RequestMapping(value = "upload")
	@ResponseBody
	@Log(name = "AR?????????????????????-->??????")
	public String upload(HttpServletRequest request,HttpServletResponse response, AjaxResult result,
			@Log(name = "??????") String month,@Log(name = "????????????") String[] Upcode) {
		result.put("msg", "????????????(Upload Success)");
		try {
			Assert.isTrue(Upcode!=null && Upcode.length>0, "????????????????????????(Entity Code Not Null)");
			
			String code = SecurityUtils.getCorporationCode();
			String[] codes = code.split(",");
			
			List<String> tarList=new ArrayList<String>();
			for (String string : codes) {
				if (string.startsWith("F_")) {
					tarList.add(string.substring(2, string.length()));
				}
			}
			
			Map<String,String> codeList=new HashMap<String,String>();
			for (String string : Upcode) {
				if (tarList.contains(string)) {
					codeList.put(string.toLowerCase(),string);
				}
			}
			
			Assert.isTrue(!codeList.values().isEmpty(), "?????????????????????(Error Entity Code)");
			
			Date date = DateUtil.parseByYyyy_MM(month);
			Assert.notNull(date, "??????????????????(Error Date Formats)");
			
			String[] split = month.split("-");
			String year = split[0];
			String period = split[1];
			
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
				if (!"xls".equals(suffix) && !"xlsx".equals(suffix)) {
					result.put("flag", "fail");
					result.put("msg", "???????????????????????????Excel??????(Error File Formats)");
					return result.getJson();
				}

				Workbook wb=null;
				if ("xls".equals(suffix)) {
					//Excel2003
					wb=new HSSFWorkbook(file.getInputStream());
				}else {
					//Excel2007
					wb=new XSSFWorkbook(file.getInputStream());
				}
				wb.close();
				
				Sheet sheet = wb.getSheetAt(0);
				Row firstRow = sheet.getRow(0);
				Assert.notNull(firstRow, "???????????????????????????????????????(First Row Not Empty)");
				int column = firstRow.getPhysicalNumberOfCells();
				
				if(column<COLUMN_NUM){
					result.put("flag", "fail");
					result.put("msg", "Excel??????????????????"+COLUMN_NUM+"(Number Of Columns Can Not Less Than"+COLUMN_NUM+")");
					return result.getJson();
				}

				int rowNum = sheet.getPhysicalNumberOfRows();
				if (rowNum<2) {
					result.put("flag", "fail");
					result.put("msg", "?????????Excel???????????????(Row Data Not Empty)");
					return result.getJson();
				}
				
				List<ARTradeInvoice> list=new ArrayList<ARTradeInvoice>();
				Map<String, String> codeMap=new HashMap<String, String>();
				
				for (int i = 1; i < rowNum; i++) {
					Row row = sheet.getRow(i);
					
					if (row==null) {
						continue;
					}
					
					boolean isBlankRow=true;
					for (int j = 0; j < COLUMN_NUM; j++) {
						if (StringUtils.isNotEmpty(ExcelUtil.getCellStringValue(row.getCell(j),i))) {
							isBlankRow=false;
						}
					}
					
					if (isBlankRow) {
						continue;
					}
					
					ARTradeInvoice detail=null;
					int n=0;
					String lowerCorporationCode = ExcelUtil.getCellStringValue(row.getCell(n++),i).toLowerCase();
					String tempYear = ExcelUtil.getCellStringValue(row.getCell(n++),i);
					String tempPeriod = ExcelUtil.getCellStringValue(row.getCell(n++),i);
					
					Date tempDate = DateUtil.parseByYyyy_MM(tempYear+"-"+tempPeriod);
					
					Assert.notNull(tempDate, "???"+(i+1)+"?????????????????????????????????(The Date Of The "+(i+1)+"th Row Has Error Format)");
					
					if ((date.compareTo(tempDate)==0) && codeList.containsKey(lowerCorporationCode)) {
						String corporationCode = codeList.get(lowerCorporationCode);
						codeMap.put(lowerCorporationCode,corporationCode);
						
						detail=new ARTradeInvoice();
						
						detail.setCorporationCode(corporationCode);
						detail.setYear(year);
						detail.setPeriod(period);
						detail.setDocument(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setSummons(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setInvoice(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setCustomer(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setCustomerName(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setCustomerType(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setBorrowItemCode(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setBorrowItemDesc(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setItemCode(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setItemDesc(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setCurrency(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setTaxSrcAmount(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setTaxSamount(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setUntaxSrcAmount(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setTaxCurrencyAmount(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setTaxCamount(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setUntaxCurrencyAmount(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setDepartment(ExcelUtil.getCellStringValue(row.getCell(n++),i));
						detail.setSummary(ExcelUtil.getCellStringValue(row.getCell(n++),i));
					}

					if (detail!=null) {
						list.add(detail);
					}
				}
				
				if (!list.isEmpty()) {
					Collection<String> values = codeMap.values();
					String codeCondition="where year='"+year+"' and period='"+period+"' and corporation_code in (";
					for (String string : values) {
						codeCondition+="'"+string+"',";
					}
					
					codeCondition=codeCondition.substring(0, codeCondition.length()-1)+")";
					arTradeInvoiceService.saveBatch(list, codeCondition);
				}else{
					result.put("flag", "fail");
					result.put("msg", "??????????????????(Unreceived Valid Row Data)");
				}
			} else {
				result.put("flag", "fail");
				result.put("msg", "?????????,???????????????????????????(Unreceived File)");
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
	@Log(name = "AR?????????????????????-->??????")
	public synchronized String download(HttpServletRequest request,HttpServletResponse response,PageRequest pageRequest,AjaxResult result,
			@Log(name = "??????") String month,@Log(name = "????????????") String corporCode){
		try {
			Assert.hasText(corporCode, "????????????????????????(Entity Code Not Null)");
			
			if (corporCode.endsWith(",")) {
				corporCode=corporCode.substring(0, corporCode.length()-1);
			}
			
			Date date = DateUtil.parseByYyyy_MM(month);
			Assert.notNull(date, "??????????????????(Error Date Formats)");
			String[] split = month.split("-");
			String year = split[0];
			String period = split[1];
			
			String[] corCodes = corporCode.split(",");
			
			String corporationCode = SecurityUtils.getCorporationCode();
			String[] tarCodes = corporationCode.split(",");
			
			List<String> tarList=new ArrayList<String>();
			for (String string : tarCodes) {
				tarList.add(string.substring(2));
			}
			
			List<String> readList=new ArrayList<String>();
			
			for (String string : corCodes) {
				if (tarList.contains(string)) {
					readList.add(string);
				}
			}
			
			Assert.isTrue(!readList.isEmpty(), "?????????????????????(Error Entity Code)");
			
			String corCode="";
			for (String string : readList) {
				corCode+=string+",";
			}
			corCode=corCode.substring(0,corCode.length()-1);
			
			List<PropertyFilter> filters = new ArrayList<PropertyFilter>();

			pageRequest.setOrderBy("corporationCode");
			pageRequest.setOrderDir(PageRequest.Sort.ASC);
			
			filters.add(new PropertyFilter("EQS_year",year));
			filters.add(new PropertyFilter("EQS_period",period));
			
			if (corCode.indexOf(",") > 0) {
				filters.add(new PropertyFilter("OREQS_corporationCode",corCode));
			} else {
				filters.add(new PropertyFilter("EQS_corporationCode",corCode));
			}
			
			List<ARTradeInvoice> list = arTradeInvoiceService.listByHQL(filters, pageRequest);
			
			String realPath = request.getRealPath("");
			if (CollectionUtils.isNotEmpty(list)) {
				long time = System.currentTimeMillis();
				File file=new File(realPath+File.separator+"static"+File.separator+"template"+File.separator+"hfm"+File.separator+EXCEL_NAME+".xlsx");
				XSSFWorkbook workBook = new XSSFWorkbook(new FileInputStream(file));
				XSSFCellStyle style = workBook.createCellStyle();
				style.setAlignment(HorizontalAlignment.CENTER);
				
				SXSSFWorkbook sxssfWorkbook=new SXSSFWorkbook(workBook);
				Sheet sheet = sxssfWorkbook.getSheetAt(0);
				for (int i = 0; i < list.size(); i++) {
					ARTradeInvoice detail = list.get(i);
					Row row = sheet.createRow(i+1);
					ExcelUtil.createCell(style, detail, row);
				}
				
				File outFile=new File(realPath+File.separator+"static"+File.separator+"download"+File.separator+time+".xlsx");
				OutputStream out = new FileOutputStream(outFile);
				sxssfWorkbook.write(out);
				sxssfWorkbook.close();
				out.flush();
				out.close();
				
				result.put("fileName", outFile.getName());
				System.gc();
			}else {
				result.put("flag", "fail");
				result.put("msg", "?????????????????????????????????(No data can be downloaded)");
			}
		} catch (Exception e) {
			logger.error("??????Excel??????", e);
			result.put("flag", "fail");
			result.put("msg", ExceptionUtil.getRootCauseMessage(e));
		}
		
		return result.getJson();
	}

}
