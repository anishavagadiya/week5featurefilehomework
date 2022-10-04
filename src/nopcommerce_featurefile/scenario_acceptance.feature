Feature: Demo nopCommerce's top menu acceptance criteria
  As a user, I would like to check acceptance criteria of Nopcommerce top menu
  Background: User is on given url
    When user type URL https://demo.nopcommerce.com
    And user click on enter button
    Then user is on given URL
  Scenario: Verify that user can navigate to Books category
    When User is on given URL
    And Click on Books tab to Top Menu
    Then User is navigated to Books category page
  Scenario: Verify that user can see the Books category page with filters ans list of products
    When User is on given URL
    And Click on Books tab on Top menu
    And Check Filters and List tab
    Then Books category page is displayed with Filters and List tabs
  Scenario: Verify that User can see 'Sort by' filter on Books category page
    Given User is on books category page
    When User is on books category page
    And 'sort by' filter is present
    Then 'sort by' filter is available on Books category page
  Scenario: Verify that user can see 'Display' filter on Books category page
    Given User is on Books category page
    When User is on Books category page
    And 'Display' filter is present
    Then 'Display' filter is available on Books category page
  Scenario: Verify that user can see 'Grid' tab on Books category page
    Given User is on Books category page
    When User is on Books category page
    And Check 'Grid' tab is present
    Then 'Grid' tab is available on Books category page
  Scenario: Verify that user can see 'List' tab on Books category page
    Given User is on Books category page
    When User is on Books category page
    And Check 'List' tab is present
    Then 'List' tab is available on Books category page
  Scenario: Verify that user can see 'Name: A to Z' selection is presents in 'Sort by' filter
    Given User is on Books category page
    When User is on Books category page
    And Click on 'Sort by' filter
    And Check that 'Name:A to Z' selection is present
    Then 'Name:A to Z' selection is present in 'Sort by' filter
  Scenario: Verify that user can see 'Name:A to Z' is first option in 'Sort by' filter
    Given User is on Books category page
    When User is on Books category page
    And Click on 'Sort by' filter
    And Check that 'Name:A to Z' is first option
    Then 'Name:A to Z' is first option in order
  Scenario: Verify that user can see 'Name:A to Z' filter is functioning as expected(Note: Products are
  filtered in alphabetical order)
    Given User is on Books category page
    When User is on Books category page
    And Click on 'Sort by' filter
    And Select 'Name:A to Z' filer
    Then All products are displayed in alphabetical order