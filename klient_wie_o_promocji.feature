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
    
 Scenario: Brak aktualnych promocji ale są promocje zdefiniowane na najbliższe 7 dni
    Given W sklepie nie ma zdefiniowanych aktualnych promocji ale są zdefiniowane promocje na najbliższe 7 dni
    When Klient wchodzi na stronę z listą promocji
    Then Klient widzi listę promocji na najbliższe 7 dni
    


