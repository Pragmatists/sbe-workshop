package promocjaProcentowa;

import java.util.Date;

public class Promocja {

    private final int procentPromocji;
    private final Date dataOd;
    private final Date dataDo;

    public Promocja(int procentPromocji, Date dataOd, Date dataDo) {
        this.procentPromocji = procentPromocji;
        this.dataOd = dataOd;
        this.dataDo = dataDo;
    }

    public Date dajDateDo() {
        return dataDo;
    }

    public Date dajDateOd() {
        return dataOd;
    }

    public int dajProcentPromocji() {
        return procentPromocji;
    }
}
