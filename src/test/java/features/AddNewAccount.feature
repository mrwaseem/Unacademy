@SPMUser @SupportMode @AddNewAccount
Feature: Search For An Account
    In order to perform regression testing
    As a SPM User
    I want to have an ability to Validate Add New Account page

  Background:
    Given I Login with "SPM" user on PFM Vendor Portal

  Scenario Outline: [PFM-5590] Support Mode Verify the functionality of fields available under Location Physical Address section
    Then I Check the page "Support Mode" of PFM product is "invoked"
    Then I Verify "+ Add New Account" button is displayed on "<support_mode_page_identifier>" page of PFM vendor portal
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    Then I Verify Back arrow is displayed on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify "Location Name / DBA" field label is displayed under "Location Physical Address" section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Field box is displayed on next to "Location Name / DBA" field label under "Location Physical Address" section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Click on "Create Account" button of PFM vendor portal
    Then I Verify error message "This field is required." is displayed for Location Name DBA under Location Physical Address on "<add_new_service_provider_page_identifier>" Page of PFM vendor portal
    When I Enter 51characters "TestDataDBTestDataDBTestDataDBTestDataDBTestDataDBT" in "Location Name / DBA" field box under "Location Physical Address" on "<add_new_service_provider_page_identifier>" Page of PFM vendor portal
    Then I Verify 50characters "TestDataDBTestDataDBTestDataDBTestDataDBTestDataDB" get entered on "Location Name / DBA" field box under "Location Physical Address" on "<add_new_service_provider_page_identifier>" Page of PFM vendor portal
    Then I Verify Field Input box is displayed on next to "Store ID" field label under "Location Physical Address" section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter 11characters "12345678900" in "Store ID" field box under "Location Physical Address" on "<add_new_service_provider_page_identifier>" Page of PFM vendor portal
    Then I Verify 11characters "12345678900" get entered on "Store ID" field box under "Location Physical Address" on "<add_new_service_provider_page_identifier>" Page of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier |
      | Support Mode                 | Add New Service Provider                 |

  Scenario Outline: [PFM-7890] Verify that Error Message is not displayed for selected one offers in Location service offering section.
    Then I Check the page "Support Mode" of PFM product is "invoked"
    Then I Verify "+ Add New Account" button is displayed on "<support_mode_page_identifier>" page of PFM vendor portal
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    When I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" get entered Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" get entered Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "<Service_Type>" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "<Service_Type>" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" get entered Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Click on "Create Account" button of PFM vendor portal
    Then I Verify Error message "At least one service type is required." is not displayed in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode | First_Name | Last_Name | Title     | Phone_Number_Type_Primary_User | Phone_Number_Primary_User | Email_Address_Primary_User     | Service_Type |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   | NewUser    | LastAuto  | TitleAuto | Other                          | 223-344-5588              | testPrimary.company@penske.com | Service      |

  Scenario Outline: [PFM-7891] Verify that Error Message is not displayed for selected more than one offers in Location service offering section.
    Then I Check the page "Support Mode" of PFM product is "invoked"
    Then I Verify "+ Add New Account" button is displayed on "<support_mode_page_identifier>" page of PFM vendor portal
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    When I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" get entered Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" get entered Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Service" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Service" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Parts" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Parts" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" get entered Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Click on "Create Account" button of PFM vendor portal
    Then I Verify Error message "At least one service type is required." is not displayed in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode | First_Name | Last_Name | Title     | Phone_Number_Type_Primary_User | Phone_Number_Primary_User | Email_Address_Primary_User     |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   | NewUser    | LastAuto  | TitleAuto | Other                          | 223-344-5588              | testPrimary.company@penske.com |

  Scenario Outline: [PFM-8234] Verify that error message is displayed when user save without completing all required fields on Add Parts Payment modal
    Then I Check the page "Support Mode" of PFM product is "invoked"
    Then I Verify "+ Add New Account" button is displayed on "<support_mode_page_identifier>" page of PFM vendor portal
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    When I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" get entered Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" get entered Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Parts" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Parts" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" get entered Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Click on "Create Account" button of PFM vendor portal
    Then I Verify Account is created successfully on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Enter Account Name "<Location_Name>" on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify account name "<Location_Name>" get entered on Account name field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Search for Account" button of PFM vendor portal
    Then I Verify account name "<Location_Name>" is displayed on the search result on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Log In" button on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Check the page "Overview" of PFM product is "invoked"
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    When I Click on "Add OEMs" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "OEM Affiliations" section is displayed on "<parts_information_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Yes" option is displayed under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    Then I Verify "No" option is displayed under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Click on the "Yes" option under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    Then I Verify OEMs Affiliation list is displayed in Collapsed state under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Click on the "+" indicator for "Show 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section on "<parts_information_page_identifier>" page of PFM vendor portal
    And I Check the "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section on "<parts_information_page_identifier>" page of PFM vendor portal
    Then I Verify "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section is selected on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Select "Dealer/Distributor" Radio button under "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section on "<parts_information_page_identifier>" page of PFM vendor portal
    Then I Verify "Dealer/Distributor" Radio button under "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section is selected on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Click "Finish Parts Information" button of PFM vendor portal
    Then I Verify Successful toasted message is displayed in top of the screen on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    When I Click on "Add Payment Type" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Add Parts Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify Error Message "Payment type is required." is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "Virtual Pay" from Select Payment Type dropdown on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtual Pay Email Address" and Batch field with "Yes" and "No" buttons is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify Error Message "Virtual pay email is required" for Virtual Pay is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify Error Message "Batch is required." for Virtual Pay is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "National Account" from Select Payment Type dropdown on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify Error Message "Accounts payable number is required." for account payable number is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "ACH" from Select Payment Type dropdown on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify Error Message "Accounts payable number is required." for account payable number is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode | First_Name | Last_Name | Title     | Phone_Number_Type_Primary_User | Phone_Number_Primary_User | Email_Address_Primary_User | parts_information_page_identifier |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   | NewUser    | LastAuto  | TitleAuto | Other                          | 223-344-5588              | testPrimary                | Parts Information                 |

  Scenario Outline: [PFM-8235] Verify that error message is displayed when user save without completing all required fields on Add Tires Payment modal
    Then I Check the page "Support Mode" of PFM product is "invoked"
    Then I Verify "+ Add New Account" button is displayed on "<support_mode_page_identifier>" page of PFM vendor portal
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    When I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" get entered Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" get entered Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Tires" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Tires" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Parts" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Parts" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" get entered Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Click on "Create Account" button of PFM vendor portal
    Then I Verify Account is created successfully on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Enter Account Name "<Location_Name>" on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify account name "<Location_Name>" get entered on Account name field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Search for Account" button of PFM vendor portal
    Then I Verify account name "<Location_Name>" is displayed on the search result on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Log In" button on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Check the page "Overview" of PFM product is "invoked"
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    When I Click on "Add OEMs" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "OEM Affiliations" section is displayed on "<parts_information_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Yes" option is displayed under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    Then I Verify "No" option is displayed under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Click on the "Yes" option under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    Then I Verify OEMs Affiliation list is displayed in Collapsed state under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Click on the "+" indicator for "Show 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section on "<parts_information_page_identifier>" page of PFM vendor portal
    And I Check the "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section on "<parts_information_page_identifier>" page of PFM vendor portal
    Then I Verify "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section is selected on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Select "Dealer/Distributor" Radio button under "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section on "<parts_information_page_identifier>" page of PFM vendor portal
    Then I Verify "Dealer/Distributor" Radio button under "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section is selected on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Click "Finish Parts Information" button of PFM vendor portal
    Then I Verify Successful toasted message is displayed in top of the screen on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    When I Click on "Add Payment Type" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Add Parts Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify Error Message "Payment type is required." is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "Virtual Pay" from Select Payment Type dropdown on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtual Pay Email Address" and Batch field with "Yes" and "No" buttons is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify Error Message "Virtual pay email is required" for Virtual Pay is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify Error Message "Batch is required." for Virtual Pay is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "National Account" from Select Payment Type dropdown on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify Error Message "Accounts payable number is required." for account payable number is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "ACH" from Select Payment Type dropdown on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify Error Message "Accounts payable number is required." for account payable number is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode | First_Name | Last_Name | Title     | Phone_Number_Type_Primary_User | Phone_Number_Primary_User | Email_Address_Primary_User | parts_information_page_identifier |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   | NewUser    | LastAuto  | TitleAuto | Other                          | 223-344-5588              | testPrimary                | Parts Information                 |

  Scenario Outline: [PFM-8237] Verify that when user clicks on save button on Add Tire Payment type modal, the updates are reflected on the Penske Tools landing page
    Then I Check the page "Support Mode" of PFM product is "invoked"
    Then I Verify "+ Add New Account" button is displayed on "<support_mode_page_identifier>" page of PFM vendor portal
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    When I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" get entered Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" get entered Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Tires" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Tires" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Parts" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Parts" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" get entered Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Click on "Create Account" button of PFM vendor portal
    Then I Verify Account is created successfully on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Enter Account Name "<Location_Name>" on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify account name "<Location_Name>" get entered on Account name field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Search for Account" button of PFM vendor portal
    Then I Verify account name "<Location_Name>" is displayed on the search result on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Log In" button on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Check the page "Overview" of PFM product is "invoked"
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    When I Click on "Add OEMs" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "OEM Affiliations" section is displayed on "<parts_information_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Yes" option is displayed under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    Then I Verify "No" option is displayed under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Click on the "Yes" option under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    Then I Verify OEMs Affiliation list is displayed in Collapsed state under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Click on "+" indicator for "Show Tires & Wheels" section on "<parts_information_page_identifier>" page of PFM vendor portal
    And I Check the "Bridgestone (USA)" check box under "Hide Tires & Wheels" section on "<parts_information_page_identifier>" page of PFM vendor portal
    Then I Verify "Bridgestone (USA)" check box under "Hide Tires & Wheels" section is selected on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Select "Dealer/Distributor" Radio button under "Bridgestone (USA)" check box under "Hide Tires & Wheels" section on "<parts_information_page_identifier>" page of PFM vendor portal
    Then I Verify "Dealer/Distributor" Radio button under "Bridgestone (USA)" check box under "Hide Tires & Wheels" section is selected on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Click "Finish Parts Information" button of PFM vendor portal
    Then I Verify Successful toasted message is displayed in top of the screen on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    When I Click on "Add Payment Type" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Add Tires Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "Virtual Pay" from Select Payment Type dropdown on "Add Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtual Pay Email Address" and Batch field with "Yes" and "No" buttons is displayed on "Add Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Enter "Virtualpay11@gmail.com" on Virtual Pay Email Address field on "Add Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtualpay11@gmail.com" is appear entered on Virtual Pay Email Address field on "Add Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "Yes" option under Batch? field on "Add Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Yes" button of Batch field is selected on "Add Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify Virtual Pay Email Address "Virtualpay11@gmail.com" under "Tires" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Yes" button of Batch field under "Tires" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "National Account" from Select Payment Type dropdown on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Enter "334455667788" on Accounts Payable Number field on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "334455667788" on Account Payable Number field get entered on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify "334455667788" under "Tires" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "ACH" from Select Payment Type dropdown on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Enter "11223344" on Accounts Payable Number field on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "11223344" on Account Payable Number field get entered on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify "11223344" under "Tires" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode | First_Name | Last_Name | Title     | Phone_Number_Type_Primary_User | Phone_Number_Primary_User | Email_Address_Primary_User | parts_information_page_identifier |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   | NewUser    | LastAuto  | TitleAuto | Other                          | 223-344-5588              | testPrimary                | Parts Information                 |

  Scenario Outline: [PFM-8238] Verify that when user clicks on save button on Add Parts Payment type modal, the updates are reflected on the Penske Tools landing page
    Then I Check the page "Support Mode" of PFM product is "invoked"
    Then I Verify "+ Add New Account" button is displayed on "<support_mode_page_identifier>" page of PFM vendor portal
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    When I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" get entered Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" get entered Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Tires" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Tires" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Parts" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Parts" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" get entered Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Click on "Create Account" button of PFM vendor portal
    Then I Verify Account is created successfully on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Enter Account Name "<Location_Name>" on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify account name "<Location_Name>" get entered on Account name field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Search for Account" button of PFM vendor portal
    Then I Verify account name "<Location_Name>" is displayed on the search result on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Log In" button on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Check the page "Overview" of PFM product is "invoked"
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    When I Click on "Add OEMs" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "OEM Affiliations" section is displayed on "<parts_information_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Yes" option is displayed under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    Then I Verify "No" option is displayed under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Click on the "Yes" option under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    Then I Verify OEMs Affiliation list is displayed in Collapsed state under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Click on "+" indicator for "Show 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section on "<parts_information_page_identifier>" page of PFM vendor portal
    And I Check the "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section on "<parts_information_page_identifier>" page of PFM vendor portal
    Then I Verify "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section is selected on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Select "Dealer/Distributor" Radio button under "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section on "<parts_information_page_identifier>" page of PFM vendor portal
    Then I Verify "Dealer/Distributor" Radio button under "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section is selected on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Click "Finish Parts Information" button of PFM vendor portal
    Then I Verify Successful toasted message is displayed in top of the screen on "<parts_information_page_identifier>" Page of of PFM vendor portal
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    When I Click on "Add Payment Type" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Add Parts Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    When I Select "Virtual Pay" from Select Payment Type dropdown on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtual Pay Email Address" and Batch field with "Yes" and "No" buttons is displayed on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Enter "Virtualpay11@gmail.com" on Virtual Pay Email Address field on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtualpay11@gmail.com" is appear entered on Virtual Pay Email Address field on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "Yes" option under Batch? field on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Yes" button of Batch field is selected on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify Virtual Pay Email Address "Virtualpay11@gmail.com" under "Parts" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Yes" button of Batch field under "Parts" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "National Account" from Select Payment Type dropdown on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Enter "334455667788" on Accounts Payable Number field on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "334455667788" on Account Payable Number field get entered on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify "334455667788" under "Parts" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "ACH" from Select Payment Type dropdown on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Enter "11223344" on Accounts Payable Number field on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "11223344" on Account Payable Number field get entered on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify "11223344" under "Parts" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode | First_Name | Last_Name | Title     | Phone_Number_Type_Primary_User | Phone_Number_Primary_User | Email_Address_Primary_User | parts_information_page_identifier |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   | NewUser    | LastAuto  | TitleAuto | Other                          | 223-344-5588              | testPrimary                | Parts Information                 |

  Scenario Outline: [PFM-8246] Verify that No Payment Type previously entered in Service Payment Type Penske Tool screen.
    Then I Check the page "Support Mode" of PFM product is "invoked"
    Then I Verify "+ Add New Account" button is displayed on "<support_mode_page_identifier>" page of PFM vendor portal
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    When I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" get entered Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" get entered Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Service" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Service" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Towing" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Towing" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Collision" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Collision" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" get entered Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Click on "Create Account" button of PFM vendor portal
    Then I Verify Account is created successfully on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Enter Account Name "<Location_Name>" on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify account name "<Location_Name>" get entered on Account name field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Search for Account" button of PFM vendor portal
    Then I Verify account name "<Location_Name>" is displayed on the search result on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Log In" button on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Check the page "Overview" of PFM product is "invoked"
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    Then I Verify that "Service" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Add Payment Type" button is displayed under "Service" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Add Payment Type" button is displayed in default state under "Service" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Add Payment Type" button under "Service" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Add Service Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that following options is displayed when user click on the dropdown field for service on "Add Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
      | Virtual Pay      |
      | National Account |
      | ACH              |
      | Check            |
      | PCard            |
    When I Select "Virtual Pay" from Select Payment Type dropdown for service on "Add Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtual Pay Email Address" field is displayed for service on "Add Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "National Account" from Select Payment Type dropdown for service on "Add Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed for service on "Add Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "ACH" from Select Payment Type dropdown for service on "Add Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed for service on "Add Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "Check" from Select Payment Type dropdown for service on "Add Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed for service on "Add Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Cancel" button of PFM vendor portal
    When I Click on "Add Payment Type" button under "Service" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Click on "Save" button of PFM vendor portal
    Then I Verify Error Message "Payment type is required." for service is displayed on "Add Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode | First_Name | Last_Name | Title     | Phone_Number_Type_Primary_User | Phone_Number_Primary_User | Email_Address_Primary_User |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   | NewUser    | LastAuto  | TitleAuto | Other                          | 223-344-5588              | testPrimary                |

  Scenario Outline: [PFM-8247] Verify that Editing the Payment Type previously entered in Service Payment Type- Penske Tool screen.
    Then I Check the page "Support Mode" of PFM product is "invoked"
    Then I Verify "+ Add New Account" button is displayed on "<support_mode_page_identifier>" page of PFM vendor portal
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    When I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" get entered Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" get entered Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Service" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Service" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Towing" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Towing" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Collision" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Collision" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" get entered Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Click on "Create Account" button of PFM vendor portal
    Then I Verify Account is created successfully on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Enter Account Name "<Location_Name>" on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify account name "<Location_Name>" get entered on Account name field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Search for Account" button of PFM vendor portal
    Then I Verify account name "<Location_Name>" is displayed on the search result on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Log In" button on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Check the page "Overview" of PFM product is "invoked"
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    Then I Verify that "Service" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Add Payment Type" button is displayed under "Service" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Add Payment Type" button is displayed in default state under "Service" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Add Payment Type" button under "Service" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Add Service Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that following options is displayed when user click on the dropdown field for service on "Add Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
      | Virtual Pay      |
      | National Account |
      | ACH              |
      | Check            |
      | PCard            |
    When I Select "Virtual Pay" from Select Payment Type dropdown for service on "Add Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Enter "Virtualpay13@gmail.com" on Virtual Pay Email Address field for service on "Add Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Click on "Save" button of PFM vendor portal
    Then I Verify "Virtualpay13@gmail.com" under "Service" section for service is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Service" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtual Pay" option is appear selected for service on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtualpay13@gmail.com" is appear entered on Virtual Pay Email Address field for service on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on the X on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Service Payment" modal is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Service" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtual Pay" option is appear selected for service on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtualpay13@gmail.com" is appear entered on Virtual Pay Email Address field for service on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on Escape button on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Service Payment" modal is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Service" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtual Pay" option is appear selected for service on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtualpay13@gmail.com" is appear entered on Virtual Pay Email Address field for service on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click outside the "Edit Service Payment" modal window on "<support_mode_page_identifier>" page of PFM vendor portal
    Then I Verify "Edit Service Payment" modal is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Service" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtual Pay" option is appear selected for service on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtualpay13@gmail.com" is appear entered on Virtual Pay Email Address field for service on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Cancel" button of PFM vendor portal
    Then I Verify "Edit Service Payment" modal is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Service" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtual Pay" option is appear selected for service on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtualpay13@gmail.com" is appear entered on Virtual Pay Email Address field for service on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "National Account" from Select Payment Type dropdown for service on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "National Account" option is appear selected for service on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Enter "34567689" on Accounts Payable Number field for service on "Edit Service Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button of PFM vendor portal
    Then I Verify Toast message "Payment Type Updated" is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "34567689" under "Service" section for service is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode | First_Name | Last_Name | Title     | Phone_Number_Type_Primary_User | Phone_Number_Primary_User | Email_Address_Primary_User |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   | NewUser    | LastAuto  | TitleAuto | Other                          | 223-344-5588              | testPrimary                |

  Scenario Outline: [PFM-8221] Verify functionality of editing Parts or Tires Payment Type previously entered
    Then I Check the page "Support Mode" of PFM product is "invoked"
    Then I Verify "+ Add New Account" button is displayed on "<support_mode_page_identifier>" page of PFM vendor portal
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    When I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" get entered Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" get entered Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Tires" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Tires" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Parts" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Parts" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" get entered Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Click on "Create Account" button of PFM vendor portal
    Then I Verify Account is created successfully on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Enter Account Name "<Location_Name>" on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify account name "<Location_Name>" get entered on Account name field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Search for Account" button of PFM vendor portal
    Then I Verify account name "<Location_Name>" is displayed on the search result on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Log In" button on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Check the page "Overview" of PFM product is "invoked"
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    Then I Verify that "Parts" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Tires" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Add OEMs" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Click on the "Yes" option under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    And I Click on "+" indicator for "Show 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section on "<parts_information_page_identifier>" page of PFM vendor portal
    And I Check the "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section on "<parts_information_page_identifier>" page of PFM vendor portal
    And I Select "Dealer/Distributor" Radio button under "Aurora Parts & Accessories" check box under "Hide 5th Wheel, Trailer, Truck Bodies & Tow Dollies" section on "<parts_information_page_identifier>" page of PFM vendor portal
    And  I Click on "Finish Parts Information" button of PFM vendor portal
    And I Navigate to the "Penske Tools" page of PFM vendor portal
    And I Click on "Add Payment Type" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Select "Virtual Pay" from Select Payment Type dropdown on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Enter "Virtualpay13@gmail.com" on Virtual Pay Email Address field on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Select "Yes" option under Batch? field on "Add Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Click on "Save" button of PFM vendor portal
    And I Click on "Add OEMs" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Click on the "Yes" option under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    And I Click on "+" indicator for "Show Tires & Wheels" section on "<parts_information_page_identifier>" page of PFM vendor portal
    And I Check the "Bridgestone (USA)" check box under "Hide Tires & Wheels" section on "<parts_information_page_identifier>" page of PFM vendor portal
    And I Select "Dealer/Distributor" Radio button under "Bridgestone (USA)" check box under "Hide Tires & Wheels" section on "<parts_information_page_identifier>" page of PFM vendor portal
    And  I Click on "Finish Parts Information" button of PFM vendor portal
    And I Navigate to the "Penske Tools" page of PFM vendor portal
    And I Click on "Add Payment Type" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Select "Virtual Pay" from Select Payment Type dropdown on "Add Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Enter "Virtualpay13@gmail.com" on Virtual Pay Email Address field on "Add Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Select "Yes" option under Batch? field on "Add Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Click on "Save" button of PFM vendor portal
    Then I Verify "Edit Payment Type" button under "Parts" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Parts Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "National Account" from Select Payment Type dropdown on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Enter "34567689" on Accounts Payable Number field on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Click "Save" button of PFM vendor portal
    Then I Verify Toast message "Payment Type Updated" is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "34567689" under "Parts" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Parts Payment" modal is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Tires Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "National Account" from Select Payment Type dropdown on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Enter "34567689" on Accounts Payable Number field on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Click "Save" button of PFM vendor portal
    Then I Verify Toast message "Payment Type Updated" is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "34567689" under "Tires" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Tires Payment" modal is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode | First_Name | Last_Name | Title     | Phone_Number_Type_Primary_User | Phone_Number_Primary_User | Email_Address_Primary_User | parts_information_page_identifier |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   | NewUser    | LastAuto  | TitleAuto | Other                          | 223-344-5588              | testPrimary                | Parts Information                 |

  Scenario Outline: [PFM-8259] Verify that Editing the Parts or Tires Payment Type previously entered in Penske Tool screen.
    Then I Check the page "Support Mode" of PFM product is "invoked"
    Then I Verify "+ Add New Account" button is displayed on "<support_mode_page_identifier>" page of PFM vendor portal
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    When I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" get entered Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" get entered Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Tires" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Parts" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" get entered Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Click on "Create Account" button of PFM vendor portal
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Enter Account Name "<Location_Name>" on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify account name "<Location_Name>" get entered on Account name field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Search for Account" button of PFM vendor portal
    Then I Verify account name "<Location_Name>" is displayed on the search result on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Log In" button on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Check the page "Overview" of PFM product is "invoked"
    When I Navigate to "Location Management" page of PFM vendor portal
    And I Click on "Finish" for "<Location_Name>" on "<Location_Management_page_identifier>" Page of PFM vendor portal
    And I Click on "Hours of Operation" Link under "Parts Information" Header Link on "<Onboard_Home_page_identifier>" page of PFM vendor portal
    And I Click on "+ Add hours" button of PFM vendor portal
    And I "check" check box for "All Days" on "<Parts_Hours_Page_identifier>" page of PFM vendor portal
    And I Enter "openTime" "2:15 PM" for following days on "<Parts_Hours_Page_identifier>" page of PFM vendor portal
      | sunday    |
      | monday    |
      | tuesday   |
      | wednesday |
      | thursday  |
      | friday    |
      | saturday  |
    And I Enter "closeTime" "3:30 PM" for following days on "<Parts_Hours_Page_identifier>" page of PFM vendor portal
      | sunday    |
      | monday    |
      | tuesday   |
      | wednesday |
      | thursday  |
      | friday    |
      | saturday  |
    And I Click on "Save hours" button of PFM vendor portal
    And I Click on "Continue" button of PFM vendor portal
    And I Click on the "No" option under OEMs Affiliation section on "<parts_information_page_identifier>" Page of of PFM vendor portal
    And I Click on "Finish Parts Information" button of PFM vendor portal
    And I Navigate to the "Penske Tools" page of PFM vendor portal
    And I Click on "Add Payment Type" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Select "Virtual Pay" from Select Payment Type dropdown on "Add Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Enter "Virtualpay11@gmail.com" on Virtual Pay Email Address field on "Add Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Click on "Save" button of PFM vendor portal
    And I Click on "Edit Payment Type" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtual Pay" option is appear selected on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "National Account" from Select Payment Type dropdown on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Enter "334455667788" on Accounts Payable Number field on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "334455667788" on Account Payable Number field get entered on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click "Save" button of PFM vendor portal
    Then I Verify Toast message "Payment Type Updated" is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "334455667788" under "Tires" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Tires Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify X is displayed in upper right on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on the X on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Tires Payment" modal is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Tires Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on Escape button on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Tires Payment" modal is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Tires Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click outside the "Edit Tires Payment" modal window on "<support_mode_page_identifier>" page of PFM vendor portal
    Then I Verify "Edit Tires Payment" modal is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Tires Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Cancel" button of PFM vendor portal
    Then I Verify "Edit Tires Payment" modal is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Tires" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Tires Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "National Account" option is appear selected on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "ACH" from Select Payment Type dropdown on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Enter "44678910" on Accounts Payable Number field on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "44678910" on Account Payable Number field get entered on "Edit Tires Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click "Save" button of PFM vendor portal
    Then I Verify Toast message "Payment Type Updated" is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And  I Select "Virtual Pay" from Select Payment Type dropdown on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Enter "Virtualpay11@gmail.com" on Virtual Pay Email Address field on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    And I Click "Save" button of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Virtual Pay" option is appear selected on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "National Account" from Select Payment Type dropdown on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Enter "5756756867876" on Accounts Payable Number field on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "5756756867876" on Account Payable Number field get entered on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click "Save" button of PFM vendor portal
    Then I Verify Toast message "Payment Type Updated" is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "5756756867876" under "Parts" section is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Parts Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify X is displayed in upper right on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on the X on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Parts Payment" modal is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Parts Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on Escape button on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Parts Payment" modal is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Parts Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Cancel" button of PFM vendor portal
    Then I Verify "Edit Parts Payment" modal is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit Payment Type" button under "Parts" section on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit Parts Payment" modal is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "National Account" option is appear selected on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "ACH" from Select Payment Type dropdown on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify that "Accounts Payable Number" field is displayed on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Enter "7878776666" on Accounts Payable Number field on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "7878776666" on Account Payable Number field get entered on "Edit Parts Payment" modal on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click "Save" button of PFM vendor portal
    Then I Verify Toast message "Payment Type Updated" is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode | First_Name | Last_Name | Title     | Phone_Number_Type_Primary_User | Phone_Number_Primary_User | Email_Address_Primary_User | parts_information_page_identifier | Location_Management_page_identifier | Onboard_Home_page_identifier | Parts_Hours_Page_identifier |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   | NewUser    | LastAuto  | TitleAuto | Other                          | 223-344-5588              | testPrimary                | Parts Information                 | Location Management                 | Onboard Home                 | Parts Hours                 |

  Scenario Outline: [PFM-7945] Verify the modal window display when the Single Use Provider is already selected
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    When I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" get entered Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I check "Single Use Service Provider" checkbox Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify "Single Use Service Provider" checkbox is checked Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I select "Other" option in Reason for Single Use SP dropdown Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify "Other" option in Reason for Single Use SP dropdown is selected Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" get entered Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Service" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Service" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Click on "Create Account" button of PFM vendor portal
    Then I Verify Account is created successfully on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Account Name "<Location_Name>" on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify account name "<Location_Name>" get entered on Account name field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Search for Account" button of PFM vendor portal
    Then I Verify account name "<Location_Name>" is displayed on the search result on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Log In" button on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Check the page "Overview" of PFM product is "invoked"
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    Then I Verify "Single Use Provider" field is displayed with "Yes" along with "Other" on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit" icon is displayed beside the Single Use Provider field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit" icon beside the Single Use Provider field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Reason for Single Use SP" dropdown is displayed on modal window on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "Emergency Service" option on "Reason for Single Use SP" dropdown on modal window on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Emergency Service" option is get selected on "Reason for Single Use SP" dropdown on modal window on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Cancel" button of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit" icon beside the Single Use Provider field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I click on x icon on modal window on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit" icon beside the Single Use Provider field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click anywhere outside of the modal window on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit" icon beside the Single Use Provider field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on the Escape key button of keyboard on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit" icon beside the Single Use Provider field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Select "Emergency Service" option on "Reason for Single Use SP" dropdown on modal window on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Save" button on modal window on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Emergency Service" is displayed under "Single Use Provider" field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   |

  Scenario Outline: [PFM-7946] Verify the modal window display when the Single Use Provider is not selected
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    When I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" get entered Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify "Single Use Service Provider" checkbox is unchecked Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" get entered Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Select "Service" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify service offer "Service" is appear selected on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" get entered Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Click on "Create Account" button of PFM vendor portal
    Then I Verify Account is created successfully on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter Account Name "<Location_Name>" on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify account name "<Location_Name>" get entered on Account name field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Search for Account" button of PFM vendor portal
    Then I Verify account name "<Location_Name>" is displayed on the search result on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Log In" button on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Check the page "Overview" of PFM product is "invoked"
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    Then I Verify "Single Use Provider" field is displayed with "No" option on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Edit" icon is displayed beside the Single Use Provider field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit" icon beside the Single Use Provider field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Reason for Single Use SP" dropdown is not displayed on modal window on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Cancel" button of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit" icon beside the Single Use Provider field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I click on x icon on modal window on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit" icon beside the Single Use Provider field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click anywhere outside of the modal window on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Edit" icon beside the Single Use Provider field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on the Escape key button of keyboard on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify "Single Use Provider?" modal window is not displayed on "<support_mode_page_identifier>" Page of of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode | First_Name | Last_Name | Title     | Phone_Number_Type_Primary_User | Phone_Number_Primary_User | Email_Address_Primary_User | Service_Type |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   | NewUser    | LastAuto  | TitleAuto | Other                          | 223-344-5588              | testPrimary.company        | Service      |

  Scenario Outline: [PFM-7755] Verify that Parts option should be present in the location Phone Number Types and should be in order Billing Parts and Service on Add service Provider page in support mode
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    Then I Verify that "Parts" option is present in the "Phone Number" type dropdown on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify the order of following displayed in the "Phone Number" type dropdown on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
      | Billing |
      | Parts   |
      | Service |
    When I Select "Parts" Option in Phone Number type dropdown on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify "Parts" Option is selected in Phone Number type dropdown on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter "345" in the Phone Number text field on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify error message "Phone number needs to be in a valid format." is displayed on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter "3344558866" in the Phone Number text field on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify error message "Phone number needs to be in a valid format." is not displayed on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter "1" in the Phone Number text field on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify "1" is not get entered in the Phone Number text field on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Keep Phone Number text field as Blank on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Click on "Create Account" button of PFM vendor portal
    Then I Verify error message "This field is required." is displayed on "<add_new_service_provider_page_identifier>" page of PFM vendor portal

    Examples:
      | add_new_service_provider_page_identifier |
      | Add New Service Provider                 |

  Scenario Outline: [PFM-7756] Verify that Parts option should be present in the location Email Address Types and should be in order Billing Parts and Service on Add service Provider page in support mode
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    Then I Verify "Parts" option is present in the "Email Address" type dropdown on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify the order of following is displayed in the "Email Address" type dropdown on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
      | Billing |
      | Parts   |
      | Service |
    When I Select "Parts" Option in Email Address type dropdown on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify "Parts" Option is selected in Email Address type dropdown on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter "prpr12!mail.com" on Email Address text field on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify error message "Email needs to be in a valid format" is displayed in red colour with red indicator icon on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Keep Email Address text field as Blank on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Click on "Cancel" button of PFM vendor portal
    And I Click on "+ Add New Account" button of PFM vendor portal
    And I Click on "Create Account" button of PFM vendor portal
    Then I Verify error message "This field is required." is displayed in red colour with red indicator icon on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Enter "prpr12@gmail.com" on Email Address text field on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify "prpr12@gmail.com" is get entered and no error message is displayed on Email Address text field on "<add_new_service_provider_page_identifier>" page of PFM vendor portal

    Examples:
      | add_new_service_provider_page_identifier |
      | Add New Service Provider                 |

  @Ignore
  Scenario Outline: [PFM-7768] Verify that Location Service Offerings section should be displayed on Edit Location screen and This location does not perform repairs checkbox option above Location Service Offerings section is not displayed from SPM Tools options
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Click on "+ Add New Account" button of PFM vendor portal
    And I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Select "Service" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Enter First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Click on "Create Account" button of PFM vendor portal
    And I Enter Account Name "<Location_Name>" on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify account name "<Location_Name>" get entered on Account name field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Search for Account" button of PFM vendor portal
    Then I Verify account name "<Location_Name>" is displayed on the search result on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Log In" button on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Check the page "Overview" of PFM product is "invoked"
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    When I Click on "Edit Location" button of PFM vendor portal
    Then I Check the page "Edit Location" of PFM product is "invoked"
    Then I Verify that Location Service Offerings section is displayed on "<Edit_Location_Page_identifier>" Page of of PFM vendor portal
    Then I Verify that text "Please select the types of service that are performed at this location." is displayed under Location Service Offerings section on "<Edit_Location_Page_identifier>" Page of of PFM vendor portal
    Then I Verify that following options are displayed under Location Service Offerings section on "<Edit_Location_Page_identifier>" Page of of PFM vendor portal
      | Service   |
      | Parts     |
      | Tires     |
      | Towing    |
      | Collision |
    Then I Verify "Service" option is appear selected on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    When I Select "Parts" option in Location service offering section on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    Then I Verify "Parts" option is appear selected on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    When I Select "Tires" option in Location service offering section on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    Then I Verify "Tires" option is appear selected on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    When I Select "Towing" option in Location service offering section on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    Then I Verify "Towing" option is appear selected on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    When I Select "Collision" option in Location service offering section on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    Then I Verify "Collision" option is appear selected on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    When I Select following options in Location service offering section on "<Edit_Location_Page_identifier>" page of PFM vendor portal
      | Service |
      | Parts   |
      | Tires   |
    Then I Verify that following options are selected under Location Service Offerings section on "<Edit_Location_Page_identifier>" Page of of PFM vendor portal
      | Service |
      | Parts   |
      | Tires   |

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode | Edit_Location_Page_identifier | First_Name | Last_Name | Title     | Phone_Number_Type_Primary_User | Phone_Number_Primary_User | Email_Address_Primary_User |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   | Edit Location Permissions     | NewUser    | LastAuto  | TitleAuto | Other                          | 223-344-5588              | testPrimary.company        |

  @Ignore
  Scenario Outline: [PFM-7769] Verify the functionality of deselecting the location offerings on edit location page from SPM Tools
    Then I Check the page "Support Mode" of PFM product is "invoked"
    When I Click on "+ Add New Account" button of PFM vendor portal
    And I Enter Company Name "<Company_Name>" Phone Number Type "<Phone_Number_Type>" Phone Number "<Phone_Number>" Email Address Type "<Email_Address_Type>" Email Address "<Email_Address>" SP Quick Notes "<SP_Quick_Notes>" Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Enter Location Name/DBA "<Location_Name>" Store ID "<Store_ID>" Street Address "<Street_Address>" Suite/Unit "<SuiteUnit>" Country "<Country>" City "<City>" State "<State>" ZipCode "<ZipCode>" Under Location Physical Address section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Select "Service" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Select "Parts" Service in Location service offering section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Enter First Name "<First_Name>" Last Name "<Last_Name>" Title "<Title>" Phone Number Type "<Phone_Number_Type_Primary_User>" Phone Number "<Phone_Number_Primary_User>" Email Address "<Email_Address_Primary_User>" Under Primary User Account section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Click on "Create Account" button of PFM vendor portal
    And I Enter Account Name "<Location_Name>" on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Verify account name "<Location_Name>" get entered on Account name field on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Search for Account" button of PFM vendor portal
    Then I Verify account name "<Location_Name>" is displayed on the search result on "<support_mode_page_identifier>" Page of of PFM vendor portal
    When I Click on "Log In" button on "<support_mode_page_identifier>" Page of of PFM vendor portal
    Then I Check the page "Overview" of PFM product is "invoked"
    When I Navigate to the "Penske Tools" page of PFM vendor portal
    Then I Check page "Penske Tools" of PFM product is invoked
    When I Click on "Edit Location" button of PFM vendor portal
    Then I Check the page "Edit Location" of PFM product is "invoked"
    When I deSelect "Service" option in Location service offering section on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    Then I Verify modal window "Remove Service Offering" is displayed on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    Then I Verify header text "By de-selecting this card, you are confirming that this location does not perform this service. Location data related to this offering will be deleted." is displayed on modal window on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    Then I Verify text "Are you sure you want to remove?" is displayed on modal window on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    Then I Verify that "Cancel" And "Confirm Removal" button is displayed on modal window on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    When I Click on "Confirm Removal" button of PFM vendor portal
    When I deSelect "Parts" option in Location service offering section on "<Edit_Location_Page_identifier>" page of PFM vendor portal
    Then I Verify error message is displayed "At least one service type is required." in Location service offering section on "<Edit_Location_Page_identifier>" page of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier | Company_Name | Phone_Number_Type | Phone_Number | Email_Address_Type | Email_Address           | SP_Quick_Notes | Location_Name        | Store_ID | Street_Address | SuiteUnit | Country | City       | State  | ZipCode | Edit_Location_Page_identifier | First_Name | Last_Name | Title     | Phone_Number_Type_Primary_User | Phone_Number_Primary_User | Email_Address_Primary_User |
      | Support Mode                 | Add New Service Provider                 | TestCompany  | Service           | 223-344-5566 | Service            | test.company@penske.com | TestPenske     | LocationNameAutoTest | 123      | TestAddress    | TestSuite | USA     | California | Alaska | 99501   | Edit Location Permissions     | NewUser    | LastAuto  | TitleAuto | Other                          | 223-344-5588              | testPrimary.company        |

  Scenario Outline: [PFM-7887] Verify Single Use Service Provider? indicator in available in Account Creation form
    Then I Check the page "Support Mode" of PFM product is "invoked"
    Then I Verify "+ Add New Account" button is displayed on "<support_mode_page_identifier>" page of PFM vendor portal
    When I Click on "+ Add New Account" button of PFM vendor portal
    Then I Check that page "Add New Account" of PFM product is invoked
    Then I Verify that "Single Use Service Provider?" is displayed with checkbox on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify that "i" icon is displayed with blue color circle next to the "Single Use Service Provider?" text on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    #Then I Verify that Help Text "Single Use Providers are those that are used one time for services performed outside of our normal network." is displayed when user Hover over on the "Single Use Service Provider" line text on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    #Then I Verify that Help Text is displayed when user Hover over on the "I" icon on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I check "Single Use Service Provider" checkbox Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify "Single Use Service Provider" checkbox is checked Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify "Reason for Single Use SP" dropdown is displayed Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify that "Select" are selected by default "Reason for Single Use SP" dropdown on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify that following value is displayed on "Reason for Single Use SP" dropdown on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
      | Emergency Service        |
      | Service Vehicle          |
      | Vehicle Held for Payment |
      | Warranty                 |
      | Other                    |
    When I select "Other" option in Reason for Single Use SP dropdown Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify that "Other" option is selected And Dropdown is close on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify that "No user account needed" checkbox is displayed in selected mode on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    When I Click on "Create Account" button of PFM vendor portal
    Then I Verify error message "This field is required." is not displayed for "Reason for Single Use SP" dropdown on "<add_new_service_provider_page_identifier>" Page of PFM vendor portal
    When I select "Emergency Service" option in Reason for Single Use SP dropdown Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Click on "Create Account" button of PFM vendor portal
    Then I Verify error message "This field is required." is not displayed for "Reason for Single Use SP" dropdown on "<add_new_service_provider_page_identifier>" Page of PFM vendor portal
    When I select "Service Vehicle" option in Reason for Single Use SP dropdown Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Click on "Create Account" button of PFM vendor portal
    Then I Verify error message "This field is required." is not displayed for "Reason for Single Use SP" dropdown on "<add_new_service_provider_page_identifier>" Page of PFM vendor portal
    When I select "Vehicle Held for Payment" option in Reason for Single Use SP dropdown Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Click on "Create Account" button of PFM vendor portal
    Then I Verify error message "This field is required." is not displayed for "Reason for Single Use SP" dropdown on "<add_new_service_provider_page_identifier>" Page of PFM vendor portal
    When I select "Warranty" option in Reason for Single Use SP dropdown Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    And I Click on "Create Account" button of PFM vendor portal
    Then I Verify error message "This field is required." is not displayed for "Reason for Single Use SP" dropdown on "<add_new_service_provider_page_identifier>" Page of PFM vendor portal
    When I uncheck "Single Use Service Provider" checkbox Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify "Single Use Service Provider" checkbox is unchecked Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify "Reason for Single Use SP" dropdown is not displayed Under Account & Location Information section on "<add_new_service_provider_page_identifier>" page of PFM vendor portal
    Then I Verify that "No user account needed" checkbox is displayed in deselected mode on "<add_new_service_provider_page_identifier>" page of PFM vendor portal

    Examples:
      | support_mode_page_identifier | add_new_service_provider_page_identifier |
      | Support Mode                 | Add New Service Provider                 |