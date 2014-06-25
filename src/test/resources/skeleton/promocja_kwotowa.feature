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
