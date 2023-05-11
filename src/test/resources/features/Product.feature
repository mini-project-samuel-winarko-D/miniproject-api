Feature: Authentication at API AltaShop

  @ProductAltaShop @GetAllProduct @APIAltaShop
  Scenario: User get all product
    Given User call an api "products" with method "GET"
    Then User verify response is match with json schema "getallproducts.json"

  @ProductAltaShop @CreateProduct @APIAltaShop
  Scenario: User create a new product
    Given User call an api "auth/login" with method "POST" with payload below
      | email       | password
      | userEmail   | userPassword
    Then User verify code is 200
    And User get auth token
    Given User create a new product
    Then User verify code is 200

  @ProductAltaShop @GetAllProductByID @APIAltaShop
  Scenario: User get all product by ID
    Given User call an api "auth/login" with method "GET" with payload below
      | email       | password
      | userEmail   | userPassword
    Then User verify code is 200
    And User get auth token
    Given User get product by ID
    Then User verify code is 200

  @ProductAltaShop @DeleteProduct @APIAltaShop
  Scenario: User delete a product
    Given User call an api "products/1" with method "DELETE"
    Then User verify response is match with json schema "deleteproducts.json"

  @ProductAltaShop @AssignRating @APIAltaShop
  Scenario: User assign rating to a product
    Given User call an api "auth/login" with method "POST" with payload below
      | email       | password
      | userEmail   | userPassword
    Then User verify code is 200
    And User get auth token
    Given User assign rating to product
    Then User verify code is 200

  @ProductAltaShop @GetRatings @APIAltaShop
  Scenario: User get rating of a product
    Given User call an api "products/1/ratings" with method "GET"
    Then User verify response is match with json schema "getproductrating.json"

  @ProductAltaShop @CreateComment @APIAltaShop
  Scenario: User create a comment to product
    Given User call an api "auth/login" with method "POST" with payload below
      | email       | password
      | userEmail   | userPassword
    Then User verify code is 200
    And User get auth token
    Given User create a comment to product
    Then User verify code is 200

  @ProductAltaShop @GetComment @APIAltaShop
  Scenario: User get comment of a product
    Given User call an api "products/1/comments" with method "GET"
    Then User verify response is match with json schema "getproductcomment.json"