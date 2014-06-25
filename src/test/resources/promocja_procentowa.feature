#language: pl
@wip
Funkcja: Promocja procentowa

  Jako administrator chciałbym zdefiniować promocję procentową dla konkretnego produktu

  Scenariusz: Ustawianie promocji procentowej
    Mając produkt "Masło" o cenie 4 zł
    Kiedy ustawiam dla niego promocję na 10 %
    Wtedy cena produktu "Masło" 3,60 zł

  Scenariusz: Ustawianie promocji procentowej na obniżkę większą od 100%
    Mając produkt "Masło" o cenie 4 zł
    Kiedy ustawiam dla niego promocję na 110%
    Wtedy promocja nie może być wprowadzona
    
  Scenariusz: Obniżka równa cenie
    Mając produkt "Masło" o cenie 4 zł
    Kiedy ustawiem dla niego promocję na 100%
    Wtedy promocja nie może być wprowadzona
    
  Scenariusz: Już istnieje promocja na produkt
    Mając produkt "Masło" o cenie 4 zł objęty inną promocja na 25%
    Kiedy ustawiam dla niego promocję na 50%
    Wtedy cena produktu "Masło" 2 zł
    
  Scenariusz: Długość trwania promocji
  Scenariusz: Możliwość zakończenia promocji