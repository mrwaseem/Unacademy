package PageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class ChooseYourGoal {
	WebDriver driver;
	
	
	public ChooseYourGoal(WebDriver driver)
	{
		this.driver=driver;
		PageFactory.initElements(driver, this);
	}
	
	
	@FindBy(xpath="//span[text()='Full Stack Development']")
	private WebElement fullStackDevelopmentCourse;
	public void clickOnFullStackDevelopmentCourse()
	{
		fullStackDevelopmentCourse.click();
	}
	
	@FindBy(xpath="//input[@type='text']")
	private WebElement searchBoxField;
	public void searchCourse(String string)
	{
	    
		searchBoxField.sendKeys(string);	
	}
	public void clickOnSearch()
	{
		searchBoxField.click();	
	}
	
	@FindBy(xpath="(//p[text()='CUCET'])[1]")
	private WebElement selectBhuEntranceCourse;
	public void selectbhuEntranceCourse()
	{
		selectBhuEntranceCourse.click();
	}
	@FindBy(xpath="//span[text()='BHU Entrance']")
	private WebElement selectBhuEntranceButton;
	public void clickOnbhuEntranceButton()
	{
		selectBhuEntranceButton.click();
	}
	
	
	@FindBy(xpath="(//p[text()='CUCET'])[1]")
	private WebElement selectCucetCourse;
	public void selectcucetCourse()
	{
		selectCucetCourse.click();
	}
	
	@FindBy(xpath="//span[text()='AMU Entrance']")
	private WebElement selectAmuEntranceButton;
	public void clickOnAmuEntranceButton()
	{
		selectAmuEntranceButton.click();
	}
	
	
	@FindBy(xpath = "(//p[text()='Financial Markets'])[1]")
	private WebElement selectFinancialMarketsCourse;
	
	public void selectfinancialMarketsCourse()
	{
		selectFinancialMarketsCourse.click();
	}

	@FindBy(xpath="//span[text()='Financial Markets']")
	private WebElement FinancialMarketCourseButton;
	public void clickOnFinancialMarketCourse()
	{
		FinancialMarketCourseButton.click();
	}
	
	@FindBy(xpath = "//button[text()='Financial Markets'] ")
	private WebElement financialMarket;
	public String financialMarket()
	{
		return financialMarket.getText();
	}
	
}
