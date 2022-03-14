/*package com.penske.pfm.pages.NewService;

import com.penske.core.framework.Log;
import com.penske.core.framework.browser.Browser;
import com.penske.core.framework.components.common.dropdown.SeleniumDropdown;
import com.penske.core.framework.config.TimeOutConstants;
import com.penske.core.framework.context.BaseContext;
import com.penske.core.helpers.TestDataGenerator;
import com.penske.pfm.context.ContextKeyPFM;
import com.penske.pfm.pages.BasePagePFM;
import io.cucumber.datatable.DataTable;
import org.openqa.selenium.By;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;

import java.util.List;

/**
 * #Summary:
 * #Author: Yogesh Kag
 * #Author’s Email:yogesh.kag@capgemini.com
 * #Creation Date: 28/10/2021
 * #Comments:
 */
/*public class NewServiceRequestPagePFM extends BasePagePFM {

    //<editor-fold desc="static variables">
    public static final String PAGE_IDENTIFIER = "New Service Request";
    //</editor-fold>

    //<editor-fold desc="Locators">
    private static final String SPAN_XPATH_PARTIAL = "//span[contains(text(),'";
    private static final String END_XPATH_PARTIAL = "')]";
    private static final String INPUT_CUSTOMER_NAME_XPATH = "//input[@formcontrolname='customerName']";
    private static final String INPUT_UNIT_NUMBER_XPATH = "//input[@formcontrolname='unit']";
    private static final String INPUT_UNIT_MILEAGE_XPATH = "//input[@formcontrolname='unitMileage']";
    private static final String DROPDOWN_SELECT_SERVICE_LOCATION_XPATH = "//select[@formcontrolname='serviceFacility']";
    private static final String SELECT_SERVICE_PLACE_XPATH_PARTIAL = "//app-radio-buttons//label[contains(text(),'";
    private static final String INPUT_REPAIR_DETAILS = "//textarea[@formcontrolname='repairDetails']";
    private static final String TEXT_ERROR_NEW_SERVICE_REQUEST_POPUP = "//div[@class='error-text ml-2']/span";
    private static final String MODAL_OUTSIDE_BUTTON_XPATH = "//button[@class='user-menu-button text-preset-6 mb-0 clickable']";
    private static final String SELECTED_SERVICE_PLACE_XPATH_PARTIAL = "')][@class='btn btn-secondary mt-0 mb-0 ng-star-inserted active']";
    private static final String DROPDOWN_FILE_TYPE_XPATH = "//select[@id='fileTypeSelector']";
    private static final String BUTTON_ATTACH_FILE_XPATH = "//input[@type='file']";
    private static final String SERVICE_LOCATION_FIELD_XPATH_PARTIAL = "//span[contains(text(),'";
    private static final String END_SERVICE_LOCATION_FIELD_XPATH_PARTIAL = "')]//following-sibling::select[@formcontrolname='serviceFacility']";
    private static final String END_SERVICE_LOCATION_ERROR_MESSAGE_XPATH_PARTIAL = "')]//following-sibling::app-validation-display//div[contains(text(),'";
    private static final String TEXT_CUSTOMER_NAME_XPATH_PARTIAL = "//td[1][contains(text(),'";
    private static final String COLUMN_NAME_XPATH_PARTIAL = "//table/thead/tr/th[";
    private static final String END_COLUMN_NAME_XPATH_PARTIAL = "]//span[contains(text(),'";
    private static final String DEFAULT_SORT = "//following-sibling::div/app-inline-svg[@iconName='Arrow-sort-default']";
    private static final String ASC_SORT = "//following-sibling::div/app-inline-svg[@iconName='Arrow-sort-asc']";
    private static final String SUBMITTED_BY_VALUE_XPATH = "//tr[1]/td[6]/p";
    private static final String CURRENT_USER_NAME_XPATH = "//app-current-user-menu/div/div/button/span";
    //</editor-fold>

    //<editor-fold desc="Public methods">
    @Override
    public boolean verify() {
        return Browser.check().isElementDisplayed(By.xpath(SPAN_XPATH_PARTIAL + PAGE_IDENTIFIER + END_XPATH_PARTIAL));
    }

    public void enterCustomerDetails(String customerName, String unitNumber, String unitMileage, String serviceLocation) {
        BaseContext.setValue(ContextKeyPFM.RANDOM_FIRST_NAME, TestDataGenerator.getRandomAlphanumericString(3));
        Browser.action().sendKeys(inputCustomerName(), customerName + BaseContext.getValue(ContextKeyPFM.RANDOM_FIRST_NAME));
        Browser.action().sendKeys(inputUnitNumber(), unitNumber);
        Browser.action().sendKeys(inputUnitMileage(), unitMileage);
        SeleniumDropdown dropdown = new SeleniumDropdown();
        dropdown.selectDropdownByVisibleText(serviceLocationDropDown(), serviceLocation);
    }

    public void selectServiceLocation(String serviceLocation) {
        SeleniumDropdown dropdown = new SeleniumDropdown();
        dropdown.selectDropdownByVisibleText(serviceLocationDropDown(), serviceLocation);
    }

    public void selectServicePlace(String servicePlace) {
        Browser.action().waitAndClick(By.xpath(SELECT_SERVICE_PLACE_XPATH_PARTIAL + servicePlace + END_XPATH_PARTIAL));
    }

    public void enterRepairDetails(String repairDetails) {
        Browser.action().sendKeys(inputRepairDetails(), repairDetails);
    }

    public boolean verifyErrorOnNewServiveRequestPopup(String error) {
        return Browser.get().getText(textErrorOnNewServicePopup()).trim().equals(error);
    }

    public void clickOutsideNewServiceRequestModal() {
        Log.info("X value of User buton on the top left: " + Browser.action().findElement(By.xpath(MODAL_OUTSIDE_BUTTON_XPATH)).getLocation().getX());
        Log.info("Y value of User buton on the top left: " + Browser.action().findElement(By.xpath(MODAL_OUTSIDE_BUTTON_XPATH)).getLocation().getY());
        Actions builder = new Actions(Browser.getDriver());
        Action action = builder.moveByOffset(1063, 12).click().build();
        action.perform();
    }

    public boolean verifyCustomerDetailsGetEntered(String customerName, String unitNumber, String unitMileage) {
        Browser.waiter().sleep(TimeOutConstants.DEFAULT_TIMEOUT_2_000_MS);
        String customerName1 = customerName;
        if (BaseContext.getValue(ContextKeyPFM.RANDOM_FIRST_NAME) != null) {
            customerName1 = customerName + BaseContext.getValue(ContextKeyPFM.RANDOM_FIRST_NAME);
        }
        return Browser.get().getAttribute(inputCustomerName(), "value").equals(customerName1) && Browser.get().getAttribute(inputUnitNumber(), "value").equals(unitNumber) && Browser.get().getAttribute(inputUnitMileage(), "value").equals(unitMileage);
    }

    public boolean verifyServiceLocationIsSelected(String serviceLocation) {
        SeleniumDropdown dropdown = new SeleniumDropdown();
        String selectedValue = dropdown.getFirstSelectedValueByIDDropdown(serviceLocationDropDown());
        return selectedValue.equals(serviceLocation);
    }

    public boolean verifySelectedServicePlace(String servicePlace) {
        return Browser.check().isElementDisplayed(By.xpath(SELECT_SERVICE_PLACE_XPATH_PARTIAL + servicePlace + SELECTED_SERVICE_PLACE_XPATH_PARTIAL));
    }

    public void fileTypeSelect(String fileType) {
        SeleniumDropdown dropdownObj = new SeleniumDropdown();
        dropdownObj.selectDropdownByVisibleText(dropdownFileType(), fileType);
    }

    public void uploadFile(String filePath) {
        Browser.waiter().sleep(TimeOutConstants.DEFAULT_TIMEOUT_2_000_MS);
        Browser.action().findElement(By.xpath(BUTTON_ATTACH_FILE_XPATH)).sendKeys(filePath);
        Browser.waiter().sleep(TimeOutConstants.DEFAULT_TIMEOUT_2_000_MS);
    }

    public boolean verifyUploadedFileIsDisplayed() {
        return Browser.check().isElementDisplayed(By.xpath(SPAN_XPATH_PARTIAL + "Penske" + END_XPATH_PARTIAL));
    }

    public boolean verifyRepairDetails(String repairDetails) {
        return Browser.get().getAttribute(inputRepairDetails(), "value").equals(repairDetails);
    }

    public boolean verifyServiceLocationFieldIsDisplayed(String fieldName) {
        return Browser.check().isElementDisplayed(serviceLocationField(fieldName));
    }

    public boolean verifyDefaultServiceLocation(String serviceLocation) {
        SeleniumDropdown dropdown = new SeleniumDropdown();
        return dropdown.getFirstSelectedValueByIDDropdown(serviceLocationDropDown()).contains(serviceLocation);
    }

    public boolean verifyServiceLocationErrorMessage(String messageName, String fieldName) {
        return Browser.check().isElementDisplayed(serviceLocationErrorMessage(messageName, fieldName));
    }

    public boolean verifyCustomerNameIsDisplayed(String customerName) {
        Browser.waiter().sleep(TimeOutConstants.DEFAULT_TIMEOUT_2_000_MS);
        String customerName1 = customerName;
        if (BaseContext.getValue(ContextKeyPFM.RANDOM_FIRST_NAME) != null) {
            customerName1 = customerName + BaseContext.getValue(ContextKeyPFM.RANDOM_FIRST_NAME);
        }
        return Browser.check().isElementDisplayed(customerName(customerName1));
    }

    public boolean verifyColumnHeaders(DataTable columnName) {
        List<String> expectedColumnNames = columnName.asList(String.class);
        for (int i = 1; i <= expectedColumnNames.size(); i++) {
            if (!Browser.check().isElementDisplayed(columnName(expectedColumnNames.get(i - 1), i))) {
                return false;
            }
        }
        return true;
    }

    public boolean verifyColumnName(String columnName1, String columnName2) {
        return Browser.check().isElementDisplayed(columnName(columnName2, 5)) && Browser.check().isElementDisplayed(columnName(columnName1, 6));
    }

    public void clickOnColumnName(String columnName) {
        Browser.action().waitAndClick(columnName(columnName, 6));
    }

    public boolean verifySubmittedByValue() {
        String userName = Browser.get().getText(currentUserName());
        return Browser.get().getText(submittedByValue()).equals(userName);
    }

    public boolean verifyDefaultSort(String columnName) {
        return Browser.check().isElementDisplayed(defaultSort(columnName, 6));
    }

    public boolean verifyAscSort() {
        return Browser.check().isElementDisplayed(ascSort("Submitted By", 6));
    }
    //</editor-fold>

    //<editor-fold desc="Private methods">
    private By inputCustomerName() {
        return By.xpath(INPUT_CUSTOMER_NAME_XPATH);
    }

    private By inputUnitNumber() {
        return By.xpath(INPUT_UNIT_NUMBER_XPATH);
    }

    private By inputUnitMileage() {
        return By.xpath(INPUT_UNIT_MILEAGE_XPATH);
    }

    private By serviceLocationDropDown() {
        return By.xpath(DROPDOWN_SELECT_SERVICE_LOCATION_XPATH);
    }

    private By inputRepairDetails() {
        return By.xpath(INPUT_REPAIR_DETAILS);
    }

    private By textErrorOnNewServicePopup() {
        return By.xpath(TEXT_ERROR_NEW_SERVICE_REQUEST_POPUP);
    }

    private By dropdownFileType() {
        return By.xpath(DROPDOWN_FILE_TYPE_XPATH);
    }

    private By serviceLocationField(String fieldName) {
        return By.xpath(SERVICE_LOCATION_FIELD_XPATH_PARTIAL + fieldName + END_SERVICE_LOCATION_FIELD_XPATH_PARTIAL);
    }

    private By serviceLocationErrorMessage(String messageName, String fieldName) {
        return By.xpath(SERVICE_LOCATION_FIELD_XPATH_PARTIAL + fieldName + END_SERVICE_LOCATION_ERROR_MESSAGE_XPATH_PARTIAL + messageName + END_XPATH_PARTIAL);
    }

    private By customerName(String customerName) {
        return By.xpath(TEXT_CUSTOMER_NAME_XPATH_PARTIAL + customerName + END_XPATH_PARTIAL);
    }

    private By columnName(String columnName, int number) {
        return By.xpath(COLUMN_NAME_XPATH_PARTIAL + number + END_COLUMN_NAME_XPATH_PARTIAL + columnName + END_XPATH_PARTIAL);
    }

    private By submittedByValue() {
        return By.xpath(SUBMITTED_BY_VALUE_XPATH);
    }

    private By currentUserName() {
        return By.xpath(CURRENT_USER_NAME_XPATH);
    }

    private By defaultSort(String columnName, int number) {
        return By.xpath(COLUMN_NAME_XPATH_PARTIAL + number + END_COLUMN_NAME_XPATH_PARTIAL + columnName + END_XPATH_PARTIAL + DEFAULT_SORT);
    }

    private By ascSort(String columnName, int number) {
        return By.xpath(COLUMN_NAME_XPATH_PARTIAL + number + END_COLUMN_NAME_XPATH_PARTIAL + columnName + END_XPATH_PARTIAL + ASC_SORT);
    }
    //</editor-fold>
}*/

