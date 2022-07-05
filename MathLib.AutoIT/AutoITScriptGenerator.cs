using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace MathLib.AutoIT
{
	public class AutoITScriptGenerator
	{	
		public string GetHeader()
		{
			string result;
			using (StreamReader sr = new StreamReader("Header.txt"))
			{
				result = sr.ReadToEnd();
			}
			return result;
		}
		public string GetFooter()
		{
			string result;
			using (StreamReader sr = new StreamReader("Footer.txt"))
			{
				result = sr.ReadToEnd();
			}
			return result;
		}

		public string GetScriptContentsFile(string body)
		{
			string filename = String.Format("{0}.au3", DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-fff"));
			using (StreamWriter sw = new StreamWriter(filename))
			{
				sw.AutoFlush = true;
				sw.Write(this.GetHeader());
				sw.Write(body);
				sw.Write(this.GetFooter());
			}
			return filename;
		}
	}
}
