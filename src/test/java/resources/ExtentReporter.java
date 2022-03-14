package resources;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.reporter.ExtentSparkReporter;

public class ExtentReporter {
	
	static ExtentReports extentReport = null;
	
	public static ExtentReports getExtentReport() {
		
		String extentReportPath = System.getProperty("user.dir")+"\\ExtentReports\\ExtentReport.html";
		ExtentSparkReporter reporter = new ExtentSparkReporter(extentReportPath);
		reporter.config().setReportName("Unacademy - Automation Results Report");
		reporter.config().setDocumentTitle("Unacademy Report");
		
		extentReport = new ExtentReports();
		extentReport.attachReporter(reporter);
		extentReport.setSystemInfo("Project Name","Unacademy");
		extentReport.setSystemInfo("Application Version","3.7.0");
		extentReport.setSystemInfo("Operating System","Windows 10");
		extentReport.setSystemInfo("Run By","Syed Waseem");
		return extentReport;
		
	}

}
