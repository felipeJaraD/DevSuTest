Feature: update a pet Swagger Petstore

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: udpdate a pet
    * call read("../post/pet-post.feature@AddPet")
    Given path '/pet'
    And request { "id": '#(petId)', "name": "SAM", "status": "sold" }
    When method put
    Then status 200