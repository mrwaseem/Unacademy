package PageObjects;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
public class LandingPage 
{
	WebDriver driver;
	public LandingPage(WebDriver driver)
	{
		this.driver=driver;
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath = "//button[.='Accept cookies']")
	private WebElement acceptCookiesButton;
	
	public void clickOnAcceptCookiesButton()
	{
		acceptCookiesButton.click();
	}
	
	@FindBy(xpath = "(//button[@type='button'])[1]")
	private WebElement loginButton;
	
	public void clickOnLoginButton()
	{
		loginButton.click();
	}
	
	public boolean Loginbutton()
	{
		return loginButton.isDisplayed();
	}
}
