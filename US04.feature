Feature: Acceso a recursos educativos del arte en ArtSwap

  Scenario: Explorar Recursos Educativos Disponibles
    Given que el aficionado ha iniciado sesión en ArtSwap
    When el aficionado navega a la sección de "Recursos Educativos del Arte" del sistema
    Then el sistema muestra una lista de recursos educativos disponibles, como tutoriales, cursos en línea y materiales de aprendizaje relacionados con el arte

  Scenario: Acceder a un Recurso Educativo
    Given que el aficionado ha seleccionado un recurso educativo de su interés
    When el aficionado hace clic en el recurso
    Then el sistema redirige al aficionado al recurso educativo
    And proporciona la información del recurso educativo

  Scenario: Valorar y Comentar Recursos Educativos
    Given que el aficionado ha utilizado un recurso educativo
    When el aficionado desea expresar su opinión sobre el recurso
    And le da clic en el botón “Compartir mi experiencia”
    Then el sistema habilitará un campo de edición
    And el aficionado puede proporcionar una valoración y escribir comentarios sobre su experiencia
    And el sistema muestra estas valoraciones y comentarios en el recurso educativo seleccionado
