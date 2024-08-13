package TestNG_TC;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
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
	@Test(priority = 1)
	public void testPaymentAndCourseEnrollmentFunctionality() throws InterruptedException, AWTException 
	{
		landingPage = new LandingPage(driver);
		loginPage=new LoginPage(driver);
		homePage=new HomePage(driver);
		paymentPage=new PaymentPage(driver);
		subscribePage=new SubscribePage(driver);
		//landingPage.clickOnAcceptCookiesButton();
		landingPage.clickOnLoginButton();
		loginPage.setMobileNumber(prop.getProperty("MobNo"));
		loginPage.clickOnLoginButton();
		Robot robot = new Robot();
		Thread.sleep(15000);
		robot.keyPress(KeyEvent.VK_ESCAPE);
		robot.keyRelease(KeyEvent.VK_ESCAPE);
		Waiting(homePage.prepareForGateNotification, 5);
		homePage.clickOnPrepareForGateNotification();
		homePage.clickOnViewSubscriptionPlansButton();
		Assert.assertTrue(subscribePage.isGetPlusButtonEnabled());
		Assert.assertTrue(subscribePage.isGetIconicButtonEnabled());
		subscribePage.clickOnGetPlusButton();
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
		//jse.executeScript("window.scrollBy(0,500)");
		//subscribePage.select3MonthsRadioButton();
		subscribePage.clickOnIconicButton();
		//subscribePage.clickOnLiteButton();
		subscribePage.clickOnPlusButton();
		//subscribePage.clickOnPlusButton();
		subscribePage.clickOnProceedToPayButton();
		paymentPage.clickOnPayInParts();
		paymentPage.clickOnEMI();
		paymentPage.clickOnLoan();
		paymentPage.clickOnUPI();
		paymentPage.clickOnNetBanking();
		paymentPage.clickOnCash();
		paymentPage.clickOnCard();
	}
	
	@Test(priority = 3)
	public void testEnrollCourseWithInvalidCVV() throws InterruptedException, AWTException
	{ 
		landingPage = new LandingPage(driver);
		loginPage=new LoginPage(driver);
		homePage=new HomePage(driver);
		paymentPage=new PaymentPage(driver);
		subscribePage=new SubscribePage(driver);
		//landingPage.clickOnAcceptCookiesButton();
		landingPage.clickOnLoginButton();
		loginPage.setMobileNumber(prop.getProperty("MobNo"));
		loginPage.clickOnLoginButton();
		//loginPage.clickOnVerifyOtpButton();
		Robot robot = new Robot();
		Thread.sleep(15000);
		robot.keyPress(KeyEvent.VK_ESCAPE);
		robot.keyRelease(KeyEvent.VK_ESCAPE);
		Waiting(homePage.prepareForGateNotification, 5);
		homePage.clickOnPrepareForGateNotification();
		homePage.clickOnViewSubscriptionPlansButton();
		subscribePage.clickOnGetPlusButton();
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
		Thread.sleep(15000);
		Assert.assertTrue(paymentPage.isOtpValueTextFieldDisplayed() || paymentPage.isEnterOTPTextFieldDisplayed());	
		//softAssert=new SoftAssert();
		//softAssert.assertEquals(paymentPage.get(), "Authenticate Transaction");
	}
	
	@Test(priority = 2)
	public void testEnrollCourseWithInvalidCardNumber() throws InterruptedException, AWTException
	{
		landingPage = new LandingPage(driver);
		loginPage=new LoginPage(driver);
		homePage=new HomePage(driver);
		paymentPage=new PaymentPage(driver);
		subscribePage=new SubscribePage(driver);
		//landingPage.clickOnAcceptCookiesButton();
		landingPage.clickOnLoginButton();
		loginPage.setMobileNumber(prop.getProperty("MobNo"));
		loginPage.clickOnLoginButton();
		Robot robot = new Robot();
		Thread.sleep(15000);
		robot.keyPress(KeyEvent.VK_ESCAPE);
		robot.keyRelease(KeyEvent.VK_ESCAPE);
		Waiting(homePage.prepareForGateNotification, 5);
		homePage.clickOnPrepareForGateNotification();
		homePage.clickOnViewSubscriptionPlansButton();
		subscribePage.clickOnGetPlusButton();
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
		Assert.assertTrue(paymentPage.payButton.isDisplayed());
	}
	
	@Test (priority = 4)
	public void testEnrollCourseWithInvalidExpirationDate() throws InterruptedException, AWTException
	{
		landingPage = new LandingPage(driver);
		loginPage=new LoginPage(driver);
		homePage=new HomePage(driver);
		paymentPage=new PaymentPage(driver);
		subscribePage=new SubscribePage(driver);
		landingPage.clickOnLoginButton();
		loginPage.setMobileNumber(prop.getProperty("MobNo"));
		loginPage.clickOnLoginButton();
		Robot robot = new Robot();
		Thread.sleep(15000);
		robot.keyPress(KeyEvent.VK_ESCAPE);
		robot.keyRelease(KeyEvent.VK_ESCAPE);
		Waiting(homePage.prepareForGateNotification, 5);
		homePage.clickOnPrepareForGateNotification();
		homePage.clickOnViewSubscriptionPlansButton();
		subscribePage.clickOnGetPlusButton();
		jse=(JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,500)");
		subscribePage.select12MonthsRadioButton();
		subscribePage.clickOnProceedToPayButton();
		//Assert.assertEquals(paymentPage.PaymentMethod(), "Choose a payment method");
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
		Thread.sleep(15000);
		Assert.assertTrue(prop.getProperty("messagewithExpirydate").contains("Your contact details could are not available with the bank for online transactions"));
		//Assert.assertTrue(paymentPage.isOtpValueTextFieldDisplayed() || paymentPage.isEnterOTPTextFieldDisplayed());
	}
	
	@Test (priority = 5)
	public void TestCase5() throws InterruptedException, AWTException
	{
		landingPage = new LandingPage(driver);
		loginPage=new LoginPage(driver);
		homePage=new HomePage(driver);
		paymentPage=new PaymentPage(driver);
		subscribePage=new SubscribePage(driver);
		landingPage.clickOnLoginButton();
		loginPage.setMobileNumber(prop.getProperty("MobNo"));
		loginPage.clickOnLoginButton();
		Robot robot = new Robot();
		Thread.sleep(15000);
		robot.keyPress(KeyEvent.VK_ESCAPE);
		robot.keyRelease(KeyEvent.VK_ESCAPE);
		Waiting(homePage.prepareForGateNotification, 5);
		homePage.clickOnPrepareForGateNotification();
		homePage.clickOnViewSubscriptionPlansButton();
		subscribePage.clickOnGetPlusButton();
		jse=(JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,500)");
		subscribePage.select12MonthsRadioButton();
		subscribePage.clickOnProceedToPayButton();
		paymentPage.clickOnNetBanking();
		paymentPage.clickOnSelectBankDropDown();
		paymentPage.clickOnCanaraBank();
		paymentPage.clickOnPayButton();
		Assert.assertTrue(driver.getTitle().contains("Canara Bank"));
	}
}
