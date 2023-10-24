Feature: Create Account For Car

  Background: Test Setup
    Given url BASE_URL

  Scenario: Test /api/accounts/add-account-car
    * def AutoId = callonce read('CreateAccount_primary.feature')
    * def primaryID = AutoId.response.id
    * def AutoToken = callonce read('Get_Token.feature')
    * def Token = "Bearer " + AutoToken.response.token

    Given path "/api/accounts/add-account-car"
    And header Authorization = Token
    And param primaryPersonId = primaryID
    And request
    """ {
    "make": "BMW",
    "model": "XYA",
    "year": "2023",
    "licensePlate": "Texas"
    }"""
    When method post
    And status 201
    And print response