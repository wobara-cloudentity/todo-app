Feature: Application Acceptance Tests

  Scenario: Add the dog
    Given I open application
    And I should see dogs table with 6 rows
    When I add the dog of breed "Chow Chow", nick "Brutus", price 100 and with image URL "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Example_image.svg/600px-Example_image.svg.png"
    Then I should see dogs table with 7 rows
    And I should see dog with id: 7, breed "Chow Chow", nick "Brutus", price 100 in the table

  Scenario: Add the dog - negative price
    Given I open application
    And I should see dogs table with 6 rows
    When I add the dog of breed "Chow Chow", nick "Brutus", price -100 and with image URL "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Example_image.svg/600px-Example_image.svg.png"
    Then I should see dogs table with 6 rows
    And I should not see dog with id: 7

  Scenario: Edit the dog
    Given I open application
    And I should see dogs table with 6 rows
    And I add the dog of breed "Corgi", nick "Albert", price 100 and with image URL "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Example_image.svg/600px-Example_image.svg.png"
    When I edit dog with id: 7 and set breed to: "Yorkshire", nick to: "Alfred", price to: 120, Image URL to: "https://1.bp.blogspot.com/-3uVnU7t6Q4g/Ucm8sEbsNCI/AAAAAAAAAEw/EiXXVIFXsd8/s1600/Psyb+rasy+York.jpg"
    Then I should see dog with id: 7, breed "Yorkshire", nick "Alfred", price 120 in the table

  Scenario: Delete the dog
    Given I open application
    And I should see dogs table with 6 rows
    And I add the dog of breed "Dachshund", nick "Bruno", price 150 and with image URL "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Example_image.svg/600px-Example_image.svg.png"
    And I should see dogs table with 7 rows
    When I delete dog with id: 7
    Then I should see dogs table with 6 rows
    And I should not see dog with id: 7

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

  Scenario: Edit dog - negative price
    Given I open application
    And I should see dogs table with 6 rows
    And I add the dog of breed "Pomeranian", nick "Otto", price 250 and with image URL "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Example_image.svg/600px-Example_image.svg.png"
    When I edit dog with id: 7 and set breed to: "CatzTookControl", nick to: "Meow", price to: 0, Image URL to: "https://i.etsystatic.com/37289211/r/il/bbcbdb/4205047365/il_570xN.4205047365_4m8i.jpg"
    Then I should see dog with id: 7, breed "CatzTookControl", nick "Meow", price 0 in the table

  Scenario: Edit dog - make properties empty
    Given I open application
    And I add the dog of breed "Pomeranian", nick "Otto", price 250 and with image URL "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Example_image.svg/600px-Example_image.svg.png"
    When I edit dog with id: 7 and clear all the fields
    Then I should see dog with id: 7, breed "Pomeranian", nick "Otto", price 250 in the table

  Scenario: Edit dog - try to make properties empty
    Given I open application
    And I add the dog of breed "Pomeranian", nick "Otto", price 250 and with image URL "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Example_image.svg/600px-Example_image.svg.png"
    When I edit dog with id: 7 and clear all the fields
    Then I should see dog with id: 7, breed "Pomeranian", nick "Otto", price 250 in the table

  Scenario: Edit dog - cancel update
    Given I open application
    And I should see dogs table with 6 rows
    And I add the dog of breed "Doberman", nick "Cesar", price 220 and with image URL "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Example_image.svg/600px-Example_image.svg.png"
    When I edit dog with id: 7 and click Cancel
    Then I should see dog with id: 7, breed "Doberman", nick "Cesar", price 220 in the table


