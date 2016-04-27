Write-Host -ForegroundColor Cyan "This generates correct coverage results..."
.\packages\OpenCover.4.6.519\tools\OpenCover.Console.exe -target:".\CoverageInvestigation\bin\Debug\CoverageInvestigation.exe" -register:user -output:correct.xml

Write-Host -ForegroundColor Cyan "This executes unit tests with xUnit..."
.\packages\xunit.runner.console.2.1.0\tools\xunit.console.exe CoverageInvestigation.Test\bin\Debug\CoverageInvestigation.Test.dll

Write-Host -ForegroundColor Cyan "This fails to show any code has run..."
.\packages\OpenCover.4.6.519\tools\OpenCover.Console.exe -register:user -target:"packages\xunit.runner.console.2.1.0\tools\xunit.console.exe" -targetargs:"CoverageInvestigation.Test\bin\Debug\CoverageInvestigation.Test.dll" -output:"nocoverage.xml" 
