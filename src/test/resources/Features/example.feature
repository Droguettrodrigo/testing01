Feature: Examples
  Optional description of the feature

 @test
  Scenario: Get Sites
    Given I am in App main site
    Then I load the DOM Information ToolsQA.json
    And I click in element Add
    And I click in element Name
    And I set element Name with text Rodrigo
    And I click in element LastName
    And I set element LastName with text Droguett
    And I click in element Email
    And I set element Email with text droguettrodrigo@gmail.com
    And I click in element Age
    And I set element Age with text 35
    And I click in element Salary
    And I set element Salary with text 5000
    And I click in element Department
    And I set element Department with text QA
    And I click in element Submit
     Then I take screenshot: Feature_0001

  @test
  Scenario: Assert contain text
    Given I am in App main site
    Then I load the DOM Information ToolsQA.json
    And I click in element Edit
    And I click in element Age
    And I set element Age with text 30
    Then Assert if Email Error contains text Lo sentimos, este correo ya está registrado.

  @test
  Scenario: Assert not contain text
    Given I am in App main site
    Then I load the DOM Information ToolsQA.json
    And I click in element Delete
    And I set element Email with text droguettrodrigo@gmail.com
    And I click in element Email Confirmacion
    Then Check if Email Error NOT contains text COVID-19

  @test
  Scenario: Take a ScreenShot
    Given I am in App main site
    And I attach a Screenshot to Report


  @test
  Scenario: Elements is/is not present
    Given I am in App main site
    Then I load the DOM Information ToolsQA.json
    And I click in element Email
    Then Check if Email Error NOT is Displayed
    And I set element Email with text droguettrodrigo@gmail.com
    And I click in element Email Confirmacion
    Then Assert if Email Error is Displayed


  @test
  Scenario: Handle Dropdown
    Given I am in App main site
    Then I load the DOM Information ToolsQA.json
    And I set text febrero in dropdown Mes de Nacimiento
    And I attach a Screenshot to Report
    And I set index 03 in dropdown Mes de Nacimiento
    And I attach a Screenshot to Report

|