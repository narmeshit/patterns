# Patron Factory

El patrón Factory proporciona una interfaz para crear objetos, pero permite que las subclases alteren el tipo de objeto que se va a crear. Es útil cuando el proceso de creación es complejo o depende de la lógica de negocio.

## Casos de Uso del Patrón Factory

- **Interfaz Gráfica de Usuario:** Dependiendo del sistema operativo, puedes necesitar crear diferentes tipos de botones, menús, o ventanas.
- **Aplicaciones Multiplataforma:** En una aplicación móvil, podrías necesitar crear diferentes widgets dependiendo de si la aplicación está corriendo en Android o iOS.

## Explicación del ejemplo
- **ButtonFactory:** Es la clase que implementa el patrón Factory. El método createButton recibe el tipo de botón, el texto del botón y una función onPressed para manejar el evento de clic.
- **ButtonType:** Es una enumeración que representa los diferentes tipos de botones que podemos crear.
- **MyApp:** Es la aplicación principal, donde usamos la fábrica para crear diferentes botones y mostrarlos en la interfaz.