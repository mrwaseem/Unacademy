package stepDefinitions;
import java.io.FileInputStream;
import java.io.IOException;
import java.time.Duration;

import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import PageObjects.HomePage;
import PageObjects.LandingPage;
import PageObjects.LoginPage;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.*;
import io.github.bonigarcia.wdm.WebDriverManager;
import resources.BaseClass;

public class Login extends BaseClass
{
	LandingPage landingPage=null;
	LoginPage loginPage=null;
	HomePage homePage=null;
	/*@Before
	public void setup()
	{
		WebDriverManager.chromedriver().setup();
		driver =new ChromeDriver();
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10000));
		driver.manage().window().maximize();
		driver.get("https://unacademy.com/");
	}

	@After
	public void tearDown()
	{
		driver.quit();
	}*/
	@Given("User should navigate to login page")
	public void user_should_navigate_to_login_page() {
		landingPage =new LandingPage(driver);
		landingPage.clickOnAcceptCookiesButton();
		landingPage.clickOnLoginButton();
	}

	@And("user enter valid mobile number")
	public void user_enter_valid_mobile_number() {
		loginPage = new LoginPage(driver);
		loginPage.setMobileNumber("8496817175");
	}

	@And("click on login button")
	public void click_on_login_button() {
		loginPage =new LoginPage(driver);
		loginPage.clickOnLoginButton();
	}

	@And("enter valid six digit OTP and click on verify OTP button")
	public void enter_valid_six_digit_otp_and_click_on_verify_otp_button() throws InterruptedException {
		Thread.sleep(25000);
		loginPage =new LoginPage(driver);
		loginPage.clickOnVerifyOtpButton();
	}

	@Then("User profile should be displayed")
	public void user_profile_should_be_displayed() {
		homePage = new HomePage(driver);
		homePage.clickOnGotItButton();
		Assert.assertTrue(homePage.ProfileIcon());
	}

	@When("enter invalid six digit OTP and click on verify OTP button")
	public void enter_invalid_six_digit_otp_and_click_on_verify_otp_button() throws InterruptedException {
		Thread.sleep(25000);
		loginPage =new LoginPage(driver);
		loginPage.clickOnVerifyOtpButton();
	}

	@Then("error message should be displayed")
	public void error_message_should_be_displayed() {
		loginPage =new LoginPage(driver);
		Assert.assertEquals(loginPage.ErrorMessage(),"This OTP is not valid");
}

	@When("user enter valid unregistered mobile number")
	public void user_enter_valid_unregistered_mobile_number() {
		loginPage = new LoginPage(driver);
		loginPage.MobileNumber("8618553712");
	}

	@Then("User should be redirected to create account page")
	public void user_should_be_redirected_to_create_account_page() {
		loginPage =new LoginPage(driver);
		Assert.assertEquals(loginPage.CreateAccountPage(),"Select age group");
	}

	@When("user clicks on continue with Email")
	public void user_clicks_on_continue_with_email() {
		loginPage =new LoginPage(driver);
		loginPage.clickOnContinueWithEmail();
	}

	@When("user enters registered Email address")
	public void user_enters_registered_email_address() {
		loginPage = new LoginPage(driver);
		loginPage.Emailid("mrwaseem509@gmail.com");
	}

	@When("user enters unregistered Email address")
	public void user_enters_unregistered_email_address() {
		loginPage = new LoginPage(driver);
		loginPage.UnregisteredEmailid("mrwaseem@gmail.com");
	}

	@Then("error message should be displayed for unregistetred Email")
	public void error_message_should_be_displayed_for_unregistetred_email() {
		loginPage =new LoginPage(driver);
		Assert.assertEquals(loginPage.EmailErrorMessage(),"This email is not registered with us");
	}
	@When("click on user profile and click on signout")
	public void click_on_user_profile_and_click_on_signout(){
	  homePage = new HomePage(driver);
	  homePage.clickOnGotItButton();
	  homePage.clickOnProfileIcon();
	  homePage.clickOnSignout();
	}

	@Then("after successful signout user should be redirected to landingpage")
	public void after_successful_signout_user_should_be_redirected_to_landingpage() {
	    landingPage=new LandingPage(driver);
	    Assert.assertTrue(landingPage.Loginbutton());
	}
}

