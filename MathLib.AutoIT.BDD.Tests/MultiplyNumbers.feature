Feature: MultiplyNumbers
	In order to avoid silly mistakes
	As a math learner
	I want to be told the multiplication of numbers

@mytag
Scenario: Multiply two numbers
	Given I have entered 5 into the calculator
	And I have entered MULTIPLY operator
	And I have entered 5 into the calculator
	When I Compute
	Then the result should be 25 on the screen
