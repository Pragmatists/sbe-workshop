package sklep.features.automation.promocjaProcentowa;

import java.math.BigDecimal;
import java.util.Date;

import cucumber.api.Format;
import cucumber.api.java.pl.Kiedy;
import cucumber.api.java.pl.Mając;
import cucumber.api.java.pl.Wtedy;
import promocjaProcentowa.Produkt;
import promocjaProcentowa.Promocja;

import static org.assertj.core.api.Assertions.assertThat;

public class Steps {

    private Produkt produkt;

    private Date dzis;

    @Mając("^produkt \"(.*?)\" o cenie \"(.*?)\" zł$")
    public void produkt_o_cenie_zł(String nazwa, String cenaStr) {
        BigDecimal cena = new BigDecimal(cenaStr);
        produkt = PromotionsDSL.utworzNowyProdukt(nazwa, cena);
    }

    @Kiedy("^ustawiam dla niego promocję na (\\d+)% okresem promocji od \"(.*?)\" do \"(.*?)\"$")
    public void ustawiam_dla_niego_promocję_na_okresem_promocji_od_do(int procentPromocji,
                                                                      @Format("dd.MM.yyyy") Date dataOd,
                                                                      @Format("dd.MM.yyyy")
                                                                      Date dataDo) {
        PromotionsDSL.utworzNowaPromocje(produkt, procentPromocji, dataOd, dataDo);
    }

    @Wtedy("^w dniu \"(.*?)\" cena produktu \"(.*?)\" wynosi \"(.*?)\" zł$")
    public void w_dniu_cena_produktu_wynosi_zł(
            @Format("dd.MM.yyyy") Date dzien, String nazwaProduktu, String zalozonaCenaStr) {

        BigDecimal zalozonaCena = new BigDecimal(zalozonaCenaStr);
        BigDecimal cenaProduktu = produkt.dajCene(dzien);

        assertThat(cenaProduktu).isEqualTo(zalozonaCena);
    }

    @Mając("^dziś jest \"(.*?)\"$")
    public void dziś_jest(@Format("dd.MM.yyyy") Date dzien) throws Throwable {
        dzis = dzien;
    }

    @Kiedy("^ustawiam dla niego promocję na (\\d+)% bez daty końcowej$")
    public void ustawiam_dla_niego_promocję_na_bez_daty_końcowej(int procentPromocji) throws Throwable {
        Promocja p = new Promocja(procentPromocji, dzis, null);
        produkt.dodajPromocje(p);
    }



}
