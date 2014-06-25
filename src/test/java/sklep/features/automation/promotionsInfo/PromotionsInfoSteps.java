package sklep.features.automation.promotionsInfo;

import static org.junit.Assert.assertTrue;

import java.util.Date;
import java.util.List;

import cucumber.api.Format;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class PromotionsInfoSteps {

    PromotionsInfoDSL dsl = new PromotionsInfoDSL();

    @When("^Klient wchodzi na stronę z listą promocji$")
    public void Klient_wchodzi_na_stronę_z_listą_promocji() throws Throwable {
        dsl.goToPromotionsPage();
    }

    @Then("^Klient widzi pustą listę promocji z informacją \"([^\"]*)\"$")
    public void Klient_widzi_pustą_listę_promocji_z_informacją(String info) throws Throwable {
    }

    @Given("^Są zdefiniowane sklep.features.promocje$")
    public void Są_zdefiniowane_promocje_na_najbliższe_dni( List<PromotionTestItem> items) throws Throwable {
        dsl.setPromotionItems(items);
    }

    @And("^dziś jest \"([^\"]*)\"$")
    public void dziś_jest(@Format("yyyy-MM-dd") Date date) throws Throwable {
        dsl.setTodayDate(date);
    }

    @Then("^.*widzi \"([^\"]*)\"$")
    public void Klient_widzi(List<String> items) throws Throwable {
        assertTrue(dsl.promotionItemsContainsOnly(items));
    }
}
