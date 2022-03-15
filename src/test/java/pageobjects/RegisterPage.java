package PageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import io.cucumber.java.en.*;

public class RegisterPage 
{
	WebDriver driver;
	public RegisterPage(WebDriver driver)
	{
		this.driver=driver;
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath = "//h6[text()='create your account']")
	private WebElement createAccountButton;

	public void clickOnCreateAccountButton()
	{
		createAccountButton.click();
	}
	@FindBy(xpath = "//input[@type='tel']")
	private WebElement mobileNumberField;
	
	public void setMobileNumber(String number)
	{
		mobileNumberField.sendKeys(number);
	}
	
	@FindBy(xpath = "//button[@aria-label='Continue']")
	private WebElement continueButton;
	public void clickOnContinueButton()
	{
		continueButton.click();
	}
	
	@FindBy(xpath = "//h6[text()='18 years & above']")
	private WebElement ageRadioButton;
	public void selectAgeRadioButton()
	{
		ageRadioButton.click();
	}
	
	@FindBy(xpath = "//input[@placeholder='One time password']")
	private WebElement OTPField;
	public void setOTP(String OTP)
	{
		OTPField.sendKeys(OTP);
	}
	@FindBy(xpath = "//input[@placeholder='Name']")
	private WebElement nameField;
	
	public void setName(String name)
	{
		nameField.sendKeys(name);
	}
	
	@FindBy(xpath = "//input[@placeholder='Email address']")
	private WebElement emailField;
	
	public void setEmail(String email)
	{
		emailField.sendKeys(email);
	}
	
	@FindBy(xpath = "//button[text()='Select - State of residence']")
	private WebElement selectStateDropDown;
	public void selectStateDropDown()
	{
		selectStateDropDown.click();
	}
	
	@FindBy(xpath = "//span[text()='Andhra Pradesh']")
	private WebElement selectAndhraPradesh;
	public void selectAndhraPradesh()
	{
		selectAndhraPradesh.click();
	}

	@FindBy(xpath = "//input[@type='checkbox']")
	private WebElement agreeCheckbox;
	public void selectAgreeCheckBox()
	{
		agreeCheckbox.click();
	}
	
	@FindBy(xpath = "//button[text()='Submit']")
	private WebElement submitButton;
	public void clickOnSubmitButton()
	{
		submitButton.click();
	}
	
	@FindBy(xpath = "//p[text()='This OTP is not valid']")
	private WebElement otpInvalidMessage;
	public String OtpInvalidMessage()
	{
		return otpInvalidMessage.getText();
	}
	
	@FindBy(xpath = "//p[text()='Email is not valid']")
	private WebElement emailInvalidMessage;
	public String EmailInvalidMessage()
	{
		return emailInvalidMessage.getText();
	}
}
