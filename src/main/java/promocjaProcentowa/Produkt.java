package promocjaProcentowa;

import java.math.BigDecimal;
import java.util.Date;
import org.joda.time.DateTime;

public class Produkt {

    private final String nazwa;

    private final BigDecimal cena;

    private Promocja promocja;

    public Produkt(String nazwa, BigDecimal cena) {
        this.nazwa = nazwa;
        this.cena = cena;
    }

    public void dodajPromocje(Promocja promocja) {
        this.promocja = promocja;
    }

    public BigDecimal dajCene(Date dzien) {
        DateTime dzienDateTime = new DateTime(dzien.getTime());
        long dzienPo;
        try {
            dzienPo = promocja.dajDateDo().getTime() + 24 * 3600;
        } catch (NullPointerException e) {
            dzienPo = Long.MAX_VALUE;
        }
        long dzienPrzed2 = promocja.dajDateOd().getTime() - 24 * 3600;
        if(dzienDateTime.isBefore(dzienPo)
                &&
                dzienDateTime.isAfter(dzienPrzed2)) {
            BigDecimal result = cena.multiply(new BigDecimal(100 - promocja.dajProcentPromocji())).divide(new BigDecimal(100));
            return result;
        }
        return cena;
    }

}
