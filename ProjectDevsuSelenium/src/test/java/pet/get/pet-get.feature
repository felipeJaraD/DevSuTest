Feature: get pet ID Swagger Petstore

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: get pet ID
    * call read("../post/pet-post.feature@AddPet")
    Given path "/pet/" + petId
    When method get
    Then status 200