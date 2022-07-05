using System;
using System.Collections.Generic;
using System.Text;

namespace ElevatorBDD
{
	public interface IElevatorBox
	{
		void OpenDoors(int floorLevel);
		void Operate();
		int CurrentFloor { get; set; }
		void RegisterFloorRequest(int goingTo);
		ElevatorState ElevatorState { get; set; }
	}
}
