using Xunit;

namespace CoverageInvestigation.Test
{
    public class Class1
    {
        [Fact]
        public void SecondIsSecond()
        {
            var p = new Program();
            Assert.Equal("SomeMethod", p.SomeMethod());
        }
    }
}