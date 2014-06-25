#language: pl
@wip
Funkcja: Promocja procentowa

  Jako administrator chciałbym zdefiniować promocję procentową dla konkretnego produktu

  Scenariusz: Ustawianie promocji procentowej
    Mając produkt "Masło" o cenie 4 zł
    Kiedy ustawiam dla niego promocję na 10 %
    Wtedy cena produktu "Masło" 3,60 zł

  Scenariusz: Ustawianie promocji procentowej na obniżkę większą od ceny wyjściowej
    Mając produkt "Maślanka" o cenie 6 zł
    Kiedy ustawiam dla niego promocję na kwotę 8 zł
    Wtedy promocja nie może być wprowadzona
    
  Scenariusz: Obniżka równa cenie
  Scenariusz: Już istnieje promocja na produkt
  Scenariusz: Długość trwania promocji
  Scenariusz: Możliwość zakończenia promocji