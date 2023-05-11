Feature: Category product at API AltaShop

  @CategoryAltaShop @CreateCategory @APIAltaShop
  Scenario: User create a new category
    Given User call an api "auth/login" with method "POST" with payload below
      | email       | password
      | userEmail   | userPassword
    Then User verify code is 200
    And User get auth token
    Given User create a new category
    Then User verify code is 200

  @CategoryAltaShop @GetCategoryByID @APIAltaShop
  Scenario: User get category by ID
    Given User call an api "auth/login" with method "GET" with payload below
      | email       | password
      | userEmail   | userPassword
    Then User verify code is 200
    And User get auth token
    Given User get category by ID
    Then User verify code is 200

  @CategoryAltaShop @GetAllCategory @APIAltaShop
  Scenario: User get all category
    Given User call an api "categories" with method "GET"
    Then User verify response is match with json schema "getallcategories.json"

  @CategoryAltaShop @DeleteCategory @APIAltaShop
  Scenario: User get all category
    Given User call an api "categories/1" with method "DELETE"
    Then User verify response is match with json schema "deletecategories.json"

