using System;

namespace CoverageInvestigation
{
    public class Program
    {
        private readonly string _myValue;

        public Program()
        {
            _myValue = "Some value";
        }

        static void Main(string[] args)
        {
            var p = new Program();
            p.DoStuff();
        }

        private void DoStuff()
        {
            string result;
            if (_myValue.Contains("val"))
            {
                result = SomeOtherMethod();
            }
            else
            {
                result = SomeMethod();
            }
            Console.WriteLine(result);
        }

        public string SomeMethod()
        {
            return "SomeMethod";
        }

        private string SomeOtherMethod()
        {
            return "SomeOtherMethod";
        }
    }
}