Feature: Acceso a eventos y exposiciones virtuales en ArtSwap

  Scenario: Explorar Eventos y Exposiciones Virtuales Disponibles
    Given que el aficionado ha iniciado sesión en ArtSwap
    When el aficionado navega a la sección de "Eventos y Exposiciones Virtuales" del sistema
    Then el sistema muestra una <lista de eventos y exposiciones virtuales disponibles> para explorar, incluyendo detalles como la <descripcion>, <fecha> y <hora de inicio>
    Examples: OUTPUT
    |lista de eventos y exposiciones virtuales disponibles| |descripcion| |fecha| |hora de inicio|
    |1. Mali Fest 2. Feria de Arte Virtual| |1. Conoce a los mejores artistas de Mali 2. Ven y conoce las mejores obras virtuales| |1. 3 de mayo 2. 8 de junio| |1. 8 pm 2. 6 pm|
  Scenario: Acceder a un Evento o Exposición Virtual
    Given que el aficionado ha seleccionado un <evento o exposicion virtual>
    When el aficionado hace clic en el botón "Acceder"
    Then el sistema redirige al aficionado al evento o exposición virtual
    And proporciona acceso para explorar las obras de arte y experiencias artísticas en línea
    Examples: INPUT
    |evento o exposicion virtual|
    |Mali Fest|