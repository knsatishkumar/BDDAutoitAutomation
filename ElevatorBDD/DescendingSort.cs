using System;
using System.Collections.Generic;
using System.Text;

namespace ElevatorBDD
{
	public class DescendingSort : IComparer<int>
	{
		public int Compare(int x, int y)
		{
			return y.CompareTo(x);
		}
	}
}
