package PageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class SubscribePage 
{
	WebDriver driver;
	public SubscribePage(WebDriver driver)
	{
		this.driver=driver;
		PageFactory.initElements(driver, this);
	}

	@FindBy(xpath = "(//span[text()='Get Plus'])[2]")
	private WebElement getPlusButton;
	public void clickOnGetPlusButton()
	{
		getPlusButton.click();
	}
	public boolean isGetPlusButtonEnabled()
	{
		return getPlusButton.isEnabled();
	}

	@FindBy(xpath = "(//span[.='Get Iconic'])[2]")
	private WebElement getIconicButton;
	public boolean isGetIconicButtonEnabled()
	{
		return getIconicButton.isEnabled();
	}

	@FindBy(xpath = "(//div[contains(@class, 'css-1l26j99-ContentWrap')])[1]")
	private WebElement select24MonthsRadioButton;
	public void select24MonthsRadioButton() 
	{
		select24MonthsRadioButton.click();
	}
		
	@FindBy(xpath = "(//div[contains(@class, 'css-1l26j99-ContentWrap')])[2]")
	private WebElement select12MonthsRadioButton;
	public void select12MonthsRadioButton()
	{
		select12MonthsRadioButton.click();
	}
	
	@FindBy(xpath = "(//div[contains(@class, 'css-1l26j99-ContentWrap')])[3]")
	private WebElement select9MonthsRadioButton;
	public void select9MonthsRadioButton()
	{
		select9MonthsRadioButton.click();
	}
	
	@FindBy(xpath = "//span[.='View all plans']")
	public WebElement viewAllPlansButton;
	public boolean isViewAllPlansButtonEnabled()
	{
		return viewAllPlansButton.isEnabled();
	}
	public void clickOnViewAllPlansButton()
	{
		viewAllPlansButton.click();
	}
	
	@FindBy(xpath = "(//div[contains(@class, 'css-1l26j99-ContentWrap')])[4]")
	public WebElement select6MonthsRadioButton;
	public void select6MonthsRadioButton()
	{
		select6MonthsRadioButton.click();
	}
	@FindBy(xpath = "//h4[text()='3 months']")
	private WebElement select3MonthsRadioButton;
	public void select3MonthsRadioButton()
	{
		select3MonthsRadioButton.click();
	}
	
	@FindBy(xpath = "//h4[text()='ICONIC']")
	private WebElement iconicButton;
	public void clickOnIconicButton()
	{
		iconicButton.click();
	}
	@FindBy(xpath = "//h4[text()='LITE']")
	private WebElement liteButton;
	public void clickOnLiteButton()
	{
		liteButton.click();
	}
	@FindBy(xpath = "//h4[text()='PLUS']")
	private WebElement plusButton;
	public void clickOnPlusButton()
	{
		plusButton.click();
	}
	
	@FindBy(xpath = "//span[text()='Proceed to pay']")
	public WebElement proceedToPayButton;
	public void clickOnProceedToPayButton()
	{
		proceedToPayButton.click();
	}
}
