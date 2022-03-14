package testRunner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
@CucumberOptions(plugin={"html:target/cucumber_html_report.html"},
				features="src/test/java/features",
				glue="stepDefinitions",
				dryRun = false,
				monochrome = true,
				tags="@PayAndEnroll")
public class TestRunner extends AbstractTestNGCucumberTests
{
	
}
