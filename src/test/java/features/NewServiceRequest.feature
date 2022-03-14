@NewServiceRequest
Feature: New Service Request Popup
    In order to perform regression testing
    As a PFM User
    I want to have an ability to Validate New Service Request Popup

  Background:
    Given I Login with "SP2" user on PFM Vendor Portal

  @Ignore
  Scenario Outline:[PFM-4176] Verify the success message display on submitting new service popup
    Then I Check that the page "Overview" of PFM product is invoked
    When I Click on New Service Request button of PFM vendor portal
    And I Click outside the New Service Request Modal window on PFM vendor portal
    Then I Verify "New Service Request Sent" modal not displayed on "<overview_page_identifier>" page of PFM vendor portal
    When I Click on New Service Request button of PFM vendor portal
    And I Enter Customer Name "Automation Customer" Unit Number or VIN "12345" Unit Mileage "123" Service Location "SANGHA" on "<new_service_request_page_identifier>" page of PFM vendor portal
    And I Select Service Place "In-Shop" on "<new_service_request_page_identifier>" page of PFM vendor portal
    And I Enter Repair Details "Brake not working" on "<new_service_request_page_identifier>" page of PFM vendor portal
    And I Click on "Submit Service Request" button of PFM vendor portal
    And I Click "Close" button of PFM vendor portal
    Then I Verify success message with user name "Automation Customer" on submitting New service Request Popup is "displayed" on "<overview_page_identifier>" page of PFM vendor portal
  #Your new Service Request for New Auto Customer has been sent.
    When I Close the top error or success message bar of PFM vendor portal
    Then I Verify success message with user name "Automation Customer" on submitting New service Request Popup is "not displayed" on "<overview_page_identifier>" page of PFM vendor portal

    Examples:
      | overview_page_identifier | new_service_request_page_identifier |
      | Overview                 | New Service Request                 |

  Scenario Outline:[PFM-4565] Verify FIELD SENDING ERROR FIELD SENDING ERROR any free form field on the modal
    Then I Check that the page "<overview_page_identifier>" of PFM product is invoked
    When I Click on New Service Request button of PFM vendor portal
    Then I Check that the page "<new_service_request_page_identifier>" of PFM product is invoked
    And I Enter Customer Name "Automation Customer" Unit Number or VIN "12345" Unit Mileage "123" Service Location "SANGHA" on "<new_service_request_page_identifier>" page of PFM vendor portal
    And I Select Service Place "In-Shop" on "<new_service_request_page_identifier>" page of PFM vendor portal
  #QA-FAILED-SUBMISSION will give the error required for this testcase
    And I Enter Repair Details "QA-FAILED-SUBMISSION" on "<new_service_request_page_identifier>" page of PFM vendor portal
    And I Click on "Submit Service Request" button of PFM vendor portal
    Then I Verify error "Due to a network interruption we were unable to complete your submission. Please submit again." is displayed on "<new_service_request_page_identifier>" page of PFM vendor portal
    And I Enter Repair Details "Brake not working" on "<new_service_request_page_identifier>" page of PFM vendor portal
    And I Select the File type "Other" on "<new_service_request_page_identifier>" page of PFM vendor portal
    And I Upload "\\3.144.233.242\mis$\it_qual\QA_Team\Testing\Applications\PFM\Penske.JPG" file on "<new_service_request_page_identifier>" page of PFM vendor portal
    And I Click on "Submit Service Request" button of PFM vendor portal
    Then I Verify New Service Request Sent modal is displayed on "<overview_page_identifier>" page of PFM vendor portal

    Examples:
      | overview_page_identifier | new_service_request_page_identifier |
      | Overview                 | New Service Request                 |

  Scenario Outline:[PFM-7894] Verify the user Test the Footer Link
    Then I Check that the page "Overview" of PFM product is invoked
    When I Click on New Service Request button of PFM vendor portal
    Then I Check that the page "<new_service_request_page_identifier>" of PFM product is invoked
    When I Enter Customer Name "Automation Customer" Unit Number or VIN "12345" Unit Mileage "123" Service Location "SANGHA" on "<new_service_request_page_identifier>" page of PFM vendor portal
    Then I Verify Customer Name "Automation Customer" Unit Number or VIN "12345" Unit Mileage "123" get entered on "<new_service_request_page_identifier>" page of PFM vendor portal
    Then I Verify Service Location "SANGHA" get selected on "<new_service_request_page_identifier>" page of PFM vendor portal
    When I Select Service Place "In-Shop" on "<new_service_request_page_identifier>" page of PFM vendor portal
    Then I Verify Service Place "In-Shop" get selected on "<new_service_request_page_identifier>" page of PFM vendor portal
    When I Select the File type "Other" on "<new_service_request_page_identifier>" page of PFM vendor portal
    And I Upload "\\3.144.233.242\mis$\it_qual\QA_Team\Testing\Applications\PFM\Penske.JPG" file on "<new_service_request_page_identifier>" page of PFM vendor portal
    Then I Verify file is uploaded successfully on "<new_service_request_page_identifier>" page of PFM vendor portal
    When I Enter Repair Details "Test For Penske" on "<new_service_request_page_identifier>" page of PFM vendor portal
    Then I Verify Repair Details "Test For Penske" get entered on "<new_service_request_page_identifier>" page of PFM vendor portal
    When I Click on "Submit Service Request" button of PFM vendor portal
    Then I Verify "New Service Request Sent" modal displayed on "<overview_page_identifier>" page of PFM vendor portal
    #Step 5 to Step 14 need to verify manually

    Examples:
      | overview_page_identifier | new_service_request_page_identifier |
      | Overview                 | New Service Request                 |

  Scenario Outline:[PFM-7594] Verify the Add location selector feature in service request form_One location assigned
    Then I Check that the page "<overview_page_identifier>" of PFM product is invoked
    When I Click on New Service Request button of PFM vendor portal
    Then I Verify that "Service Location" field is displayed on "<new_service_request_page_identifier>" page of PFM vendor portal
    When I Select Service Location "SANGHA" on "<new_service_request_page_identifier>" page of PFM vendor portal
    Then I Verify Service Location "SANGHA" get selected on "<new_service_request_page_identifier>" page of PFM vendor portal

    Examples:
      | overview_page_identifier | new_service_request_page_identifier |
      | Overview                 | New Service Request                 |

  Scenario Outline:[PFM-7595] Verify the error message display when nothing is selected in Location selector
    Then I Check that the page "<overview_page_identifier>" of PFM product is invoked
    When I Click on New Service Request button of PFM vendor portal
    Then I Verify that "Service Location" field is displayed on "<new_service_request_page_identifier>" page of PFM vendor portal
    Then I Verify the field default to "Select a Location" on "<new_service_request_page_identifier>" page of PFM vendor portal
    When I Click on "Submit Service Request" button of PFM vendor portal
    Then I Verify Error message "Service Location is required." is displayed for "Service Location" field on "<new_service_request_page_identifier>" page of PFM vendor portal

    Examples:
      | overview_page_identifier | new_service_request_page_identifier |
      | Overview                 | New Service Request                 |

  Scenario Outline:[PFM-9343] Verify that "Submitted by" new column is added next to the Service Location column in Service Request screen.
    Then I Check that the page "<overview_page_identifier>" of PFM product is invoked
    When I Click on New Service Request button of PFM vendor portal
    Then I Check that the page "<new_service_request_page_identifier>" of PFM product is invoked
    When I Enter Customer Name "Automation Customer" Unit Number or VIN "12345" Unit Mileage "123" Service Location "SANGHA" on "<new_service_request_page_identifier>" page of PFM vendor portal
    And  I Select Service Place "In-Shop" on "<new_service_request_page_identifier>" page of PFM vendor portal
    And I Select the File type "Other" on "<new_service_request_page_identifier>" page of PFM vendor portal
    And I Upload "\\3.144.233.242\mis$\it_qual\QA_Team\Testing\Applications\PFM\Penske.JPG" file on "<new_service_request_page_identifier>" page of PFM vendor portal
    And  I Enter Repair Details "Test For Penske" on "<new_service_request_page_identifier>" page of PFM vendor portal
    And  I Click on "Submit Service Request" button of PFM vendor portal
    Then I Verify Customer Name "Automation Customer" is displayed on "<new_service_request_page_identifier>" page of PFM vendor portal
    Then I Verify that following columns are displayed in below order on "<new_service_request_page_identifier>" page of PFM vendor portal
      | Customer         |
      | Unit Number      |
      | Created Date     |
      | Repair Details   |
      | Service Location |
      | Submitted By     |
    Then I Verify that "Submitted By" new column is added next to the "Service Location" column on "<new_service_request_page_identifier>" page of PFM vendor portal
    Then I Verify that submitted person name is displayed under the "Submitted By" column on "<new_service_request_page_identifier>" page of PFM vendor portal
    Then I Verify that Sorting option is displayed for "Submitted By" column on "<new_service_request_page_identifier>" page of PFM vendor portal
    When I Click on Sort icon in "Submitted By" column on "<new_service_request_page_identifier>" page of PFM vendor portal
    Then I Verify Sorting result is displayed and starting from last name on "<new_service_request_page_identifier>" page of PFM vendor portal

    Examples:
      | overview_page_identifier | new_service_request_page_identifier |
      | Overview                 | New Service Request                 |
