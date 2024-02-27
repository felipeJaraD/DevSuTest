Feature: post  pet on petstore

  Background:
    * url 'https://petstore.swagger.io/v2'
    @AddPet
  Scenario: add a pet
    Given path '/pet'
    And request
    """{
      "id": 211423124312787654,
      "category": {
        "name": "Dog"
      },
      "name": "Theo",
      "photoUrls": [
        "https://soyunperro.com/wp-content/uploads/2019/05/westie-03.jpg"
      ],
      "status": "available"
    }
    """

      When method post
      Then status 200
      And def petId = $.id