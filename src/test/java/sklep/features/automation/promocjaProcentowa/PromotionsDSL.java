package sklep.features.automation.promocjaProcentowa;

import promocjaProcentowa.Produkt;
import promocjaProcentowa.Promocja;

import java.math.BigDecimal;
import java.util.Date;

public class PromotionsDSL {

    public static Produkt utworzNowyProdukt(String nazwa, BigDecimal cena) {
        return new Produkt(nazwa, cena);
    }

    public static void utworzNowaPromocje(Produkt produkt, int procentPromocji, Date dataOd, Date dataDo) {
        Promocja promocja = new Promocja(procentPromocji, dataOd, dataDo);
        produkt.dodajPromocje(promocja);
    }
}
