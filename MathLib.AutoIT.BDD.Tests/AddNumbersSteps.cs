using NUnit.Framework;
using System;
using TechTalk.SpecFlow;

namespace MathLib.AutoIT.BDD.Tests
{
    [Binding]
    public class AddNumbersSteps
    {
		AutoItWrapper wrapper = new AutoItWrapper();
		MathCommands commandBuilder = new MathCommands();
		AutoITScriptGenerator scriptGen = new AutoITScriptGenerator();
		[Given(@"I have entered (.*) into the calculator")]
        public void GivenIHaveEnteredIntoTheCalculator(double number)
        {
			commandBuilder.InputNumber(number);			
		}

		[Given(@"I have entered (.*) operator")]
		public void GivenIHaveEntered(MathOperators oper)
		{
			commandBuilder.InputOperator(oper);
		}

		[When(@"I Compute")]
		public void WhenICompute()
		{
			this.GivenIHaveEntered(MathOperators.EQUALTO);
			var filename = scriptGen.GetScriptContentsFile(commandBuilder.GetCommands());			
			wrapper.ExecuteScriptAndReturnResult(filename);			
		}


		[When(@"I press add")]
        public void WhenIPressAdd()
        {
			wrapper.ExecuteScriptAndReturnResult();
		}
        
        [Then(@"the result should be (.*) on the screen")]
        public void ThenTheResultShouldBeOnTheScreen(string result)
        {		
			Assert.IsTrue(wrapper.LastResult.Trim().Contains(result));
        }
    }
}
