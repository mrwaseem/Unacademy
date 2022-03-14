/*package stepDefinitions;

import java.time.Duration;

import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.asserts.SoftAssert;

import PageObjects.HomePage;
import PageObjects.LandingPage;
import PageObjects.RegisterPage;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.*;
import io.github.bonigarcia.wdm.WebDriverManager;

public class Register extends BaseClass
{
	@Before("@Register")
	public void setup()
	{
		WebDriverManager.chromedriver().setup();
		driver =new ChromeDriver();
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10000));
		driver.manage().window().maximize();
		driver.get("https://unacademy.com/");
	}
	@After("@Register")
	public void tearDown()
	{
		driver.quit();
	}

	@Given("I Navigate to Login Page")
	public void i_navigate_to_login_page() {
		landingPage=new LandingPage(driver);
		landingPage.clickOnAcceptCookiesButton();
		landingPage.clickOnLoginButton();
	}

	@When("I Click on crete your account")
	public void i_click_on_crete_your_account() {
		registerPage =new RegisterPage(driver);
		registerPage.clickOnCreateAccountButton();
	}

	@When("I Enter valid {string} and click on continue button")
	public void i_enter_valid_and_click_on_continue_button(String mobileNumber) {
		registerPage =new RegisterPage(driver);
		registerPage.setMobileNumber(mobileNumber);
		registerPage.clickOnContinueButton();
	}

	@When("I Select Age group and click on continue button")
	public void i_select_age_group_and_click_on_continue_button() {
		registerPage =new RegisterPage(driver);
		//registerPage.selectAgeRadioButton();
		//registerPage.clickOnContinueButton();
	}

	@When("I Enter OTP {string} Name {string} Email {string}")
	public void i_enter_otp_name_email(String otp, String name, String email) {
		registerPage=new RegisterPage(driver);
		registerPage.setOTP(otp);
		registerPage.setName(name);
		registerPage.setEmail(email);
	}

	@When("I Select State of residence")
	public void i_select_state_of_residence() {
		registerPage=new RegisterPage(driver);
		registerPage.selectStateDropDown();
		registerPage.selectAndhraPradesh();
	}

	@When("I Select Privacy Policy option")
	public void i_select_privacy_policy_option() {
		registerPage=new RegisterPage(driver);
		registerPage.selectAgreeCheckBox();
	}

	@When("I Click on Submit button")
	public void i_click_on_submit_button() {
		registerPage=new RegisterPage(driver);
		registerPage.clickOnSubmitButton();
	}

	@Then("I Verify This OTP is not valid message is displayed")
	public void i_verify_this_otp_is_not_valid_message_is_displayed() {
		registerPage=new RegisterPage(driver);
		Assert.assertEquals(registerPage.OtpInvalidMessage(), "This OTP is not valid");
	}
	
	@Then("I Verify Email is not valid message is displayed")
	public void i_verify_email_is_not_valid_message_is_displayed() {
		registerPage=new RegisterPage(driver);
		Assert.assertEquals(registerPage.EmailInvalidMessage(), "Email is not valid");
	}
}*/
