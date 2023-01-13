Feature: PetShop Store CRUD feature
  As a tester
  I would like to create/get/update a pet

  @Challenge
  Scenario: create new pet
    Given I have access to pet shop store api
    When I send POST request to 'https://petstore.swagger.io/v2/pet' with json
    """
    {"id":9999,"category":{"id":1,"name":"pepe"},"name":"pancho","photoUrls":["foto1.jpg","foto2.jpg"],"tags":[]}
    """
    Then I expect the response code 200
    And I expect the response body is equal
    """
    {
    "id": "EXCLUDE",
    "category":{"id":1,"name":"pepe"},
    "name": "pancho",
    "photoUrls": ["foto1.jpg","foto2.jpg"],
    "tags": []
    }
    """

  @Challenge
  Scenario: get a pet data by id
    Given I have access to pet shop store api
    When I send GET request to 'https://petstore.swagger.io/v2/pet/9999' with json
    """
    """
    Then I expect the response code 200

  @Challenge
  Scenario: Update a pet
    Given I have access to pet shop store api
    When I send PUT request to 'https://petstore.swagger.io/v2/pet' with json
    """
    {"id":9999,"category":{"id":1,"name":"pepe"},"name":"pancho222","photoUrls":["foto1.jpg","foto2.jpg"],"tags":[]}
    """
    Then I expect the response code 200
    And I expect the response body is equal
    """
    {
    "id":9999,
    "category":{"id":1,"name":"pepe"},
    "name":"pancho222",
    "photoUrls":["foto1.jpg","foto2.jpg"],
    "tags":[]
    }
    """