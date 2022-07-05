using NUnit.Framework;
using Sikuli4Net.sikuli_REST;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text;

namespace MathLib.AutoIT.BDD.Tests
{
	[TestFixture]
	public class SikuliTest
	{
		[Test]
		public void LaunchCalculator()
		{
			var process = new Process
			{
				StartInfo = new ProcessStartInfo
				{
					FileName = "calc.exe",
					
				}
			};
			process.Start();

			Pattern ImageNumber5 = new Pattern(@"D:\AsusLaptop\Documents\Images\Sikuli\5.png");
			Pattern ImagePlusSymbol = new Pattern(@"D:\AsusLaptop\Documents\Images\Sikuli\plus.png");
			Pattern ImageEqualsSymbol = new Pattern(@"D:\AsusLaptop\Documents\Images\Sikuli\Equals.png");
			
			Screen scr = new Screen();
			scr.Click(ImageNumber5, true);
			scr.Click(ImagePlusSymbol, true);
			scr.Click(ImageEqualsSymbol, true);

		}
	}
}
