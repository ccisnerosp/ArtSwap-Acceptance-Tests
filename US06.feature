Feature: Inscripción a eventos y exposiciones presenciales en ArtSwap
  
  Scenario: Explorar Eventos y Exposiciones Presenciales Disponibles
    Given que el aficionado ha iniciado sesión en ArtSwap
    When el aficionado navega a la sección de "Eventos y Exposiciones Presenciales" del sistema
    Then el sistema muestra una <lista de eventos y exposiciones presenciales disponibles> para inscripción, incluyendo detalles como la <ubicacion>, <fecha>, <hora> y <descripcion>
    Examples: OUTPUT
    |lista de eventos y exposiciones presenciales disponibles|
    |1. Festival en Mali 2. Feria en el Museo de los descalzos|
  Scenario: Inscripción a un Evento o Exposición Presencial
    Given que el aficionado ha seleccionado un <evento o exposicion presencial de su interes>
    When el aficionado hace clic en el botón "Inscribirse"
    Then el sistema registra la inscripción del aficionado para el evento o exposición seleccionados
    And muestra una <confirmacion de inscripcion> al aficionado
    Examples: INPUT
    |evento o exposicion presencial de su interes|
    |Festival en Mali|
    Examples: OUTPUT
    |confirmacion de inscripcion|
    |Su incripcion fue registrada exitosamente|
  Scenario: Verificar Inscripciones a Eventos y Exposiciones Presenciales
    Given que el aficionado ha iniciado sesión en ArtSwap
    When el aficionado accede a su perfil o sección de "Mis Eventos y Exposiciones"
    Then el sistema muestra una <lista de eventos y exposiciones presenciales a los que el aficionado esta inscrito>
    And proporciona información detallada sobre cada inscripción, incluyendo la <ubicacion>, <fecha> y <hora del evento>
    Examples: OUTPUT
    |lista de eventos y exposiciones presenciales a los que el aficionado esta inscrito| |ubicacion| |fecha| |hora del evento|
    |1. Festival en Mali| |Museo Mali| |8 de junio| |10 am|
  Scenario: Cancelar Inscripción a un Evento o Exposición Presencial
    Given que el aficionado ha accedido a la lista de sus inscripciones a eventos y exposiciones presenciales
    When el aficionado selecciona un <evento o exposicion al que esta inscrito>
    And el aficionado elige la opción de "Cancelar Inscripción"
    Then el sistema cancela la inscripción del aficionado para ese evento o exposición presencial
    And muestra una <confirmacion de cancelacion al aficionado>
    Examples: INPUT
    |evento o exposicion al que esta inscrito|
    |Festival en Mali|
    Examples: OUTPUT
    |confirmacion de cancelacion al aficionado|
    |Su incripcion se cancelo de manera exitosa|