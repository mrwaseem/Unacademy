package resources;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.time.Duration;
import java.util.Properties;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.asserts.SoftAssert;
import PageObjects.*;
import io.github.bonigarcia.wdm.WebDriverManager;

/**
 * #Summary:
 * #Author: Syed Waseem
 * #Author’s Email:syed.c.waseem@capgemini.com
 * #Creation Date: 08/03/2022
 * #Comments:
 */
public class BaseClass 
{
	public WebDriver driver=null;
	public Properties prop=null;
	public JavascriptExecutor jse=null;
	public LandingPage landingPage=null;
	public LoginPage loginPage=null;
	public HomePage homePage=null;	
	public SubscribePage subscribePage=null;
	public PaymentPage paymentPage=null;
	public SoftAssert softAssert=null;
	
	public void Waiting(WebElement element, long timeOutInSeconds)
	{
		WebDriverWait wait= new WebDriverWait(driver, timeOutInSeconds);
		wait.until(ExpectedConditions.visibilityOf(element));
	}
	
	public void loadPropertiesFile() {
		prop = new Properties();
		try {
			prop.load(new FileInputStream(new File("./src/test/java/utilities/ProjectData.properties")));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void initializeBrowser(String browserName) {
		if(browserName.equalsIgnoreCase("chrome")) {
			WebDriverManager.chromedriver().setup();
			driver = new ChromeDriver();
		}else if(browserName.equalsIgnoreCase("firefox")) {
			WebDriverManager.firefoxdriver().setup();
			driver = new FirefoxDriver();
		}else if(browserName.equalsIgnoreCase("edge")) {
			WebDriverManager.edgedriver().setup();
			driver = new EdgeDriver();
		}
	}
	@BeforeMethod
	public void setup()
	{
		loadPropertiesFile();
		initializeBrowser(prop.getProperty("Browser"));
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10000));
		driver.manage().window().maximize();
		driver.get(prop.getProperty("Url"));
		//jse=(JavascriptExecutor)driver;
		//jse.executeScript("document.body.style.zoom='80%';");
	}

	@AfterMethod
	public void tearDown()
	{
		driver.quit();
	}
}
