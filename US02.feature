Feature: Edición de información de perfil de aficionado en ArtSwap

  Scenario: Acceso a la página de perfil
    Given que el aficionado ha registrado una cuenta en la aplicación
    When le da clic al botón de “Mi perfil”
    Then el sistema mostrará la página de perfil
    And los <datos ingresados> en la cuenta del aficionado 
    Examples: OUTPUT
    |datos ingresados|
    |Carlos
     16 años
     Peru|
  Scenario: Edición de información de perfil
    Given que el aficionado se encuentra en la página de perfil
    When le da clic al botón “Editar Perfil”
    Then el sistema habilitará campos de edición en la información de perfil del aficionado

  Scenario: Registro de edición
    Given que el aficionado ha ingresado su  <informacion de perfil actualizada>
    When el aficionado le da clic al botón “Guardar cambios”
    Then el sistema reemplaza la <informacion antigua registrada>
    And la reemplaza con los <datos actualizados>
    Examples: INPUT
    |informacion de perfil actualizada| 
    |Carlos
     18 años
     Mexico|
    Examples: OUTPUT
    |informacion antigua registrada| 
    |Carlos
     16 años
     Peru|
    |datos actualizados|
    |Carlos
     18 años
     Mexico|