Feature: Cucumber tests with excel file

  @wip
  Scenario Outline: Login Test with excel file
    Given The user is on the login page
    When The user logins with valid credentials "Your Email" and "Password" from excel file "<path>", "<sheetName>",<rowNumber>
    Then The user should be able to login
    Then Verify that "Your Name" is visible on dashboard page with excel file "<path>", "<sheetName>",<rowNumber>
    Examples:
      | path                              | sheetName | rowNumber |
      | src/test/resources/LoginList.xlsx | QaTeam1   | 2         |
      | src/test/resources/LoginList.xlsx | QaTeam2   | 3         |
      | src/test/resources/LoginList.xlsx | QaTeam3   | 0         |
      | src/test/resources/LoginList.xlsx | QaTeam3   | 4         |
      | src/test/resources/LoginList.xlsx | QaTeam2   | 7         |

