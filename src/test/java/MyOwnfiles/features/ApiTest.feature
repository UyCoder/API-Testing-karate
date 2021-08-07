Feature: Exchange rate api tests

  Scenario: basic test with status code validation
    Given url 'https://api.exchangeratesapi.io/latest'
    When method GET
    Then status 200

  Scenario: get rates from specific day
    Given url 'https://api.exchangeratesapi.io/2010-01-12'
    When method GET
    Then status 200

  Scenario: header validation
    Given url 'https://api.exchangeratesapi.io/2010-01-12'
    When method GET
    Then status 200
    And match header Content-Type == 'application/json; Charset=UTF-8'
    And match header Connection == 'keep-alive'
    And match header Date == '#present'
    # This equals to headers().hasHeaderWithName("headername") in restAssured

    # to verify headers we use header keyword then headerName without double or single code and == 'header value'

 Scenario: json body verification
   Given url 'https://api.exchangeratesapi.io/2010-01-12'
   When method GET
   Then status 200
   And match header Content-Type == 'application/json; Charset=UTF-8'
   And print response
   And print response.success
   And match response.error.code == 101
   And print response.error.type == '#present'
   And print 'The Error Massage is', response.error.info ,'==========='


