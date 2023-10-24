Feature: Create Account
  Background: Test Setup
    Given url BASE_URL

    Scenario: Test /api/accounts/add-primary-account
      * def AutoEmail = Java.type('DataGenerator.EmailGenerator')
      * def primaryEmail = AutoEmail.getEmail();

      Given path "/api/accounts/add-primary-account"
      And request
      """
      {
      "email": "#(primaryEmail)",
      "firstName": "Smith",
      "lastName": "John",
      "title": "Mr",
      "gender": "MALE",
      "maritalStatus": "MARRIED",
      "employmentStatus": "Student",
      "dateOfBirth": "2000-10-19",
      }"""
      When method post
      Then status 201
      And print response
