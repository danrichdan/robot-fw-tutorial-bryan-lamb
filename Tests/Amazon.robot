*** Settings ***
Documentation  This is some basic info about the whole suite
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot
Suite Setup   Insert Testing Data
Test Setup    Begin Web Test
Test Teardown   End Web Test
Suite Teardown    Cleanup Testing Data

*** Variables ***


*** Test Cases ***
User can search for products
  [Documentation]  This is some basic info about the Test
  [Tags]  Smoke
  Amazon.Search for Products
  

User must sign in to check out
  [Documentation]  This is some basic info about the Test
  [Tags]  Smoke
  Amazon.Search for Products
  Amazon.Select product from Search Results
  Amazon.Add Product to Cart
  Amazon.Begin Checkout
