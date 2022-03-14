package TestNG_TC;

import org.openqa.selenium.JavascriptExecutor;
import org.testng.Assert;
import org.testng.annotations.Test;

import PageObjects.HomePage;
import PageObjects.LandingPage;
import PageObjects.LoginPage;
import PageObjects.PaymentPage;
import PageObjects.SubscribePage;
import resources.BaseClass;

public class Pay_Enroll extends BaseClass
{
	@Test
	public void Enroll_With_ValidCard_And_InvalidCVV() throws InterruptedException
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
		Assert.assertTrue(loginPage.loginText());
		Thread.sleep(20000);
		loginPage.clickOnVerifyOtpButton();
		Waiting(homePage.okGotItButton, 15);
		homePage.clickOnGotItButton();
		Assert.assertTrue(homePage.ProfileIcon());
		Assert.assertTrue(homePage.isGetSubscriptionButtonEnabled());
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
}
