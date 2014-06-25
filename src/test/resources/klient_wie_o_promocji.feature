@wip
Feature: Klient wie o promocji

  Jako klient chciałbym wiedzieć jakie są promocje w sklepie w danym momencie.

  Scenario: Promocja na jeden produkt
    Given W sklepie jest aktywna promocja dla owsianki
    When Klient wchodzi na stronę z listą promocji
    Then Klient widzi promocję dla owsianki
    
 Scenario: Promocja na wiele produktów
    Given W sklepie jest aktywna promocja dla owsianki i maślanki
    When Klient wchodzi na stronę z listą promocji
    Then Klient widzi promocję dla owsianki i maślanki
    
 @automated
 Scenario: Brak promocji
    Given W sklepie nie ma zdefiniowanych żadnych promocji
    When Klient wchodzi na stronę http://localhost:8080/promocje.jsp z listą promocji
    Then Klient widzi pustą listę promocji z informacją "Brak promocji. Zapisz się do news lettera."
 
 @automated
 Scenario: Wyświetlamy promocje na pojedyńcze produkty na najbliższe 7 dni
    Given Są zdefiniowane promocje na najbliższe 7 dni
    | promowany produkt | start      | koniec     | cena | cena z promocją
    | Masło             | 2014-06-02 | 2014-06-08 | 4    | 3.00
    | Maślanka          | 2014-06-10 | 2014-06-30 | 6    | 4.99
    | Melon             | 2014-06-11 | 2014-06-15 | 5    | 4.00
    | Jogurt            | 2014-06-18 | 2014-06-19 | 3    | 1.95
    When Klient wchodzi na stronę http://localhost:8080/promocje.jsp z listą promocji dnia 2014-06-10
    Then Klient widzi listę promocji na najbliższe 7 dni
    | promocja  | start promocji | koniec promocji | cena | cena z promocją
    | Maślanka  | 2014-06-10     | 2014-06-30      | 6    | 4.99
    | Melon     | 2014-06-11     | 2014-06-15      | 5    | 4.00
    
Scenario: Wyświetlenie promocji przy produkcie
    Given W sklepie jest promocja 
    When Klient stoi przy produkcie objętym promocją
    Then Klient na etykiecie widzi warunki promocji

Scenario: Wydrukowanie listy promocji na najbliższe 7 dni
    Given W sklepie są zdefiniowane promocje na najbliższe 7 dni
    When Klient naciska przycisk DRUKUJ
    Then Drukuje się lista promocji
    
Scenario: Klient dodaje się do subskrypcji mejlowej
    Given Klient nie znajduje się na liście mejlingowej
    When Klient dodaje się do subskrypcji
    Then Klient otrzyma potwierdzenie, że został dodany do subskrypcji
    
Scenario: Subskrypcja mejlowa o nowych promocjach
    Given W sklepie kolejnego dnia zaczyna się nowa promocja
    When Klient dodał swojego mejla do subskrypcji
    Then System wysyła do klienta e-maila o promocji
    
Scenario: Subskrypcja mejlowa o nowych promocjach
    Given W sklepie kolejnego dnia zaczyna się nowa promocja
    When Klient dodał swojego mejla do subskrypcji
    Then System wysyła do klienta e-maila o promocji
