Feature: SubstractFeature
	In order to avoid silly mistakes
	As a math learner
	I want to be told the substraction of numbers

@mytag
Scenario: Subtract two numbers
	Given I have entered 10 into the calculator
	And I have entered MINUS operator
	And I have entered 5 into the calculator
	When I Compute
	Then the result should be 5 on the screen
