package promocjaProcentowa;

import java.util.HashSet;
import java.util.Set;

public class Magazyn {

    private final Set<Produkt> produkty = new HashSet<Produkt>();

    public void dodajProduct(Produkt p) {
        produkty.add(p);
    }

}
