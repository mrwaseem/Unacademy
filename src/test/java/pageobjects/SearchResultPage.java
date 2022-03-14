package PageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class SearchResultPage 
{
	WebDriver driver;
	public SearchResultPage(WebDriver driver)
	{
		this.driver=driver;
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath = "//h2[text()='Ananda Kulkarni']")
	private WebElement anandaKulkarniProfile;
	public boolean AnandaKulkarniProfile()
	{
		return anandaKulkarniProfile.isDisplayed();
	}
	
	@FindBy(css = ".css-1gjjjv5-H3-NoDataTitle.e1yvve4h2")
	private WebElement noProfile;
	public String NoProfile()
	{
		return noProfile.getText();
	}
	
	@FindBy(xpath = "//p[text()='Unacademy Gate']")
	public WebElement unacademyGateCourse;
	public void clickOnUnacademyGateCourse()
	{
		unacademyGateCourse.click();
	}
	
	@FindBy(xpath = "//h2[text()='Unacademy Gate']")
	private WebElement unacademyCourse;
	public String UnacademyCourse()
	{
		return unacademyCourse.getText();
	}
}
