Feature: Superadmin impersonate operator
    Superadmin should be able to do a partial search of operators
    Superadmin should be able to select the operator found in quick search 


Scenario: Superadmin searches for an operator and log in as operator
    Given I log in as Superadmin
    And I Search for 'Green Operat'
    Then the quick search result shows 'Green Operator'
    And I click on quick search result
    Then I will see the operator page