Feature: Hello at API AltaShop

  @Hello @Index @APIAltaShop
  Scenario: User get hello as an index
    Given User call an api "hello" with method "GET"
    Then User verify code is 200
    Then User verify response is match with json schema "index.json"