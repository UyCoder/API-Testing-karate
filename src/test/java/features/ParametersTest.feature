Feature: Parameters example


  Background:
    * def baseUrl1 = 'https://api.exchangeratesapi.io'
    * def baseUrl2 = 'https://284-rpr-133.mktorest.com'
    * def baseURL3 = 'https://swapi.dev/api/people/1/'
    * def baseURL4 = 'https://pokeapi.co/'


  Scenario: path parameters
    Given url baseUrl1
    And path '/latest'
    When method GET
    Then status 200

  Scenario: another path parameters
    * def expectedResponse =
    """
    {
       "requestId": "cd3#17af92284ba",
       "success": false,
       "errors": [
                  {
                    "code": "610",
                     "message": "Requested resource not found"
                   }
                 ]
     }
    """
    Given url baseUrl2
    And path '/rest'
    When method GET
    Then status 200
    And print response
    And match response.requestId == '#present'
    And match response.errors[0].code == '610'
    # And match response == expectedResponse

  Scenario: query parameters
    Given url baseURL3
    When method GET
    Then status 200
    Then print response

  Scenario: query parameters
    Given url baseURL4
    And path 'api/v2/pokemon/'
    And param limit = 7
    And param offset = 24
    When method GET
    Then status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Date == '#present'
    And print response


