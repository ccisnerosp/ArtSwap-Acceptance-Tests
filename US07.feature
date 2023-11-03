Feature: Acceso a comunidades de aficionados del arte en ArtSwap
  Scenario: Explorar Comunidades de Aficionados
    Given que el aficionado ha iniciado sesión en ArtSwap
    When el aficionado navega a la sección de "Comunidades de Aficionados del Arte" de la plataforma
    Then el sistema muestra una <lista de comunidades disponibles> para unirse y participar
    Examples: OUTPUT
    |lista de comunidades disponibles |
    |1. Mali Lovers 2. 4Ever Descalzos|
  Scenario: Unirse a una Comunidad
    Given que el aficionado ha seleccionado una <comunidad de su interes>
    When el aficionado hace clic en el botón "Unirse"
    Then el sistema permite al aficionado unirse a la comunidad
    Examples: INPUT
    |4Ever Descalzos|
  Scenario: Participar en Discusiones y Actividades de la Comunidad
    Given que el aficionado es miembro de una comunidad de aficionados del arte
    And desea participar en una actividad
    When el aficionado accede a la comunidad
    And selecciona una <actividad especifica>
    And le da clic al botón “Participar”
    Then el aficionado puede participar en actividades específicas de la comunidad
    Examples: INPUT
    |actividad especifica|
    |reunion para compartir obras y experiencias|