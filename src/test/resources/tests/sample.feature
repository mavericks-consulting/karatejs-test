@sample_test
Feature: Sample test

  Background:
    * url baseServiceUrl

  Scenario: Sample scenario
    * print 'Sample scenario'
    Given path '/base-method'
    When method GET
    Then status 200
    And print response
    * string actual = response
    And match actual contains '"user":[{"<username>":'

  Scenario Outline: Sample scenario outline
    * print 'Sample scenario outline'
    Given path '/base-method'
    And params { username: <username> }
    When method GET
    Then status 200
    And print response
    * string actual = response
    And match actual !contains 'Not Found'
    And match filtered_result contains '<username>'

    Examples:
      | username           |
      | test-user@test.com |
