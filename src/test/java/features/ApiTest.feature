Feature: Exchange rate api tests

  Scenario: basic test with status code validation
    Given url 'https://api.exchangeratesapi.io/latest'
    When method GET
    Then status 200

  Scenario: get rates from specific day
    Given url 'https://api.exchangeratesapi.io/2010-01-12'
    When method GET
    Then status 200

  @wip
  Scenario: header validation
    Given url 'https://api.exchangeratesapi.io/2010-01-12'
    When method GET
    Then status 200
    And match header Content-Type == 'application/json; Charset=UTF-8'
    And match header Connection == 'keep-alive'
    And match header Date == '#present'
    # This equals to headers().hasHeaderWithName("headername") in restAssured

    # to verify headers we use header keyword then headerName without double or single code and == 'header value'
* print '==============first video 2:14:15==================='

