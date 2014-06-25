public class AmountPromotions {
    @cucumber.api.java.pl.Mając("^produkt \"([^\"]*)\" o cenie (\\d+) zł$")
    public void produkt_o_cenie_zł(String arg1, int arg2) throws Throwable {
        System.out.println(arg1);
//        throw new cucumber.api.PendingException();
    }
}
