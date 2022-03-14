package TestNG_TC;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.testng.Assert;
import org.testng.annotations.Test;
import org.testng.asserts.SoftAssert;

import PageObjects.HomePage;
import PageObjects.LandingPage;
import PageObjects.LoginPage;
import PageObjects.PaymentPage;
import PageObjects.SubscribePage;
import resources.BaseClass;

public class Pay_Enroll extends BaseClass
{
	@Test
	public void TestCase1() throws InterruptedException
	{
		landingPage = new LandingPage(driver);
		loginPage=new LoginPage(driver);
		homePage=new HomePage(driver);
		paymentPage=new PaymentPage(driver);
		subscribePage=new SubscribePage(driver);
		landingPage.clickOnAcceptCookiesButton();
		landingPage.clickOnLoginButton();
		loginPage.setMobileNumber(prop.getProperty("MobNo"));
		loginPage.clickOnLoginButton();
		Thread.sleep(20000);
		loginPage.clickOnVerifyOtpButton();
		Waiting(homePage.okGotItButton, 15);
		homePage.clickOnGotItButton();
		homePage.clickOnGetSubscriptionButton();
		Assert.assertTrue(subscribePage.isPlusButtonEnabled());
		Assert.assertTrue(subscribePage.isIconicButtonEnabled());
		subscribePage.clickOnSelectPlusButton();
		subscribePage.select24MonthsRadioButton();
		subscribePage.select18MonthsRadioButton();
		jse=(JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,500)");
		subscribePage.select12MonthsRadioButton();
		jse=(JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,500)");
		subscribePage.clickOnviewAllPlansButton();
		//Waiting(subscribePage.select6MonthsRadioButton, 10);
		subscribePage.select6MonthsRadioButton();
		jse.executeScript("window.scrollBy(0,500)");
		subscribePage.select3MonthsRadioButton();
		subscribePage.clickOnIconicButton();
		subscribePage.clickOnLiteButton();
		subscribePage.clickOnPlusButton();
		subscribePage.clickOnPlusButton();
		subscribePage.clickOnProceedToPayButton();
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
	
	@Test
	public void TestCase2() throws InterruptedException
	{ 
		landingPage = new LandingPage(driver);
		loginPage=new LoginPage(driver);
		homePage=new HomePage(driver);
		paymentPage=new PaymentPage(driver);
		subscribePage=new SubscribePage(driver);
		landingPage.clickOnAcceptCookiesButton();
		landingPage.clickOnLoginButton();
		loginPage.setMobileNumber(prop.getProperty("MobNo"));
		loginPage.clickOnLoginButton();
		Thread.sleep(20000);
		loginPage.clickOnVerifyOtpButton();
		Waiting(homePage.okGotItButton, 15);
		homePage.clickOnGotItButton();
		homePage.clickOnGetSubscriptionButton();
		subscribePage.clickOnSelectPlusButton();
		jse=(JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,500)");
		subscribePage.select12MonthsRadioButton();
		subscribePage.clickOnProceedToPayButton();
		paymentPage.clickOnCard();
		WebElement cardNumberframe = driver.findElement(By.className("card_number_iframe"));
		driver.switchTo().frame(cardNumberframe);
		paymentPage.setCardNumber(prop.getProperty("Valid_CardNumber"));
		driver.switchTo().defaultContent();
		WebElement cardExpMonthframe = driver.findElement(By.className("card_exp_month_iframe"));
		driver.switchTo().frame(cardExpMonthframe);	   
		paymentPage.setExpireMonth(prop.getProperty("Valid_mm"));
		driver.switchTo().defaultContent();
		WebElement cardExpYearframe = driver.findElement(By.className("card_exp_year_iframe"));
		driver.switchTo().frame(cardExpYearframe);	
		paymentPage.setExpireYear(prop.getProperty("Valid_yy"));
		driver.switchTo().defaultContent();
		WebElement cardSecutiryCodeframe = driver.findElement(By.className("security_code_iframe"));
		driver.switchTo().frame(cardSecutiryCodeframe);
		paymentPage.setSecurityCode(prop.getProperty("Invalid_Cvv"));
		driver.switchTo().defaultContent();
		WebElement nameOnCardframe = driver.findElement(By.className("name_on_card_iframe"));
		driver.switchTo().frame(nameOnCardframe);
		paymentPage.setNameOnCard(prop.getProperty("nameOnCard"));
		driver.switchTo().defaultContent();
		Waiting(paymentPage.payButton, 10);
		paymentPage.clickOnPayButton();
		Waiting(paymentPage.AuthTransaction, 20);
		softAssert=new SoftAssert();
		softAssert.assertEquals(paymentPage.AuthTransaction(), "Authenticate Transaction");
	}
	
	@Test
	public void TestCase3() throws InterruptedException
	{
		landingPage = new LandingPage(driver);
		loginPage=new LoginPage(driver);
		homePage=new HomePage(driver);
		paymentPage=new PaymentPage(driver);
		subscribePage=new SubscribePage(driver);
		landingPage.clickOnAcceptCookiesButton();
		landingPage.clickOnLoginButton();
		loginPage.setMobileNumber(prop.getProperty("MobNo"));
		loginPage.clickOnLoginButton();
		Thread.sleep(20000);
		loginPage.clickOnVerifyOtpButton();
		Waiting(homePage.okGotItButton, 15);
		homePage.clickOnGotItButton();
		homePage.clickOnGetSubscriptionButton();
		subscribePage.clickOnSelectPlusButton();
		jse=(JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,500)");
		subscribePage.select12MonthsRadioButton();
		subscribePage.clickOnProceedToPayButton();
		paymentPage.clickOnCard();
		WebElement cardNumberframe = driver.findElement(By.className("card_number_iframe"));
		driver.switchTo().frame(cardNumberframe);
		paymentPage.setCardNumber(prop.getProperty("Invalid_CardNumber"));
		driver.switchTo().defaultContent();
		WebElement cardExpMonthframe = driver.findElement(By.className("card_exp_month_iframe"));
		driver.switchTo().frame(cardExpMonthframe);	   
		paymentPage.setExpireMonth(prop.getProperty("Valid_mm"));
		driver.switchTo().defaultContent();
		WebElement cardExpYearframe = driver.findElement(By.className("card_exp_year_iframe"));
		driver.switchTo().frame(cardExpYearframe);	
		paymentPage.setExpireYear(prop.getProperty("Valid_yy"));
		driver.switchTo().defaultContent();
		WebElement cardSecutiryCodeframe = driver.findElement(By.className("security_code_iframe"));
		driver.switchTo().frame(cardSecutiryCodeframe);
		paymentPage.setSecurityCode(prop.getProperty("Valid_Cvv"));
		driver.switchTo().defaultContent();
		WebElement nameOnCardframe = driver.findElement(By.className("name_on_card_iframe"));
		driver.switchTo().frame(nameOnCardframe);
		paymentPage.setNameOnCard(prop.getProperty("nameOnCard"));
		driver.switchTo().defaultContent();
		softAssert=new SoftAssert();
		softAssert.assertTrue(paymentPage.payButton.isEnabled());
	}
	
	@Test
	public void TestCase4() throws InterruptedException
	{
		landingPage = new LandingPage(driver);
		loginPage=new LoginPage(driver);
		homePage=new HomePage(driver);
		paymentPage=new PaymentPage(driver);
		subscribePage=new SubscribePage(driver);
		landingPage.clickOnAcceptCookiesButton();
		landingPage.clickOnLoginButton();
		loginPage.setMobileNumber(prop.getProperty("MobNo"));
		loginPage.clickOnLoginButton();
		Thread.sleep(20000);
		loginPage.clickOnVerifyOtpButton();
		Waiting(homePage.okGotItButton, 15);
		homePage.clickOnGotItButton();
		homePage.clickOnGetSubscriptionButton();
		subscribePage.clickOnSelectPlusButton();
		jse=(JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,500)");
		subscribePage.select12MonthsRadioButton();
		subscribePage.clickOnProceedToPayButton();
		Assert.assertEquals(paymentPage.PaymentMethod(), "Choose a payment method");
		paymentPage.clickOnCard();
		WebElement cardNumberframe = driver.findElement(By.className("card_number_iframe"));
		driver.switchTo().frame(cardNumberframe);
		paymentPage.setCardNumber(prop.getProperty("Valid_CardNumber"));
		driver.switchTo().defaultContent();
		WebElement cardExpMonthframe = driver.findElement(By.className("card_exp_month_iframe"));
		driver.switchTo().frame(cardExpMonthframe);	   
		paymentPage.setExpireMonth(prop.getProperty("Invalid_mm"));
		driver.switchTo().defaultContent();
		WebElement cardExpYearframe = driver.findElement(By.className("card_exp_year_iframe"));
		driver.switchTo().frame(cardExpYearframe);	
		paymentPage.setExpireYear(prop.getProperty("Invalid_yy"));
		driver.switchTo().defaultContent();
		WebElement cardSecutiryCodeframe = driver.findElement(By.className("security_code_iframe"));
		driver.switchTo().frame(cardSecutiryCodeframe);
		paymentPage.setSecurityCode(prop.getProperty("Valid_Cvv"));
		driver.switchTo().defaultContent();
		WebElement nameOnCardframe = driver.findElement(By.className("name_on_card_iframe"));
		driver.switchTo().frame(nameOnCardframe);
		paymentPage.setNameOnCard(prop.getProperty("nameOnCard"));
		driver.switchTo().defaultContent();	
		Waiting(paymentPage.payButton, 10);
		paymentPage.clickOnPayButton();
		Waiting(paymentPage.transactionDeclineMessage, 10);
		Assert.assertTrue(paymentPage.TransactionDeclineMessage().contains(prop.getProperty("message")));
	}
	
	@Test
	public void TestCase5() throws InterruptedException
	{
		landingPage = new LandingPage(driver);
		loginPage=new LoginPage(driver);
		homePage=new HomePage(driver);
		paymentPage=new PaymentPage(driver);
		subscribePage=new SubscribePage(driver);
		landingPage.clickOnAcceptCookiesButton();
		landingPage.clickOnLoginButton();
		loginPage.setMobileNumber(prop.getProperty("MobNo"));
		loginPage.clickOnLoginButton();
		Thread.sleep(20000);
		loginPage.clickOnVerifyOtpButton();
		Waiting(homePage.okGotItButton, 15);
		homePage.clickOnGotItButton();
		homePage.clickOnGetSubscriptionButton();
		subscribePage.clickOnSelectPlusButton();
		jse=(JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,500)");
		subscribePage.select12MonthsRadioButton();
		subscribePage.clickOnProceedToPayButton();
		paymentPage.clickOnNetBanking();
		paymentPage.clickOnSelectBankDropDown();
		paymentPage.clickOnCanaraBank();
		paymentPage.clickOnPayButton();
		softAssert=new SoftAssert();
		softAssert.assertTrue(driver.getTitle().contains("netbanking"));
	}
}
