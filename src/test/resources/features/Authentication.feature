Feature: Authentication at API AltaShop

  @Registration @NormalPositive @APIAltaShop
  Scenario: User Registration at AltaShop API
    Given User call an api "auth/register" with method "POST" with payload below
      | email       | password      | fullname      |
      | userEmail   | userPassword  | userFullname   |
    Then User verify code is 200

  @Login @NormalPositive @APIAltaShop
  Scenario: User Login at AltaShop API
    Given User call an api "auth/login" with method "POST" with payload below
      | email       | password
      | userEmail   | userPassword
    Then User verify code is 200
    And User get auth token

  @GetUserInfo @NormalPositive @APIAltaShop
  Scenario: User get user information
    Given User call an api "auth/login" with method "POST" with payload below
      | email       | password
      | userEmail   | userPassword
    Then User verify code is 200
    And User get auth token
    Given User get user information