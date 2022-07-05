Feature: DivideNumbers
	In order to avoid silly mistakes
	As a math learner
	I want to be told the division of numbers

@mytag
Scenario: Divide two numbers
	Given I have entered 10 into the calculator
	And I have entered DIVIDE operator
	And I have entered 5 into the calculator
	When I Compute
	Then the result should be 2 on the screen
