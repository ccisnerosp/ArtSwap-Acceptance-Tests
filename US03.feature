Feature: Visualización de galería virtual en ArtSwap
  Scenario: Acceso a la Galería Principal
    Given que el aficionado ha iniciado sesión en ArtSwap
    When el aficionado accede a la página principal de la aplicación
    Then la plataforma muestra la galeria principal con una selección destacada de obras de arte disponibles para explorar

  Scenario: Acceso a la Galería Virtual de Artista
    Given que el aficionado ha iniciado sesión en ArtSwap
    When el aficionado busca o selecciona un <artista especifico> de su interés
    Then la plataforma muestra la galeria virtual del artista seleccionado con todas sus <obras de arte disponibles>, junto con su <informacion>
    Examples: INPUT
    |artista especifico|
    |Andres Ramirez|
    Examples: OUTPUT
    |obras de arte disponibles| |informacion                                         |
    |Teatro de los sueños     | |Pintura hecha en oleo que representa el sueño humano|

  Scenario: Navegación y Exploración de Obras de Arte
    Given que el aficionado está explorando la Galería Virtual de un artista
    When el aficionado hace clic en una <obra de arte especifica>
    Then la plataforma muestra <detalles completos de la obra>
    Examples: INPUT
    |obra de arte especifica|
    |Tren Vagabundo         |

    Examples: OUTPUT
    |detalles completos de la obra|
    |Escultura de un tren que retrata la soledad que puede presentar un ser humano, durante su vida|
    |Creada en Francia|
    |Precio 550 soles |
  Scenario: Interacción con el Artista
    Given que el aficionado está explorando la Galería Virtual de un artista
    And desea enviar un <mensaje al artista>
    When el aficionado haga clic en “Enviar Mensaje”
    Then la plataforma ejecuta el sistema de mensajería para el aficionado
    Examples: INPUT
    |mensaje al artista|
    |Hola, me interesa tu obra llamada "Tren Vagabundo"|
