#language: pl
Funkcja: Promocja kwotowa

  Jako administrator chciałbym zdefiniować promocję kwotową dla konkretnego produktu
  Poprawna kwota promocji jest mniejsza od ceny produktu i większa od zera

  Scenariusz: Wpływ kwoty promocji na cenę produktu
    Mając produkt o cenie 6 zł
    Kiedy ustawiam dla niego promocję na kwotę 2 zł
    Wtedy cena produktu wynosi 4 zł

  Szablon scenariusza: Brak możliwości ustawienia promocji kiedy kwota promocji jest nieprawidłowa
    Mając produkt o cenie <cena>
    Kiedy ustawiam dla niego promocję na kwotę <kwota>
    Wtedy promocja nie może być wprowadzona
    
    Przykłady:
    | cena | kwota |
    | 4 zł | 4 zł |
    | 2 zł | 6 zł |
    | 2 zł | -1 zł |
    | 5 zł | 0 zł  |
