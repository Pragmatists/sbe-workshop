package promotionsInfo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.joda.time.DateMidnight;

public class PromotionItemsService {

    public List<PromotionItem> getPromotionItems(Date todayDate) {
        List<PromotionItem> filteredList = new ArrayList<PromotionItem>();
        DateMidnight today = new DateMidnight(todayDate);
        DateMidnight nextWeek = today.plusDays(7);
        for (PromotionItem item : promotionItems) {
            if (new DateMidnight(item.getEnd()).isAfter(today)
                    && new DateMidnight(item.getStart()).isBefore(nextWeek)) {
                filteredList.add(item);
            }
        }
        return filteredList;
    }

    private List<PromotionItem> promotionItems;

    public void persist(List<PromotionItem> promotionItems) {
        this.promotionItems = promotionItems;
    }
}
