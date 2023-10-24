Feature: Delete Account

  Background: Test Setup
    Given url BASE_URL

  Scenario: Test /api/accounts/delete-account
    * def AutoId = callonce read('CreateAccount_primary.feature')
    * def primaryID = AutoId.response.id

    * def AutoToken = callonce read('Get_Token.feature')
    * def Token = "Bearer " + AutoToken.response.token

    Given path "/api/accounts/delete-account"
    And header Authorization = Token
    And param primaryPersonId = primaryID
    When method delete
    And status 200
    And print response
    And assert response.message == "Account Successfully deleted"
    #And match response == {"status": true, "httpStatus": "OK", "message": "Account Successfully deleted"}