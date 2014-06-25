package sklep.features;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import cucumber.pro.CucumberProFormatter;
import org.junit.runner.RunWith;

//-Dcucumber.options="--format cucumber.pro.CucumberProFormatter"
@RunWith(Cucumber.class)
@CucumberOptions(monochrome = true, format = { "cucumber.pro.CucumberProFormatter"})
public class RunAllCukesTest {
}
