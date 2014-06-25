package skeleton;

import cucumber.api.java.pl.Kiedy;
import cucumber.api.java.pl.Wtedy;

public class AmountPromotions {
    

    @cucumber.api.java.pl.Mając("^produkt \"([^\"]*)\" o cenie (\\d+) zł$")
    public void produkt_o_cenie_zł(String productName, int price) throws Throwable {
        
//        AmountPromotion ap = new AmountPromotion(p, );
        System.out.println(productName);
//        throw new cucumber.api.PendingException();
    }

    @Kiedy("^ustawiam dla niego promocję na kwotę (\\d+) zł$")
    public void ustawiam_dla_niego_promocję_na_kwotę_zł(int arg1) throws Throwable {
        // Express the Regexp above with the code you wish you had
    }

    @Wtedy("^cena produktu \"([^\"]*)\" wynosi (\\d+) zł$")
    public void cena_produktu_wynosi_zł(String arg1, int arg2) throws Throwable {
        // Express the Regexp above with the code you wish you had
    }

    @Wtedy("^promocja nie może być wprowadzona$")
    public void promocja_nie_może_być_wprowadzona() throws Throwable {
        // Express the Regexp above with the code you wish you had
    }
}
