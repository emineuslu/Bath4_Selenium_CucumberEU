@regression
Feature: Add Education Tests

  Scenario: Add education form labels test
    Given The user is on the login page
    When The user logs in with valid credentials "mgezer@gmail.com" and "Mg12345678"
    Then Verify that the username on the dashboard page is "Melih Gezer"
    When The user should be able to navigate Tabs and Modules with "Melih Gezer" and "My Profile"
    And The user should be able navigate User Profile Page Tabs with "Add Education"
    Then The user should be able to see following labels at the Add Education Form
      | School or Bootcamp *    |
      | Degree or Certificate * |
      | Study                   |
      | From Date               |
      |                         |
      | To Date                 |
      | Program Description     |


  Scenario: Add education form labels test_1
    Given The user is on the login page
    When The user logs in with valid credentials "mgezer@gmail.com" and "Mg12345678"
    Then Verify that the username on the dashboard page is "Melih Gezer"
    When The user should be able to navigate Tabs and Modules with "Melih Gezer" and "My Profile"
    And The user should be able navigate User Profile Page Tabs with "Add Education"
    Then The user should be able to see following labels at the Add Education Form_second
      | School or Bootcamp *    |
      | Degree or Certificate * |
      | Study                   |
      | From Date               |
      | To Date                 |
      | Program Description     |

  @wip
  Scenario Outline: Add education form test with scenario outline
    Given The user is on the login page
    When The user logs in with valid credentials "<userEmail>" and "<password>"
    Then Verify that the username on the dashboard page is "<username>"
    When The user should be able to navigate Tabs and Modules with "<tabName>" and "<moduleName>"
    And The user should be able navigate User Profile Page Tabs with "<userProfileTabName>"
    Then The user should be able to see following labels at the Add Education Form_second
      | School or Bootcamp *    |
      | Degree or Certificate * |
      | Study                   |
      | From Date               |
      | To Date                 |
      | Program Description     |
    When The user fills the education form with "<school>", "<degree>", "<study>", "<fromDate>", "<toDate>", "<description>"
    Then The user should be able to see last added record with "<school>"
    And The user should be able to delete last added record with "<school>"
    Examples:
      | userEmail        | password   | username    | tabName     | moduleName | userProfileTabName | school | degree | study    | fromDate | toDate   | description  |
      | mgezer@gmail.com | Mg12345678 | Melih Gezer | Melih Gezer | My Profile | Add Education      | Gazi   | first  | Finance  | 11112012 | 02022020 | Easy Program |
      | jhon@test.com    | Test123456 | Jhon Nash   | Jhon Nash   | My Profile | Add Education      | İTÜ    | second | Engineer | 11112012 | 02022020 | Hard Program |