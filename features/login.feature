Feature: BIM360 Field Web Login

  Scenario: Login BIM360 Field Web website with right account
    Given I navigate to "https://bim360field-qa.autodesk.com" Field Web page
    And I enter "fei.zhang@autodesk.com" as username in "login" field
    And I enter "Autodesk2" as password in "password" field
    And I click "login_button" button and i should see "issue_summary_graph" in Home page