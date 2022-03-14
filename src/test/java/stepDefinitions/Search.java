/*package stepDefinitions;
import java.time.Duration;

import org.openqa.selenium.Keys;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;

import PageObjects.HomePage;
import PageObjects.LandingPage;
import PageObjects.LoginPage;
import PageObjects.SearchResultPage;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.*;
import io.github.bonigarcia.wdm.WebDriverManager;
public class Search extends BaseClass
{

	@Before
	public void setup()
	{
		WebDriverManager.chromedriver().setup();
		driver =new ChromeDriver();
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10000));
		driver.manage().window().maximize();
		driver.get("https://unacademy.com/");
	}
	@After
	public void tearDown()
	{
		driver.quit();
	}

	@Given("I navigate to login page")
	public void i_navigate_to_login_page() {
		landingPage =new LandingPage(driver);
		landingPage.clickOnAcceptCookiesButton();
		landingPage.clickOnLoginButton();
	}

	@When("I Enter {string} and click on Login button")
	public void i_enter_and_click_on_login_button(String mobileNumber) {
		loginPage=new LoginPage(driver);
		loginPage.setMobileNumber(mobileNumber);
		loginPage.clickOnLoginButton();
	}

	@Then("Login page should be display")
	public void login_page_should_be_display() {
		loginPage= new LoginPage(driver);
		Assert.assertTrue(loginPage.loginText());
	}

	@Then("I enter valid  OTP and click on Verify OTP button")
	public void i_enter_valid_otp_and_click_on_verify_otp_button() throws InterruptedException {
		loginPage=new LoginPage(driver);
		Thread.sleep(20000);
		loginPage.clickOnVerifyOtpButton();
	}

	@Then("I navigate to Home page")
	public void i_navigate_to_home_page() {
		homePage= new HomePage(driver);
		Waiting(homePage.okGotItButton, 10);
		homePage.clickOnGotItButton();
		Assert.assertTrue(homePage.ProfileIcon());
	}

	@Then("I click on Search Icon")
	public void i_click_on_search_icon() {
		homePage=new HomePage(driver);
		Waiting(homePage.searchIcon, 10);
		homePage.clickOnSearchIcon();
	}

	@Then("Search field should be display")
	public void search_field_should_be_display() {
		homePage=new HomePage(driver);
		Assert.assertTrue(homePage.searchIcon());
	}

	@When("I enter the  valid educators {string}")
	public void i_enter_the_valid_educators(String educatorsName) {
		homePage=new HomePage(driver);
		homePage.SearchInput(educatorsName);
	}

	@Then("Related educators profile Icon should be display in list")
	public void related_educators_profile_icon_should_be_display_in_list() {
		homePage=new HomePage(driver);
		Assert.assertTrue(homePage.EducatorProfile());
	}

	@When("I click on profile Icon in list")
	public void i_click_on_profile_icon_in_list() {
		homePage = new HomePage(driver);
		homePage.clickOnEducatorProfile();
	}

	@Then("I Verify Profile is display")
	public void i_verify_profile_is_display() {
		searchResultPage=new SearchResultPage(driver);
		Assert.assertTrue(searchResultPage.AnandaKulkarniProfile());
	}
	
	@When("I  enter invalid educators {string}")
	public void i_enter_invalid_educators(String invalidEducatorsName) {
		homePage=new HomePage(driver);
		Waiting(homePage.searchIcon, 10);
		homePage.clickOnSearchIcon();
		homePage.SearchInput(invalidEducatorsName);
		homePage.searchInput.sendKeys(Keys.ENTER);	
	}

	@Then("I Verify No result found is displayed")
	public void i_verify_no_result_found_is_displayed() {
	    searchResultPage=new SearchResultPage(driver);
	    Assert.assertEquals(searchResultPage.NoProfile(),"No result found");
	}
	
	@When("I enter the  valid course {string}")
	public void i_enter_the_valid_course(String validCourse) throws InterruptedException {
		homePage=new HomePage(driver);
		
		Waiting(homePage.searchIcon, 10);
		homePage.clickOnCloseIcon();
		//Thread.sleep(2000);
		homePage.SearchInput(validCourse);	
	}
	
	@Then("Related course should be displayed in list")
	public void related_course_should_be_displayed_in_list() {
		searchResultPage=new SearchResultPage(driver);
		Assert.assertTrue(searchResultPage.unacademyGateCourse.isDisplayed());
	}

	
	@When("I click on course in the list")
	public void i_click_on_course_in_the_list() {
		searchResultPage=new SearchResultPage(driver);
		searchResultPage.clickOnUnacademyGateCourse();
	}
	
	@Then("I Verify course is displayed")
	public void i_verify_course_is_displayed() {
		searchResultPage=new SearchResultPage(driver);
		Assert.assertEquals(searchResultPage.UnacademyCourse(), "Unacademy Gate");
	}
	
	@When("I enter Invalid course {string}")
	public void i_enter_invalid_course(String string) {
	
	}
}*/

