package promotionsInfo;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PromotionsInfoDSL {
    private Date todayDate;

    private PromotionItemsService promotionItemsService = new PromotionItemsService();
    private List<PromotionItem> items;

    public void setTodayDate(Date todayDate) {
        this.todayDate = todayDate;
    }

    public Date getTodayDate() {
        return todayDate;
    }

    public void setPromotionItems(List<PromotionTestItem> promotiontestItems) {
        try {
            List<PromotionItem> promotionItems = new ArrayList<PromotionItem>();
            for (PromotionTestItem promotionTestItem : promotiontestItems) {
                PromotionItem pi = new PromotionItem();
                pi.setName(promotionTestItem.getPromowanyProdukt());
                pi.setStart(new SimpleDateFormat("yyyy-MM-dd").parse(promotionTestItem.getStart()));
                pi.setEnd(new SimpleDateFormat("yyyy-MM-dd").parse(promotionTestItem.getKoniec()));
                promotionItems.add(pi);
            }
            promotionItemsService.persist(promotionItems);
        } catch (Exception e) {

        }
    }

    public void goToPromotionsPage() {
        items = promotionItemsService.getPromotionItems(todayDate);
    }

    public boolean promotionItemsContainsOnly(List<String> itemNames) {
        int count = 0;
        for (String itemName : itemNames) {
            for (PromotionItem item : items) {
                if (item.getName().equals(itemName)) {
                    count++;
                }
            }
        }
        return count == items.size();
    }
}
