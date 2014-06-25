package promocjaProcentowa;

import java.math.BigDecimal;
import java.util.Date;

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
        if(dzien.before(promocja.dajDateDo()) && dzien.after(promocja.dajDateOd())) {
            return cena.multiply(new BigDecimal(promocja.dajProcentPromocji())).divide(new BigDecimal(100));
        }
        return cena;
    }

}
