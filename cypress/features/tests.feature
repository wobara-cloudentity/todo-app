Feature: Application Acceptance Tests

  Scenario: Add the dog
    Given I open application
    And I should see dogs table with 6 rows
    When I set breed to: "Chow Chow", nick to: "Brutus", price to: 100, Image URL to: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Example_image.svg/600px-Example_image.svg.png"
    And I click Add
    Then I should see dogs table with 7 rows
    And I should see dog with id: 7, breed "Chow Chow", nick "Brutus", price 100 in the table

  Scenario: Add the dog - try to set empty properties
    Given I open application
    And I should see dogs table with 6 rows
    When I clear all the fields
    And I click Add
    Then I should see dogs table with 6 rows

  Scenario: Add the dog - try to set negative price
    Given I open application
    And I should see dogs table with 6 rows
    When I set breed to: "Chow Chow", nick to: "Brutus", price to: -100, Image URL to: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Example_image.svg/600px-Example_image.svg.png"
    And I click Add
    Then I should see dogs table with 6 rows
    And I should not see dog with id: 7

  Scenario: Edit the dog
    Given I open application
    And I should see dogs table with 6 rows
    When I edit dog with id: 6
    And I set breed to: "Yorkshire", nick to: "Alfred", price to: 120, Image URL to: "https://1.bp.blogspot.com/-3uVnU7t6Q4g/Ucm8sEbsNCI/AAAAAAAAAEw/EiXXVIFXsd8/s1600/Psyb+rasy+York.jpg"
    And I click Update
    Then I should see dog with id: 6, breed "Yorkshire", nick "Alfred", price 120 in the table

  Scenario: Delete the dog
    Given I open application
    And I should see dogs table with 6 rows
    When I delete dog with id: 6
    Then I should see dogs table with 5 rows
    And I should not see dog with id: 6

  Scenario: Delete all the dogs
    Given I open application
    And I should see dogs table with 6 rows
    When I delete dog with id: 6
    And I delete dog with id: 5
    And I delete dog with id: 4
    And I delete dog with id: 3
    And I delete dog with id: 2
    And I delete dog with id: 1
    Then I should see dogs table with no data

  Scenario: Edit dog - try to set negative price
    Given I open application
    And I should see dogs table with 6 rows
    When I edit dog with id: 6
    And I set breed to: "CatzTookControl", nick to: "Meow", price to: -1, Image URL to: "https://i.etsystatic.com/37289211/r/il/bbcbdb/4205047365/il_570xN.4205047365_4m8i.jpg"
    And I click Update
    Then I should see dog with id: 6, breed "Basset", nick "Toko", price 300 in the table

  Scenario: Edit dog - try to make properties empty
    Given I open application
    When I edit dog with id: 6
    And I clear all the fields
    And I click Update
    Then I should see dog with id: 6, breed "Basset", nick "Toko", price 300 in the table

  Scenario: Edit dog - cancel update
    Given I open application
    And I should see dogs table with 6 rows
    When I edit dog with id: 6
    And I set breed to: "CatzTookControl", nick to: "Meow", price to: 100, Image URL to: "https://i.etsystatic.com/37289211/r/il/bbcbdb/4205047365/il_570xN.4205047365_4m8i.jpg"
    And I click Cancel
    Then I should see dog with id: 6, breed "Basset", nick "Toko", price 300 in the table


