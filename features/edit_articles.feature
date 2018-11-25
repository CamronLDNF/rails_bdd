Feature: Create articles
  
    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles

  Background:
    Given the following articles exist
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
    And I visit the site

  Scenario: Successfully update an article
    When I click "Edit"
    And I fill in "Title" with "New music"
    And I fill in "Content" with "Dance to Mambo nr 5"
    And I click "Update"
    Then I should see "Article was successfully updated."
    And I should see "New music"
    And I should see "Dance to Mambo nr 5"