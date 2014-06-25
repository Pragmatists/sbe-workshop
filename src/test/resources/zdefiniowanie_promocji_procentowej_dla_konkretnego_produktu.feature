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
    
  Scenariusz: Już istnieje promocja procentowa na produkt
    Mając produkt "Masło" o cenie 4 zł objęty inną promocją na 25%
    Kiedy ustawiam dla niego promocję na 50%
    Wtedy cena produktu "Masło" 2 zł
  
  Scenariusz: Już istnieje promocja kwotowa na produkt
    Mając produkt "Masło" o cenie 4 zł objęty inną promocją na 1 zł
    Kiedy ustawiam dla niego promocję na 50%
    Wtedy cena produktu "Masło" 2 zł
    
  Scenariusz: W trakcie trwania promocji cena jest obniżona
    Mając produkt "Masło" o cenie 4 zł 
      I dziś jest 25.06.2014
    Kiedy ustawiam dla niego promocję na 10% z długością promocji 10 dni
    Wtedy w 05.07.2014 dniu cena produktu "Masło" 3,60 zł
    
  Scenariusz: Po okresie trwania promocji cena nie jest obniżona
    Mając produkt "Masło" o cenie 4 zł 
      I dziś jest 25.06.2014
    Kiedy ustawiam dla niego promocję na 10% z długością promocji 10 dni
    Wtedy w 06.07.2014 dniu cena produktu "Masło" 4 zł
    
/*
  Scenariusz: Możliwość zakończenia promocji przed upływem czasu trwania
    Mając produkt "Masło" o cenie wyjściowej 4 zł objęty promocją 10%
    Kiedy deaktywuję promocję dla tego produktu
    Wtedy cena produktu "Masło" wynosi 4 zł
*/