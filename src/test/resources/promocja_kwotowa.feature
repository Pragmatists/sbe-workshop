#language: pl
@wip
@promocja_kwotowa
Funkcja: Promocja kwotowa

  Jako administrator chciałbym zdefiniować promocję kwotową dla konkretnego produktu

  @todo
  Scenariusz: Wpływ kwoty promocji na cenę produktu
    Mając produkt "Maślanka" o cenie 6 zł
    Kiedy ustawiam dla niego promocję na kwotę 2 zł
    Wtedy cena produktu "Maślanka" wynosi 4 zł

  @todo
  Szablon scenariusza: Brak możliwości ustawienia promocji
    Mając produkt "Maślanka" o cenie <cena>
    Kiedy ustawiam dla niego promocję na kwotę <kwota>
    Wtedy promocja nie może być wprowadzona
    
    Przykłady:
    | cena | kwota |
    | 4 zł | 4 zł |
    | 2 zł | 6 zł |
    | 2 zł | -1 zł |
    | 5 zł | 0 zł  |

    
/*    
  Scenariusz: Obniżka równa cenie
  Mając produkt "Maślanka" o cenie 5 zł
    Kiedy ustawiam dla niego promocję na kwotę 5 zł
    Wtedy promocja nie może być wprowadzona
    
  Scenariusz: Już istnieje promocja na produkt
  Mając produkt "Melon" o cenie 10 zł 
  I ustawionej promocji kwotowej na kwotę 4 zł
    Kiedy ustawiam dla niego promocję na kwotę 5 zł
    Wtedy cena produktu "Melon" wynosi 5 zł
  
  Scenariusz: Długość trwania promocji bez daty końcowej
  Mając produkt "Melon" o cenie 10 zł 
  I ustawionej promocji kwotowej na kwotę 4 zł
    Kiedy ustawiam dla niego promocję na kwotę 5 zł
    Wtedy cena produktu "Melon" wynosi 5 zł
  
  Scenariusz: Długość trwania promocji z ustaloną datą końcową
  Scenariusz: Możliwość zakończenia promocji
  */
