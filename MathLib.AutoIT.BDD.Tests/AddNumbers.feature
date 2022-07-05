Feature: AddNumbers
	In order to avoid silly mistakes
	As a math learner
	I want to be told the addition of numbers

@mytag
Scenario: Add two numbers
	Given I have entered 5 into the calculator
	And I have entered PLUS operator
	And I have entered 5 into the calculator
	When I Compute
	Then the result should be 10 on the screen

Scenario: Add three numbers
	Given I have entered 5 into the calculator
	And I have entered PLUS operator
	And I have entered 5 into the calculator
	And I have entered PLUS operator
	And I have entered 5 into the calculator
	When I Compute
	Then the result should be 15 on the screen


