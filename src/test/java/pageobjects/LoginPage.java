package PageObjects;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
public class LoginPage 
{
	WebDriver driver;
	public LoginPage(WebDriver driver)
	{
		this.driver=driver;
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath = "//input[@type='tel']")
	private WebElement mobileNumberField;
	
	public void setMobileNumber(String number)
	{
		mobileNumberField.sendKeys(number);
	}
	
	@FindBy(xpath = "(//button[@type='button'])[5]")
	private WebElement loginButton;
	
	public void clickOnLoginButton()
	{
		loginButton.click();
	}
	
	@FindBy(xpath = "//h2[.='Login']")
	private WebElement loginText;
	public boolean loginText()
	{
		return loginText.isDisplayed();
	}
	
	@FindBy(xpath = "(//button[@type='button'])[5]")
	private WebElement verifyOtpButton;
	
	public void clickOnVerifyOtpButton()
	{
		verifyOtpButton.click();
	}
	
	@FindBy(xpath = "//p[text()='This OTP is not valid']")
	private WebElement errorMessage;
	
	public String ErrorMessage() {
		return errorMessage.getText();
		
	}
	
	@FindBy(xpath = "//input[@type='tel']")
	private WebElement unregisteredmobileNumberField;
	
	public void MobileNumber(String number)
	{
		mobileNumberField.sendKeys(number);
	}

	@FindBy(xpath = "//h2[text()='Select age group']")
	private WebElement createAccountPage;
	
	public String CreateAccountPage()
	{
		return createAccountPage.getText();
	}
	
	@FindBy(xpath = "//h6[@class=\"css-4zeqrb-H6-StyledH6 ei6bzh23\"]")
	private WebElement ContinueWithEmail;
	
	public void clickOnContinueWithEmail()
	{
		ContinueWithEmail.click();
	}
	
	@FindBy(xpath = "//input[@type=\"email\"]")
	private WebElement registeredEmail;
	
	public void Emailid(String emailaddress)
	{
		registeredEmail.sendKeys(emailaddress);
	}
	
	@FindBy(xpath = "//input[@type=\"email\"]")
	private WebElement unregisteredEmail;
	
	public void UnregisteredEmailid(String emailaddress)
	{
		unregisteredEmail.sendKeys(emailaddress);
	}
	
	@FindBy(xpath = "//p[text()='This email is not registered with us']")
	private WebElement emailErrorMessage;
	
	public String EmailErrorMessage() {
		return emailErrorMessage.getText();
	}
}
