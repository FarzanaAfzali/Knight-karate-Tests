Feature: Get new Valid Token
  Background: test Setup
    Given url BASE_URL
  Scenario: Test endpoint /api/token
    Given path "/api/token"
    And request {"username": "supervisor", "password": "tek_supervisor"}
    When method post
    Then status 200
    And print response

    #Given path "/api/token/verify"
    #And param token = response.token
    #And param username = "supervisor"
    #When method get
    #Then status 200
    #And print response
    #And assert response.status == true
    #And assert response.message == "Token is valid"

