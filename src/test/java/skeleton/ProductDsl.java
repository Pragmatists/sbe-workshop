package skeleton;


import com.payu.sbe.promotions.amount.AmountPromotion;
import com.payu.sbe.promotions.amount.Product;

public class ProductDsl {


    private Product product;

    public void createProduct(int price) {
        product = new Product("Maślanka", price);
    }


    public void setPromotion(int amount) {
        AmountPromotion promotion = new AmountPromotion(amount);
        product.setPromotion(promotion);
    }

    public int getProductPrice() {
        return product.getPrice();
    }

    public boolean isProductPromoted() {
        return product.isPromoted();
    }
}
