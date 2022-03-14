/*package com.penske.pfm.tests.definitions.newService;

import com.penske.pfm.pages.NewService.NewServiceRequestPagePFM;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;

import static com.penske.pfm.pages.PageFactoryPFM.getPageByIdentifier;

/**
 * #Summary:
 * #Author: Yogesh Kag
 * #Author’s Email:yogesh.kag@capgemini.com
 * #Creation Date: 01/07/2021
 * #Comments:
 */
/*public class NewServiceRequestPFMStepsDef {

    // <editor-fold desc="When">
    @When("I Enter Customer Name {string} Unit Number or VIN {string} Unit Mileage {string} Service Location {string} on {string} page of PFM vendor portal")
    public void iEnterCustomerNameUnitNumberOrVINUnitMileageServiceLocationOnNewServiceRequestPopupOnPageOfPFMVendorPortal(String customerName, String unitNumber, String unitMileage, String serviceLocation, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        definedPage.enterCustomerDetails(customerName, unitNumber, unitMileage, serviceLocation);
    }

    @When("I Select Service Location {string} on {string} page of PFM vendor portal")
    public void iSelectServiceLocationOnNewServiceRequestPopupOfPFMVendorPortal(String serviceLocation, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        definedPage.selectServiceLocation(serviceLocation);
    }

    @When("I Select Service Place {string} on {string} page of PFM vendor portal")
    public void iSelectServicePlaceOnNewServiceRequestPopupOnPageOfPFMVendorPortal(String servicePlace, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        definedPage.selectServicePlace(servicePlace);
    }

    @When("I Enter Repair Details {string} on {string} page of PFM vendor portal")
    public void iEnterRepairDetailsOnNewServiceRequestPopupOfPFMVendorPortal(String repairDetails, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        definedPage.enterRepairDetails(repairDetails);
    }

    @When("I Select the File type {string} on {string} page of PFM vendor portal")
    public void iSelectFileTypeOnPageOfPFMVendorPortal(String fileType, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        definedPage.fileTypeSelect(fileType);
    }

    @When("I Click on Sort icon in {string} column on {string} page of PFM vendor portal")
    public void iClickOnColumnNameOnPageOfPFMVendorPortal(String columnName, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        definedPage.clickOnColumnName(columnName);
    }
    // </editor-fold>

    // <editor-fold desc="And">
    @And("I Click outside the New Service Request Modal window on PFM vendor portal")
    public void iClickOutsideTheNewServiceRequestModalWindowOnPFMVendorPortal(String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        definedPage.clickOutsideNewServiceRequestModal();
    }

    @And("I Upload {string} file on {string} page of PFM vendor portal")
    public void iUploadFileOnPageOfPFMVendorPortal(String filePath, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        definedPage.uploadFile(filePath);
    }
    // </editor-fold>

    // <editor-fold desc="Then">
    @Then("I Verify error {string} is displayed on {string} page of PFM vendor portal")
    public void iVerifyErrorOnNewServiceRequestPopupOnPFMVendorPortal(String error, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifyErrorOnNewServiveRequestPopup(error), String.format("%s error is not displayed on %s page", error, pageName));
    }

    @Then("I Verify Customer Name {string} Unit Number or VIN {string} Unit Mileage {string} get entered on {string} page of PFM vendor portal")
    public void iVerifyCustomerNameUnitNumberOrVINUnitMileageGetEnteredOnNewServiceRequestPopupOnPageOfPFMVendorPortal(String customerName, String unitNumber, String unitMileage, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifyCustomerDetailsGetEntered(customerName, unitNumber, unitMileage), String.format("Customer details %s And %s And %s is not entered on %s page", customerName, unitNumber, unitMileage, pageName));
    }

    @Then("I Verify Service Location {string} get selected on {string} page of PFM vendor portal")
    public void iVerifyServiceLocationIsSelectedOnNewServiceRequestPopupOfPFMVendorPortal(String serviceLocation, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifyServiceLocationIsSelected(serviceLocation), String.format("Service Location %s is not selected on %s page", serviceLocation, pageName));
    }

    @Then("I Verify Service Place {string} get selected on {string} page of PFM vendor portal")
    public void iVerifyServicePlaceIsSelectedOnNewServiceRequestPopupOfPFMVendorPortal(String servicePlace, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifySelectedServicePlace(servicePlace), String.format("Service Place %s is not selected on %s page", servicePlace, pageName));
    }

    @Then("I Verify file is uploaded successfully on {string} page of PFM vendor portal")
    public void iVerifyFileIsUploadedOnPageOfPFMVendorPortal(String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifyUploadedFileIsDisplayed(), String.format("File is not uploaded on %s page", pageName));
    }

    @Then("I Verify Repair Details {string} get entered on {string} page of PFM vendor portal")
    public void iVerifyRepairDetailsGetEnteredOnNewServiceRequestPopupOfPFMVendorPortal(String repairDetails, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifyRepairDetails(repairDetails), String.format("Repair Details %s is not get entered on %s page", repairDetails, pageName));
    }

    @Then("I Verify that {string} field is displayed on {string} page of PFM vendor portal")
    public void iVerifyThatServiceLocationFieldIsDisplayedOnNewServiceRequestPopupOfPFMVendorPortal(String fieldName, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifyServiceLocationFieldIsDisplayed(fieldName), String.format("%s Field is not displayed on %s page", fieldName, pageName));
    }

    @Then("I Verify the field default to {string} on {string} page of PFM vendor portal")
    public void iVerifyServiceLocationDefaultValueOnNewServiceRequestPopupOfPFMVendorPortal(String locationName, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifyDefaultServiceLocation(locationName), String.format("%s Field is not displayed on %s page", locationName, pageName));
    }

    @Then("I Verify Error message {string} is displayed for {string} field on {string} page of PFM vendor portal")
    public void iVerifyServiceErrorMessageOnNewServiceRequestPopupOfPFMVendorPortal(String messageName, String fieldName, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifyServiceLocationErrorMessage(messageName, fieldName), String.format("Error Message %s is not displayed for %s field on %s page", messageName, fieldName, pageName));
    }

    @Then("I Verify Customer Name {string} is displayed on {string} page of PFM vendor portal")
    public void iVerifyServiceErrorMessageOnNewServiceRequestPopupOfPFMVendorPortal(String customerName, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifyCustomerNameIsDisplayed(customerName), String.format("Newly added customer %s is not displayed on %s page", customerName, pageName));
    }

    @Then("I Verify that following columns are displayed in below order on {string} page of PFM vendor portal")
    public void iVerifyFollowingColumnHeadersAreDisplayedOnPageOfPFMVendorPortal(String pageName, DataTable columnName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifyColumnHeaders(columnName), String.format("%s column name is not displayed in correct order on %s page", columnName, pageName));
    }

    @Then("I Verify that {string} new column is added next to the {string} column on {string} page of PFM vendor portal")
    public void iVerifyFollowingColumnHeadersAreDisplayedOnPageOfPFMVendorPortal(String columnName1, String columnName2, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifyColumnName(columnName1, columnName2), String.format("%s new column is not added next to the %s column on %s page", columnName1, columnName2, pageName));
    }

    @Then("I Verify that submitted person name is displayed under the {string} column on {string} page of PFM vendor portal")
    public void iVerifyFollowingColumnHeadersAreDisplayedOnPageOfPFMVendorPortal(String columnName, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifySubmittedByValue(), String.format("Submitted person name is not displayed under the %s column on %s page", columnName, pageName));
    }

    @Then("I Verify that Sorting option is displayed for {string} column on {string} page of PFM vendor portal")
    public void iVerifySortingOptionIsDisplayedOnPageOfPFMVendorPortal(String columnName, String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifyDefaultSort(columnName), String.format("Sorting option is not displayed is not displayed for %s column on %s page", columnName, pageName));
    }

    @Then("I Verify Sorting result is displayed and starting from last name on {string} page of PFM vendor portal")
    public void iVerifySortingOptionIsDisplayedOnPageOfPFMVendorPortal(String pageName) {
        NewServiceRequestPagePFM definedPage = (NewServiceRequestPagePFM) getPageByIdentifier(pageName);
        Assert.assertTrue(definedPage.verifyAscSort(), String.format("Sorting result is not displayed and starting from last name for submitted by column on %s page", pageName));
    }
    // </editor-fold>
}*/