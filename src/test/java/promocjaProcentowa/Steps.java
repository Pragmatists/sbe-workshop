package promocjaProcentowa;

import cucumber.api.PendingException;
import cucumber.api.java.pl.Kiedy;
import cucumber.api.java.pl.Mając;
import cucumber.api.java.pl.Wtedy;

public class Steps {

    @Mając("^produkt \"(.*?)\" o cenie (\\d+) zł$")
    public void produkt_o_cenie_zł(String arg1, int arg2) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Kiedy("^ustawiam dla niego promocję na (\\d+)% okresem promocji od (\\d+)\\.(\\d+)\\.(\\d+) do (\\d+)\\.(\\d+)\\.(\\d+)$")
    public void ustawiam_dla_niego_promocję_na_okresem_promocji_od_do(int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Wtedy("^w dniu (\\d+)\\.(\\d+)\\.(\\d+) cena produktu \"(.*?)\" wynosi (\\d+)\\.(\\d+) zł$")
    public void w_dniu_cena_produktu_wynosi_zł(int arg1, int arg2, int arg3, String arg4, int arg5, int arg6) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Mając("^dziś jest (\\d+)\\.(\\d+)\\.(\\d+)$")
    public void dziś_jest(int arg1, int arg2, int arg3) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Kiedy("^ustawiam dla niego promocję na (\\d+)% z długością promocji (\\d+) dni$")
    public void ustawiam_dla_niego_promocję_na_z_długością_promocji_dni(int arg1, int arg2) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }

    @Wtedy("^w (\\d+)\\.(\\d+)\\.(\\d+) dniu cena produktu \"(.*?)\" (\\d+) zł$")
    public void w_dniu_cena_produktu_zł(int arg1, int arg2, int arg3, String arg4, int arg5) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }


}
