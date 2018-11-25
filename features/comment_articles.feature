Feature: Comment on articles
  
    As a visitor
    In order to opinionate on an article
    I would like to be able to add a comment to an article

  Background:
    Given the following articles exist
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
    And I visit the site

  Scenario: Comment on an article - with an email [Happy path]
    When I click "Show"
    And I fill in "Name" with "John Doe"
    And I fill in "Comment" with "This is dope!"
    And I fill in "Email" with "johndoe@hotmail.com"
    And I click "Add comment"
    Then I should see "John Doe"
    And I should see "This is dope!"
    And I should see "johndoe@hotmail.com"

  Scenario: Comment on an article - without an email [Happy path]
    When I click "Show"
    And I fill in "Name" with "John Doe"
    And I fill in "Comment" with "This is dope!"
    And I click "Add comment"
    Then I should see "John Doe"
    And I should see "This is dope!"

  Scenario: Comment on an article without valid email [Sad path]
    When I click "Show"
    And I fill in "Name" with "John Doe"
    And I fill in "Comment" with "This is dope!"
    And I fill in "Email" with "johndoe@"
    And I click "Add comment"
    Then I should see "Email address is not valid"

# You should add a validation that makes sure that the email address is valid. 
# We don't want to display badly formatted emails, do we? ("thomas@gmail",  "bad prefix@random.com", etc)

# Visitors should be able to OPTIONALLY provide their email address  

# Another feature is to display the commenters link IF he has provided an address. 