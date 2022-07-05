Feature: UseElevator
	In order to go to my appartment
	As a lazy person
	I want to use the elevator

@SingleScenario
Scenario: Single user requesting elevator
	Given the elevator is on the 0 floor
	 And Satish wants to take elevator from 0 floor to 6 floor 	
	When the elevator operates
	Then the elevator opens doors on 0 floor 
	And the elevator opens doors on 6 floor	

@Scenario
Scenario Outline: Multiple users
	Given the elevator is on the 0 floor
	 And <User1> wants to take elevator from <currentFloor1> floor to <goingTo1> floor
	 And <User2> wants to take elevator from <currentFloor2> floor to <goingTo2> floor	 	
	When the elevator operates
	Then the elevator opens doors on <openDoors1> floor 
	And the elevator opens doors on <openDoors2> floor
	And the elevator opens doors on <openDoors3> floor
	And the elevator opens doors on <openDoors4> floor

	Examples: 
	| User1		 | currentFloor1 | goingTo1 | User2 | currentFloor2 | goingTo2 | openDoors1 | openDoors2 | openDoors3 | openDoors4 |
	| Satish     | 0             | 3        | Sanjay  | 2             | 0        | 0          | 2          | 3          | 0          |
	| Satish     | 3             | -1       | Sanjay  | 2             | 0       | 2          | 3          | 0          | -1          |

