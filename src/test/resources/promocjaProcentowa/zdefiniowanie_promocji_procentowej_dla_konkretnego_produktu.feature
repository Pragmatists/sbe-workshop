#language: pl
@wip
Funkcja: Promocja procentowa

  Jako administrator chciałbym zdefiniować promocję procentową dla konkretnego produktu
    
  @PromocjaProcentowa
  Szablon scenariusza: W trakcie trwania promocji cena jest obniżona
    Mając produkt "Masło" o cenie 4 zł 
    Kiedy ustawiam dla niego promocję na 10% okresem promocji od 25.06.2014 do 27.06.2014
    Wtedy w dniu <data> cena produktu "Masło" wynosi <cena> zł
    
    Przykłady:
    |    data    | cena  |
    | 24.06.2014 |  4.00 |
    | 25.06.2014 |  3.60 |
    | 26.06.2014 |  3.60 |
    | 27.06.2014 |  3.60 |
    | 28.06.2014 |  4.00 |
    
    
    
  @PromocjaProcentowa
  Scenariusz: Po okresie trwania promocji cena nie jest obniżona
    Mając produkt "Masło" o cenie 4 zł 
        I dziś jest 25.06.2014
    Kiedy ustawiam dla niego promocję na 10% z długością promocji 10 dni
    Wtedy w 06.07.2014 dniu cena produktu "Masło" 4 zł
