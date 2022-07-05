Feature: ScenarioOutlineExample
	In order to avoid silly mistakes
	As a math learner
	I want to be told about math calculations

@mytag
Scenario Outline: Calculations of two numbers
	Given I have entered <num1> into the calculator
	And I have entered <operator> operator
	And I have entered <num2> into the calculator
	When I Compute
	Then the result should be <output> on the screen
	Examples: 
	| num1 | operator | num2 | output              |
	| 5    | PLUS     | 5    | 10                  |
	| 5    | MINUS    | 5    | 0                   |
	| 5    | MULTIPLY | 2    | 10                  |
	| 9    | DIVIDE   | 3    | 3                   |
	| 0    | DIVIDE   | 0    | Result is undefined |
	| 0.5  | PLUS	  | 0.5  | 1				   |
	| 100000000000    | MULTIPLY			| 100000000000    | 1.e+22      |