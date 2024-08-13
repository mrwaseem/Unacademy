package stepDefinitions;
import java.time.Duration;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.testng.Assert;
import org.testng.asserts.SoftAssert;
import PageObjects.*;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.*;
import resources.BaseClass;

/**
 * #Summary:
 * #Author: Syed Waseem
 * #Author’s Email: syed.c.waseem@capgemini.com
 * #Creation Date: 08/03/2022
 * #Comments:
 */
public class Pay_Enroll extends BaseClass
{			
	@Before("@PayAndEnroll")
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

	@After("@PayAndEnroll")
	public void tearDown()
	{
		driver.quit();
	}

	@Given("I Navigate to Login Page")
	public void i_navigate_to_login_page() {
		landingPage = new LandingPage(driver);
		landingPage.clickOnAcceptCookiesButton();
		landingPage.clickOnLoginButton();
	}

	//[UN-001]
	@When("I Enter {string} and click on Login button")
	public void i_enter_and_click_on_login_button(String mobileNumber) {
		loginPage=new LoginPage(driver);
		loginPage.setMobileNumber(mobileNumber);
		loginPage.clickOnLoginButton();
	}

	@Then("Login Page should be display")
	public void login_page_should_be_display() {
		loginPage=new LoginPage(driver);
		Assert.assertTrue(loginPage.loginText());
	}

	@Then("I Enter valid OTP and click on Verify OTP button")
	public void i_enter_valid_otp_and_click_on_verify_otp_button() throws InterruptedException {
		loginPage=new LoginPage(driver);
		Thread.sleep(20000);
		loginPage.clickOnVerifyOtpButton();
	}

	@Then("I Navigated to Home Page")
	public void i_navigated_to_home_page() {
		homePage=new HomePage(driver);
		Waiting(homePage.okGotItButton, 15);
		homePage.clickOnGotItButton();
		Assert.assertTrue(homePage.ProfileIcon());
	}

	@Then("I Verify Get subscription button is enabled")
	public void i_verify_get_subscription_button_is_enabled() {
		homePage=new HomePage(driver);
		Assert.assertTrue(homePage.isViewSubscriptionPlansButtonEnabled());
	}

	@Then("I click on Get subscription button")
	public void i_click_on_get_subscription_button() {
		homePage=new HomePage(driver);
		homePage.isViewSubscriptionPlansButtonEnabled();
	}
	@Then("I Verify Select Plus button and Select Iconic button is enabled")
	public void i_verify_select_plus_button_and_select_iconic_button_is_enabled() {
		subscribePage=new SubscribePage(driver);
		Assert.assertTrue(subscribePage.isGetPlusButtonEnabled());
		Assert.assertTrue(subscribePage.isGetIconicButtonEnabled());
	}

	@Then("I click on Select Plus button")
	public void i_click_on_select_plus_button() {
		subscribePage=new SubscribePage(driver);
		subscribePage.clickOnGetPlusButton();
	}

	@Then("I Verify working of all the components in the subscirbe page")
	public void i_verify_working_of_all_the_components_in_the_subscirbe_page() {
		subscribePage=new SubscribePage(driver);
		subscribePage.select24MonthsRadioButton();
		subscribePage.select12MonthsRadioButton();
		jse=(JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,500)");
		subscribePage.select9MonthsRadioButton();
		jse=(JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,500)");
		subscribePage.clickOnViewAllPlansButton();
		//Waiting(subscribePage.select6MonthsRadioButton, 10);
		subscribePage.select6MonthsRadioButton();
		jse.executeScript("window.scrollBy(0,500)");
		subscribePage.select3MonthsRadioButton();
		subscribePage.clickOnIconicButton();
		subscribePage.clickOnLiteButton();
		subscribePage.clickOnPlusButton();
	}

	@Then("I click on Proceed to Pay button")
	public void i_click_on_proceed_to_pay_button() {
		subscribePage=new SubscribePage(driver);
		subscribePage.clickOnPlusButton();
		subscribePage.clickOnProceedToPayButton();
	}

	@Then("I Verify working of all the components in the payment Page")
	public void i_verify_working_of_all_the_components_in_the_payment_page() {
		paymentPage=new PaymentPage(driver);
		paymentPage.clickOnContinueButton();
		paymentPage.clickOn2Parts();
		paymentPage.clickOn3Parts();
		paymentPage.clickOnCard();
		paymentPage.clickOnNetBanking();
		paymentPage.clickOnUPI();
		paymentPage.clickOnEMI();
		paymentPage.clickOnCash();
		paymentPage.clickOnLoan();
		paymentPage.clickOnPayInParts();
	}

	//[UN-002]
	@Then("I click on Get subscription button and click on select Plus button")
	public void i_click_on_get_subscription_button_and_click_on_select_plus_button() {
		homePage=new HomePage(driver);
		subscribePage=new SubscribePage(driver);
		homePage.clickOnViewSubscriptionPlansButton();
		subscribePage.clickOnGetPlusButton();
	}

	@Then("I select {string} radio button and click on Proceed to pay button")
	public void i_select_radio_button_and_click_on_proceed_to_pay_button(String monthlyPlan) {
		subscribePage=new SubscribePage(driver);
		subscribePage.select12MonthsRadioButton();
		Waiting(subscribePage.proceedToPayButton, 10);
		subscribePage.clickOnProceedToPayButton();
	}

	@Then("I Navigated to Payment method page")
	public void i_navigated_to_payment_method_page() {
		paymentPage=new PaymentPage(driver);
		Assert.assertEquals(paymentPage.PaymentMethod(), "Choose a payment method");
	}

	@Then("I choose a payment method as Card")
	public void i_choose_a_payment_method_as_card() {
		paymentPage=new PaymentPage(driver);
		paymentPage.clickOnCard();
	}

	@Then("I Enter valid Card number {string} MM {string} YY {string} CVV {string} Name on Card {string} and click on Pay button")
	public void i_enter_valid_card_number_mm_yy_cvv_name_on_card_and_click_on_pay_button(String cardNumber, String mm, String yy, String cvv, String nameOnCard) throws InterruptedException {
		paymentPage=new PaymentPage(driver);
		WebElement cardNumberframe = driver.findElement(By.className("card_number_iframe"));
		driver.switchTo().frame(cardNumberframe);
		paymentPage.setCardNumber(cardNumber);
		driver.switchTo().defaultContent();
		WebElement cardExpMonthframe = driver.findElement(By.className("card_exp_month_iframe"));
		driver.switchTo().frame(cardExpMonthframe);	   
		paymentPage.setExpireMonth(mm);
		driver.switchTo().defaultContent();
		WebElement cardExpYearframe = driver.findElement(By.className("card_exp_year_iframe"));
		driver.switchTo().frame(cardExpYearframe);	
		paymentPage.setExpireYear(yy);
		driver.switchTo().defaultContent();
		WebElement cardSecutiryCodeframe = driver.findElement(By.className("security_code_iframe"));
		driver.switchTo().frame(cardSecutiryCodeframe);
		paymentPage.setSecurityCode(cvv);
		driver.switchTo().defaultContent();
		WebElement nameOnCardframe = driver.findElement(By.className("name_on_card_iframe"));
		driver.switchTo().frame(nameOnCardframe);
		paymentPage.setNameOnCard(nameOnCard);
		driver.switchTo().defaultContent();
		Waiting(paymentPage.payButton, 10);
		paymentPage.clickOnPayButton();
	}

	@Then("I Verify i Navigated to Authenticate Transaction Page")
	public void i_verify_i_navigated_to_authenticate_transaction_page() {
		paymentPage=new PaymentPage(driver);
		Waiting(paymentPage.AuthTransaction, 20);
		softAssert=new SoftAssert();
		softAssert.assertEquals(paymentPage.AuthTransaction(), "Authenticate Transaction");
	}

	//[UN-003]
	@Then("I Enter invalid Card number {string} MM {string} YY {string} CVV {string} Name on Card {string}")
	public void i_enter_invalid_card_number_mm_yy_cvv_name_on_card(String cardNumber, String mm, String yy, String cvv, String nameOnCard) {
		paymentPage=new PaymentPage(driver);
		WebElement cardNumberframe = driver.findElement(By.className("card_number_iframe"));
		driver.switchTo().frame(cardNumberframe);
		paymentPage.setCardNumber(cardNumber);
		driver.switchTo().defaultContent();
		WebElement cardExpMonthframe = driver.findElement(By.className("card_exp_month_iframe"));
		driver.switchTo().frame(cardExpMonthframe);	   
		paymentPage.setExpireMonth(mm);
		driver.switchTo().defaultContent();
		WebElement cardExpYearframe = driver.findElement(By.className("card_exp_year_iframe"));
		driver.switchTo().frame(cardExpYearframe);	
		paymentPage.setExpireYear(yy);
		driver.switchTo().defaultContent();
		WebElement cardSecutiryCodeframe = driver.findElement(By.className("security_code_iframe"));
		driver.switchTo().frame(cardSecutiryCodeframe);
		paymentPage.setSecurityCode(cvv);
		driver.switchTo().defaultContent();
		WebElement nameOnCardframe = driver.findElement(By.className("name_on_card_iframe"));
		driver.switchTo().frame(nameOnCardframe);
		paymentPage.setNameOnCard(nameOnCard);
		driver.switchTo().defaultContent();
	}

	@Then("I Verify Pay button is disabled")
	public void i_verify_pay_button_is_disabled() {
		paymentPage=new PaymentPage(driver);
		Assert.assertTrue(paymentPage.payButton.isEnabled());
	}

	//[UN-004]
	@Then("I Enter Card number {string} MM {string} YY {string} CVV {string} Name on Card {string} and click on Pay button")
	public void i_enter_card_number_mm_yy_cvv_name_on_card_and_click_on_pay_button(String cardNumber, String mm, String yy, String cvv, String nameOnCard) {
		paymentPage=new PaymentPage(driver);
		WebElement cardNumberframe = driver.findElement(By.className("card_number_iframe"));
		driver.switchTo().frame(cardNumberframe);
		paymentPage.setCardNumber(cardNumber);
		driver.switchTo().defaultContent();
		WebElement cardExpMonthframe = driver.findElement(By.className("card_exp_month_iframe"));
		driver.switchTo().frame(cardExpMonthframe);	   
		paymentPage.setExpireMonth(mm);
		driver.switchTo().defaultContent();
		WebElement cardExpYearframe = driver.findElement(By.className("card_exp_year_iframe"));
		driver.switchTo().frame(cardExpYearframe);	
		paymentPage.setExpireYear(yy);
		driver.switchTo().defaultContent();
		WebElement cardSecutiryCodeframe = driver.findElement(By.className("security_code_iframe"));
		driver.switchTo().frame(cardSecutiryCodeframe);
		paymentPage.setSecurityCode(cvv);
		driver.switchTo().defaultContent();
		WebElement nameOnCardframe = driver.findElement(By.className("name_on_card_iframe"));
		driver.switchTo().frame(nameOnCardframe);
		paymentPage.setNameOnCard(nameOnCard);
		driver.switchTo().defaultContent();
		Waiting(paymentPage.payButton, 10);
		paymentPage.clickOnPayButton();
	}
	@Then("I Verify {string} message is displayed")
	public void i_verify_message_is_displayed(String transactionDeclined) {
		paymentPage =new PaymentPage(driver);
		Waiting(paymentPage.transactionDeclineMessage, 10);
		Assert.assertTrue(paymentPage.TransactionDeclineMessage().contains(transactionDeclined));
	}

	//[UN-005]
	@Then("I choose a payment method as Net Banking")
	public void i_choose_a_payment_method_as_net_banking() {
		paymentPage=new PaymentPage(driver);
		paymentPage.clickOnNetBanking();
	}

	@Then("I select {string} and I click on Pay button")
	public void i_select_and_i_click_on_pay_button(String canaraBank) {
		paymentPage=new PaymentPage(driver);
		paymentPage.clickOnSelectBankDropDown();
		paymentPage.clickOnCanaraBank();
		paymentPage.clickOnPayButton();
	}

	@Then("I Verify I Navigate to Canara Bank Net Banking Page")
	public void i_verify_i_navigate_to_canara_bank_net_banking_page() throws InterruptedException {
		paymentPage=new PaymentPage(driver);
		Thread.sleep(5000);
		softAssert=new SoftAssert();
		softAssert.assertTrue(driver.getTitle().contains("netbanking"));
	}	
}