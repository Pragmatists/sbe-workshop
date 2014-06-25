#language: pl
@wip
Funkcja: Promocja kwotowa

  Jako administrator chciałbym zdefiniować promocję kwotową dla konkretnego produktu

  Scenariusz: Ustawianie promocji kwotowej
    Mając produkt "Maślanka" o cenie 6 zł
    Kiedy ustawiam dla niego promocję na kwotę 2 zł
    Wtedy cena produktu "Maślanka" 4 zł

  Scenariusz: Ustawianie promocji kwotowej na obniżkę większą od ceny wyjściowej
    Mając produkt "Maślanka" o cenie 6 zł
    Kiedy ustawiam dla niego promocję na kwotę 8 zł
    Wtedy promocja nie może być wprowadzona
    
  Scenariusz: Obniżka równa cenie
  Scenariusz: Już istnieje promocja na produkt
  Scenariusz: Długość trwania promocji
  Scenariusz: Możliwość zakończenia promocji