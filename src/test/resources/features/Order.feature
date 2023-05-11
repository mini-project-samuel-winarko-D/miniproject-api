Feature: Authentication at API AltaShop

  @OrderAltaShop @CreateOrder @APIAltaShop
  Scenario: User create a new order
    Given User call an api "auth/login" with method "POST" with payload below
      | email       | password
      | userEmail   | userPassword
    Then User verify code is 200
    And User get auth token
    Given User create a new order
    Then User verify code is 200

  @OrderAltaShop @GetAllOrder @APIAltaShop
  Scenario: User get all order
    Given User call an api "auth/login" with method "POST" with payload below
      | email       | password
      | userEmail   | userPassword
    Then User verify code is 200
    And User get auth token
    Given User get all order
    Then User verify code is 200


  @OrderAltaShop @GetAllOrderByID @APIAltaShop
  Scenario: User get all order by ID
    Given User call an api "auth/login" with method "POST" with payload below
      | email       | password
      | userEmail   | userPassword
    Then User verify code is 200
    And User get auth token
    Given User get all order by ID
    Then User verify code is 200

