Feature: Task cycle
  Scenario: MyScenario for working with task
    Given Log in as "tester1"
      And Click on CreateTask button on the top
     When Fill the form with info from "MyTask"
      And Submit created task
      And Open Task List
    Then Task List contains "MyTask"
    And Log out
    Given Log in as "dev1"
      And Open Task List
    Then Task List contains "MyTask"
    Given Open "MyTask" review
      And Task fields contain information from "MyTask"
    Then Change "MyTask" status to "resolved" by "dev1"
    And Click on "Change Status To:" button
    And Click on "Resolve Issue" button at Task Solution Form
    And Log out
    Given Log in as "lead1"
      And Open Task List
    Then Task List contains "MyTask"
    Given Open "MyTask" review
    Then Change "MyTask" status to "closed" by "lead1"
    And Click on "Change Status To:" button
     When Change responsibility to "lead1"
    Then Click on "Close Issue" button at Task Solution Form
    Given Open Review Page
    And Click on "Recently Modified (30 Days)"
    Then Task List contains "MyTask"

