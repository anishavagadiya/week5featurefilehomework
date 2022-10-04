Feature: Book category
  Background: I should be able to see homepage
    Given I enter URL "https://demo.nopcommerce.com/" in browser
    And I am on homepage
  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am homepage
    Then I should be able to see top menu tabs with "<categories&gt>"
    Examples:
      | categories |
      | computer |
      | Electronic |
      | Apparel |
      | Digital downloads |
      | Books |
      | Jewellery |
      | Gift card |
  Scenario Outline: I should be able to see book page with filters
    When I select book category from top menu tabs on home page
    Then i should be navigated to book category
    And I should be able to see "<"filters>"
    Examples:
      | filters |
      | sort by |
      | Display |
      | the Grid |
      | List tab |
  Scenario Outline: I should be able to see list of terms of each filter
    Given I am on Book page
    When I click on "<filter>"
    Then I should be able to see "<list>" is dropdown menu
    Examples:
      | filter | | list |
      | sort by | | Name:A to Z, Name:Z to A, Price: Low to High, Price: High to Low, Created On |
      | Display | | 3,6,9 |
  Scenario Outline: i should be able to choose any filter option with specific result
    Given I am on book page
    When I click on "<filter>"
    And I click on "<option>"
    Then I should be able to choose any filter option from list
    And I should be able to see "<result>"
    Examples:
      | filter | Option | result |

      | Sort by | Name: A to Z | sorted product with the product name in alphabetical order A to Z|
      | Sort by | Name: Z to A | sorted product with the product name in alphabetical order Z to A|
      | Sort by | Price: Low to High | sorted product with the price in descending order |
      | Sort by | Price: High to Low | sorted product with the price in ascending order |
      | Sort by | Created On | Recently added product should be show first |
      | Display | 3 | 3 products in a page |
      | Display | 6 | 6 products in a page |
      | Display | 9 | 9 products in a page |
  Scenario Outline: I should be able to see product display format according display format type as
  per given picture in SRS document
    Given I am on Book page
    When I click on "<display format icon>"
    Then I should be able to see product display format according display format type as per given picture in SRS document
    Examples:
      | Display format |
      | Grid |
      | List |