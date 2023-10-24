Feature: Create Phone account
  Background: Test Setup
    Given url BASE_URL

    Scenario: Test /api/accounts/add-account-phone
      * def AutoToken = callonce read('Get_Token.feature')
      * def Token = "Bearer " + AutoToken.response.token
      * def theID = callonce read('CreateAccount_primary.feature')
      * def Id = theID.response.id

      Given path "/api/accounts/add-account-phone"
      And header Authorization = Token
      And param primaryPersonId = Id
      And request
      """ {
      "phoneNumber": "8796783210",
      "phoneExtension": "342",
      "phoneTime": "Noon",
      "phoneType": "IPHONE"
       }"""
      When method post
      And status 201
      And print response

