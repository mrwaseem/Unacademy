package PageObjects;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
public class HomePage
{
	WebDriver driver;
	public HomePage(WebDriver driver)
	{
		this.driver=driver;
		PageFactory.initElements(driver, this);
	}

	@FindBy(xpath = "//div[text()='OK GOT IT']")
	public WebElement okGotItButton;

	public void clickOnGotItButton()
	{
		okGotItButton.click();
	}
	
	@FindBy(xpath = "//img[@loading='eager']")
	private WebElement profileIcon;
	public void clickOnProfileIcon()
	{
		profileIcon.click();
	}
	public boolean ProfileIcon()
	{
		return profileIcon.isDisplayed();
	}
	@FindBy(xpath = "//p[text()='Sign out']")
	private WebElement signoutbutton;
	public void clickOnSignout()
	{
		signoutbutton.click();
	}
	@FindBy(xpath = "(//button[@type='button'])[1]")
	public WebElement switchGoalButton;
	public void clickOnSwitchGoalButton()
	{
		switchGoalButton.click();
	}
	
	@FindBy(xpath = "//p[text()='Programming for Students']")
	public WebElement selectGoal;
	
	public void SelectGoal()
	{
		selectGoal.click();
	}
	
	@FindBy(xpath = "//button[.='Programming for Stud ...']")
	private WebElement programmingForStud;
	public String programmingForStud()
	{
		return programmingForStud.getText();
	}
	@FindBy(xpath = "(//button[@aria-label='Get subscription'])[1]")
	private WebElement getSubscriptionButton;
	public void clickOnGetSubscriptionButton()
	{
		getSubscriptionButton.click();
	}
	public boolean isGetSubscriptionButtonEnabled()
	{
		return getSubscriptionButton.isEnabled();
	}
	
	@FindBy(xpath = "//p[text()='Add another goal']")
	private WebElement addAndotherGoalButton;
	
	public void clickOnaddAnotherGoalButton()
	{
		addAndotherGoalButton.click();
	}
	
	@FindBy(css = ".css-xg2sdt-SearchIconContainer.ed9web90")
	public WebElement searchIcon;
	public void clickOnSearchIcon()
	{
		searchIcon.click();
	}
	public boolean searchIcon()
	{
		return searchIcon.isDisplayed();
	}
	
	@FindBy(id = "searchInput")
	public WebElement searchInput;
	public void SearchInput(String educators)
	{
		searchInput.sendKeys(educators);
	}
	
	@FindBy(xpath = "//p[text()='Ananda Kulkarni']")
	private WebElement educatorProfile;
	public boolean EducatorProfile()
	{
		return educatorProfile.isDisplayed();
	}
	public void clickOnEducatorProfile()
	{
		educatorProfile.click();
	}
	
	@FindBy(xpath = "//div[@class='MuiInputAdornment-root MuiInputAdornment-positionEnd']//*[name()='svg']")
	private WebElement closeIcon;
	public void clickOnCloseIcon()
	{
		closeIcon.click();
	}
}