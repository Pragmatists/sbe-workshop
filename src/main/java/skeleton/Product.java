package skeleton;

public class Product {

    String name;
    int price;
    private AmountPromotion promotion;

    public Product(String name, int price) {
        this.name = name;
        this.price = price;
    }

    public void setPromotion(AmountPromotion promotion) {
        if (promotion.getAmount() < price && promotion.getAmount() > 0) {
            this.promotion = promotion;
        }

    }

    public AmountPromotion getPromotion() {
        return promotion;
    }

    public boolean isPromoted() {
        return promotion != null;
    }

    public int getPrice() {
        return price - promotion.getAmount();
    }
}
