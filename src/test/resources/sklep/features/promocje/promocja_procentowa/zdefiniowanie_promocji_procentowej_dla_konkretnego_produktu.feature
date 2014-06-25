#language: pl
@wip
Funkcja: Promocja procentowa

  Jako administrator chciałbym zdefiniować promocję procentową dla konkretnego produktu

  @PromocjaProcentowa
  Szablon scenariusza: W trakcie trwania promocji z zakresem czasu cena jest obniżona
    Mając produkt "Masło" w cenie "4.00" zł
    I dziś mamy "24.06.2014"
    Kiedy ustawiam dla niego promocję na "10"% okresem promocji od "25.06.2014" do "27.06.2014"
    Wtedy w dniu "<data>" cena produktu "Masło" wynosi "<cena>" zł

  Przykłady:
    | data       | cena |
    | 24.06.2014 | 4.00 |
    | 25.06.2014 | 3.60 |
    | 26.06.2014 | 3.60 |
    | 27.06.2014 | 3.60 |
    | 28.06.2014 | 4.00 |

  @PromocjaProcentowa
  Szablon scenariusza: W trakcie trwania promocji bez zakresu czasu cena jest obniżona
    Mając produkt "Masło" o cenie "4.00" zł
    I dziś mamy "25.06.2014"
    Kiedy ustawiam dla niego promocję na "10"% bez określania zakresu czasowego
    Wtedy w dniu "<data>" cena produktu "Masło" wynosi "<cena>" zł

  Przykłady:
  | data       | cena |
  | 24.06.2014 | 4.00 |
  | 25.06.2014 | 3.60 |
  | 28.09.2222 | 3.60 |

