Feature: Registro de cuenta aficionado en ArtSwap

  Scenario: Acceso a la página de registro
    Given que el aficionado se encuentra en la página principal de ArtSwap
    When decide hacer clic en el botón "Registrarme"
    Then la aplicación redirige al aficionado a la página de registro de la cuenta para aficionados

  Scenario: Registro de cuenta de aficionado con datos válidos
    Given que el aficionado se encuentra en la página de registro de la cuenta para aficionados
    And proporciona de manera adecuada su <nombre>, <direccion de correo electronico> y <contrasena>
    And hace clic en el botón "Registrarme"
    Then la aplicación procede a crear la cuenta del aficionado
    And notifica al aficionado que <su cuenta fue creada exitosamente>

    Examples: INPUT
    |Nombre| |Direccion de correo electronico| |contrasena|
    |Raul|   |rcs123@hotmail.com             | |upc123    |
    Examples: OUTPUT
    |Su cuenta fue creada exitosamente|
    |Cuenta registrada de manera exitosa|
  Scenario: Registro de cuenta de aficionado con datos no válidos
    Given que el aficionado está en la página de registro de la cuenta para aficionados
    When el aficionado ingresa <datos que no son validos> en el formulario de registro
    And hace clic en el botón "Registrarme"
    Then el sistema identifica estos errores y muestra un <mensaje de error> en los campos correspondientes
    And el aficionado debe corregir los datos no válidos antes de que la cuenta pueda ser registrada
    
    Examples: INPUT
    |datos que no son validos| 
    |@@@@asdasd              |
    Examples: OUTPUT
    |mensaje de error                       | 
    |Datos invalidos, ingresar datos validos|
