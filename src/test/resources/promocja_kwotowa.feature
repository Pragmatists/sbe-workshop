#language: pl
@wip
Funkcja: Promocja kwotowa

  Jako administrator chciałbym zdefiniować promocję kwotową dla konkretnego produktu

  Scenariusz: Ustawianie promocji kwotowej
    Mając produkt "Maślanka" o cenie 6 zł
    Kiedy ustawiam dla niego promocję na kwotę 2 zł
    Wtedy cena produktu "Maślanka" wynosi 4 zł

  Scenariusz: Ustawianie promocji kwotowej na obniżkę większą od ceny wyjściowej
    Mając produkt "Maślanka" o cenie 7 zł
    Kiedy ustawiam dla niego promocję na kwotę 8 zł
    Wtedy promocja nie może być wprowadzona
    
  Scenariusz: Obniżka równa cenie
  Mając produkt "Maślanka" o cenie 5 zł
    Kiedy ustawiam dla niego promocję na kwotę 5 zł
    Wtedy promocja nie może być wprowadzona
    
  Scenariusz: Już istnieje promocja na produkt
  Mając produkt "Melon" o cenie 10 zł 
  I ustawionej promocji kwotowej na kwotę 4 zł
    Kiedy ustawiam dla niego promocję na kwotę 5 zł
    Wtedy cena produktu "Melon" wynosi 5 zł
  
  Scenariusz: Długość trwania promocji
  Scenariusz: Możliwość zakończenia promocji