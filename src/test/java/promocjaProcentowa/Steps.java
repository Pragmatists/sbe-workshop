package promocjaProcentowa;

import java.math.BigDecimal;
import java.util.Date;

import cucumber.api.Format;
import cucumber.api.java.pl.Kiedy;
import cucumber.api.java.pl.Mając;
import cucumber.api.java.pl.Wtedy;

public class Steps {

    Magazyn m = new Magazyn();

    @Mając("^produkt \"(.*?)\" o cenie ([\\.\\d]+) zł$")
    public void produkt_o_cenie_zł(/*Masło*/String nazwa, BigDecimal cena) {
        Produkt p = PromotionsDSL.utworzNowyProdukt(nazwa, cena);
        m.dodajProduct(p);
    }

    @Kiedy("^ustawiam dla niego promocję na (\\d+)% okresem promocji od \"(.*?)\" do \"(.*?)\"$")
    public void ustawiam_dla_niego_promocję_na_okresem_promocji_od_do(int procentPromocji,
                                                                      @Format("dd.MM.yyyy") Date dataOd,
                                                                      @Format("dd.MM.yyyy")
                                                                      Date dataDo) {
        

    }

    @Wtedy("^w dniu \"(.*?)\" cena produktu \"(.*?)\" wynosi ([\\.\\d]+) zł$")
    public void w_dniu_cena_produktu_wynosi_zł(
            @Format("dd.MM.yyyy") Date dzien, String nazwaProduktu, BigDecimal cana) {
    }

    @Mając("^dziś jest \"(.*?)\"$")
    public void dziś_jest(@Format("dd.MM.yyyy") Date dzien) {
    }

    @Kiedy("^ustawiam dla niego promocję na (\\d+)% z długością promocji (\\d+) dni$")
    public void ustawiam_dla_niego_promocję_na_z_długością_promocji_dni(int procentPromocji, int iloscDni) {
    }

    @Wtedy("^w \"(.*?)\" dniu cena produktu \"(.*?)\" ([\\.\\d]+) zł$")
    public void w_dniu_cena_produktu_zł(@Format("dd.MM.yyyy") Date dzien, String produkt,
                                        BigDecimal cena) {
    }


}
