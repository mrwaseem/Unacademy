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

	@FindBy(xpath = "//button[text()='Select PLUS']")
	private WebElement selectPlusButton;
	public void clickOnSelectPlusButton()
	{
		selectPlusButton.click();
	}
	public boolean isPlusButtonEnabled()
	{
		return selectPlusButton.isEnabled();
	}

	@FindBy(xpath = "//button[@aria-label='Select ICONIC']")
	private WebElement selectIconicButton;
	public boolean isIconicButtonEnabled()
	{
		return selectIconicButton.isEnabled();
	}

	@FindBy(xpath = "//h4[@data-id='24 months']")
	private WebElement select24MonthsRadioButton;
	public void select24MonthsRadioButton() 
	{
		select24MonthsRadioButton.click();
	}
	
	@FindBy(xpath = "//h4[@data-id='18 months']")
	private WebElement select18MonthsRadioButton;
	public void select18MonthsRadioButton()
	{
		select18MonthsRadioButton.click();
	}
	
	@FindBy(xpath = "//h4[@data-id='12 months']")
	private WebElement select12MonthsRadioButton;
	public void select12MonthsRadioButton()
	{
		select12MonthsRadioButton.click();
	}
	
	@FindBy(xpath = "//button[@aria-label='View all plans']")
	public WebElement viewAllPlansButton;
	public boolean isViewAllPlansButtonEnabled()
	{
		return viewAllPlansButton.isEnabled();
	}
	public void clickOnviewAllPlansButton()
	{
		viewAllPlansButton.click();
	}
	
	@FindBy(xpath = "//h4[@data-id='6 months']")
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
	
	@FindBy(xpath = "//button[text()='Proceed to pay']")
	public WebElement proceedToPayButton;
	public void clickOnProceedToPayButton()
	{
		proceedToPayButton.click();
	}
}
