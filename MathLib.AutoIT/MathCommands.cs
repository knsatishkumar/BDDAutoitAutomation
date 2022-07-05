using System;
using System.Collections.Generic;
using System.Text;

namespace MathLib.AutoIT
{
	public enum MathOperators
	{
		PLUS,
		MINUS,
		MULTIPLY,
		DIVIDE,
		EQUALTO
	}

	public class MathCommands
	{
		StringBuilder builder = new StringBuilder();
		int sleepInMilliSecs = 500;

		private string GetSleepTime()
		{
			return String.Format("Sleep({0})" , sleepInMilliSecs);
		}
		public void InputNumber(double number)
		{
			var input = string.Format("ControlSend(\"Calculator\", \"\",\"#327701\", '{0}')", number);
			builder.AppendLine(input);
			builder.AppendLine(this.GetSleepTime());
		}

		public void InputOperator(MathOperators oper)
		{
			var input = string.Empty;
			string cmdText = "ControlClick(\"Calculator\" , \"\" , \"{0}\")";
			switch (oper)
			{
				case MathOperators.PLUS:
					input = string.Format(cmdText, "Button23");
					break;
				case MathOperators.MINUS:
					input = string.Format(cmdText, "Button22");
					break;
				case MathOperators.MULTIPLY:
					input = string.Format(cmdText, "Button21");
					break;
				case MathOperators.DIVIDE:
					input = string.Format(cmdText, "Button20");
					break;
				case MathOperators.EQUALTO:
					input = string.Format(cmdText, "Button28");
					break;
				default:
					break;
			}

			
			builder.AppendLine(input);
			builder.AppendLine(this.GetSleepTime());
		}

		public string GetCommands()
		{
			return builder.ToString();
		}


	}
}
