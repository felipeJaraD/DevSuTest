Feature: find pet by status Swagger Petstore

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: find pet by status
    Given path '/pet/findByStatus'
    And param status = 'sold'
    When method get
    Then status 200
