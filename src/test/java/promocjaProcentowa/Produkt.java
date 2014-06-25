package promocjaProcentowa;

import java.math.BigDecimal;

public class Produkt {

    private String nazwa;

    private BigDecimal cena;

    public Produkt(String nazwa, BigDecimal cena) {
        this.nazwa = nazwa;
        this.cena = cena;
    }

    public String getNazwa() {
        return nazwa;
    }

    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }

    public BigDecimal getCena() {
        return cena;
    }

    public void setCena(BigDecimal cena) {
        this.cena = cena;
    }

}
