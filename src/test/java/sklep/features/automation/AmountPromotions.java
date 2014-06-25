package sklep.features.automation;


import static org.assertj.core.api.Assertions.assertThat;

import com.payu.sbe.promotions.amount.Product;

import cucumber.api.java.pl.Kiedy;
import cucumber.api.java.pl.Wtedy;

public class AmountPromotions {

    Product product;
    ProductDsl productDsl = new ProductDsl();

    @cucumber.api.java.pl.Mając("^produkt o cenie (\\d+) zł$")
    public void produkt_o_cenie_zł(int price) throws Throwable {
        productDsl.createProduct(price);
    }

    @Kiedy("^ustawiam dla niego promocję na kwotę (-?\\d+) zł$")
    public void ustawiam_dla_niego_promocję_na_kwotę_zł(int amount) throws Throwable {
        productDsl.setPromotion(amount);

    }

    @Wtedy("^cena produktu wynosi (\\d+) zł$")
    public void cena_produktu_wynosi_zł(int amount) throws Throwable {

        assertThat(productDsl.getProductPrice()).isEqualTo(amount);
    }

    @Wtedy("^promocja nie może być wprowadzona$")
    public void promocja_nie_może_być_wprowadzona() throws Throwable {
       assertThat(productDsl.isProductPromoted()).isFalse();
    }


}
