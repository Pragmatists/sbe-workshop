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
    
 Scenario: Brak promocji
    Given W sklepie nie ma zdefiniowanych żadnych promocji
    When Klient wchodzi na stronę z listą promocji
    Then Klient widzi pustą listę promocji
 
 @automated
 Scenario: Brak aktualnych promocji ale są promocje zdefiniowane na najbliższe 7 dni
    Given W sklepie nie ma zdefiniowanych aktualnych promocji ale są zdefiniowane promocje na najbliższe 7 dni
    | promowany produkt | start      | koniec     | cena | cena z promocją
    | Masło             | 2014-06-02 | 2014-06-08 | 4    | 3
    | Maślanka          | 2014-06-10 | 2014-06-30 | 6    | 4
    | Melon             | 2014-06-11 | 2014-06-15 | 5    | 4.50
    | Jogurt            | 2014-06-18 | 2014-06-19 | 3    | 1
    When Klient wchodzi na stronę z listą promocji dnia 2014-06-10
    Then Klient widzi listę promocji na najbliższe 7 dni
    | promocja | start promocji | koniec promocji |
    
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
