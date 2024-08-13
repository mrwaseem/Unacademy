package PageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

/**
 * #Summary:
 * #Author: Syed Waseem
 * #Author’s Email:syed.c.waseem@capgemini.com
 * #Creation Date: 08/03/2022
 * #Comments:
 */
public class PaymentPage {

	WebDriver driver;
	public PaymentPage(WebDriver driver)
	{
		this.driver=driver;
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath = "//h4[contains(text(),'payment method')]")
	private WebElement paymentMethod;
	public String PaymentMethod()
	{
		return paymentMethod.getText();
	}
	
	@FindBy(xpath = "//p[.='Pay in parts']")
	private WebElement selectPayInParts;
	public void clickOnPayInParts()
	{
		selectPayInParts.click();
	}
	@FindBy(xpath = "//p[.='Debit / Credit Card']")
	public WebElement selectCard;
	public void clickOnCard()
	{
		selectCard.click();
	}
	
	@FindBy(xpath = "//p[.='UPI']")
	private WebElement selectUPI;
	public void clickOnUPI()
	{
		selectUPI.click();
	}
	
	@FindBy(xpath = "//p[.='EMI']")
	private WebElement selectEMI;
	public void clickOnEMI()
	{
		selectEMI.click();
	}
	
	@FindBy(xpath = "//p[.='Pay in cash']")
	private WebElement selectCash;
	public void clickOnCash()
	{
		selectCash.click();
	}
	
	@FindBy(xpath = "//p[.='Loans']")
	private WebElement selectLoan;
	public void clickOnLoan()
	{
		selectLoan.click();
	}
	
	@FindBy(xpath = "//button[@aria-label='Continue']")
	private WebElement continueButton;
	public void clickOnContinueButton()
	{
		continueButton.click();
	}
	
	@FindBy(xpath = "//h5[text()='2 Parts']")
	private WebElement select2Parts;
	public void clickOn2Parts()
	{
		select2Parts.click();
	}
	
	@FindBy(xpath = "//h5[text()='3 Parts']")
	private WebElement select3Parts;
	public void clickOn3Parts()
	{
		select3Parts.click();
	}
	
	@FindBy(id = "card_number")
	private WebElement cardNumberField;
	
	public void setCardNumber(String c_number)
	{
		cardNumberField.sendKeys(c_number);
	}
	
	@FindBy(id = "card_exp_month")
	private WebElement ExpireMonthField;
	public void setExpireMonth(String mm)
	{
		ExpireMonthField.sendKeys(mm);
	}
	
	@FindBy(id = "card_exp_year")
	private WebElement ExpireYearField;
	public void setExpireYear(String yy)
	{
		ExpireYearField.sendKeys(yy);
	}
	
	@FindBy(id = "security_code")
	private WebElement securityCodeField;
	public void setSecurityCode(String cvv)
	{
		securityCodeField.sendKeys(cvv);
	}
	
	@FindBy(id = "name_on_card")
	private WebElement nameOnCardField;
	public void setNameOnCard(String name)
	{
		nameOnCardField.sendKeys(name);
	}
	
	@FindBy(xpath = "//button[.='Pay']")
	public WebElement payButton;
	public void clickOnPayButton()
	{
		payButton.click();
	}
	
	@FindBy(name = "otpValue")
	public WebElement OtpValueTextField;
	public boolean isOtpValueTextFieldDisplayed() {
		return OtpValueTextField.isDisplayed();
	}
	
	@FindBy(xpath = "//input[@placeholder='Enter OTP']")
	public WebElement EnterOTPTextField;
	public boolean isEnterOTPTextFieldDisplayed() {
		return EnterOTPTextField.isDisplayed();
	}
	
	@FindBy(xpath = "//strong[.='An OTP (One Time Password) has been sent to the registered mobile number']")
	public WebElement OTPSentToRMN;
	public String oTPSentToRMNMessage() {
		return OTPSentToRMN.getText();
	}
	
	@FindBy(xpath = "//h1[text()='Authenticate Transaction']")
	public WebElement AuthTransaction;
	public String AuthTransaction()
	{
		return AuthTransaction.getText();
	}
	
	@FindBy(xpath = "//p[contains(text(),'Transaction declined')]")
	public WebElement transactionDeclineMessage;
	public String TransactionDeclineMessage()
	{
		return transactionDeclineMessage.getText();
	}
	
	@FindBy(xpath = "//p[.='Netbanking']")
	private WebElement netBanking;
	public void clickOnNetBanking()
	{
		netBanking.click();
	}
	
	@FindBy(xpath = "//input[@placeholder='Select a bank']")
	private WebElement selectBankDropDown;
	public void clickOnSelectBankDropDown()
	{
		selectBankDropDown.click();
	}
	
	@FindBy(xpath = "//p[text()='Canara Bank']")
	private WebElement canaraBank;
	public void clickOnCanaraBank()
	{
		canaraBank.click();
	}
}

