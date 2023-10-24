Feature: Create Address For Primary Account
  Background: Test SetUp
    Given url BASE_URL

  Scenario: Test Endpoint /api/accounts/add-account-address
    * def TheID = callonce read('CreateAccount_primary.feature')
    * def PrimaryID = TheID.response.id

    * def theToken = callonce read('Get_Token.feature')
    * def Token = "Bearer " + theToken.response.token
    And print Token

    Given path "/api/accounts/add-account-address"
    And header Authorization = Token
    And param primaryPersonId = PrimaryID
    And request
    """
    {
    "addressType": "4320 Home",
    "addressLine1": "Home",
    "city": "Henrico",
    "state": "Virginia",
    "postalCode": "23230",
    "countryCode": "+1",
    "current": true
}"""
    When method post
    And status 201
    And print response
