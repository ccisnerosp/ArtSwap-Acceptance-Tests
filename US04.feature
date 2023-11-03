Feature: Acceso a recursos educativos del arte en ArtSwap

  Scenario: Explorar Recursos Educativos Disponibles
    Given que el aficionado ha iniciado sesión en ArtSwap
    When el aficionado navega a la sección de "Recursos Educativos del Arte" del sistema
    Then el sistema muestra una lista de recursos educativos disponibles, como <tutoriales>, <cursos en linea> y <materiales de aprendizaje> relacionados con el arte
    Examples: OUTPUT
    |tutoriales|                   |cursos en linea|          |materiales de aprendizaje|
    |Como crear mi primer pintura| |curso de pintura en oleo| |Libro de Leonardo Da Vinci|
  Scenario: Acceder a un Recurso Educativo
    Given que el aficionado ha seleccionado un <recurso educativo de su interes>
    When el aficionado hace clic en el recurso
    Then el sistema redirige al aficionado al recurso educativo
    And proporciona la información del <recurso educativo>
    Examples: INPUT
    |recurso educativo de su interes|
    |Como crear mi primer escultura |
    Examples: OUTPUT
    |En este video encontraras pasos detallados e innovadores para que puedas crear tu primera escultura: (URL del video)|
  Scenario: Valorar y Comentar Recursos Educativos
    Given que el aficionado ha utilizado un recurso educativo
    When el aficionado desea expresar su opinión sobre el recurso
    And le da clic en el botón “Compartir mi experiencia”
    Then el sistema habilitará un campo de edición
    And el aficionado puede proporcionar una <valoracion> y escribir <comentarios sobre su experiencia>
    And el sistema muestra estas valoraciones y comentarios en el recurso educativo seleccionado
    Examples: INPUT
    |valoracion| |comentarios sobre su experiencia              |
    |4.5 puntos| |Buen trato, sus obras eran como las publicadas|