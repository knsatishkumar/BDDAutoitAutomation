using System;
using System.Diagnostics;
using System.Text;

namespace MathLib.AutoIT
{
	public class AutoItWrapper
	{
		public string LastResult;
		public string ExecuteScriptAndReturnResult()
		{
			StringBuilder builder = new StringBuilder();
			try
			{
				var process = new Process
				{
					StartInfo = new ProcessStartInfo
					{
						FileName = ".\\consoleau3.exe",
						Arguments = "Add.au3",
						UseShellExecute = false,
						RedirectStandardOutput = true,
						CreateNoWindow = true
					}
				};
				process.Start();		
				
				while (!process.StandardOutput.EndOfStream)
				{
					var line = process.StandardOutput.ReadLine();					
					builder.AppendLine(line);
				}
				process.WaitForExit();
			}
			catch (Exception e)
			{
				Console.WriteLine(e.Message);
			}
			this.LastResult = builder.ToString().Trim();
			return builder.ToString().Trim();
		}

		public string ExecuteScriptAndReturnResult(string filename)
		{
			StringBuilder builder = new StringBuilder();
			try
			{
				var process = new Process
				{
					StartInfo = new ProcessStartInfo
					{
						FileName = ".\\consoleau3.exe",
						Arguments = filename,
						UseShellExecute = false,
						RedirectStandardOutput = true,
						CreateNoWindow = true
					}
				};
				process.Start();

				while (!process.StandardOutput.EndOfStream)
				{
					var line = process.StandardOutput.ReadLine();
					builder.AppendLine(line);
				}
				process.WaitForExit();
			}
			catch (Exception e)
			{
				Console.WriteLine(e.Message);
			}
			this.LastResult = builder.ToString().Trim();
			return builder.ToString().Trim();
		}
	}
}
