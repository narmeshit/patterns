# Patrones de diseño - Patterns

Los patrones de diseño son soluciones probadas y reutilizables para problemas comunes en el diseño de software. En Flutter, estos patrones se pueden aplicar para estructurar y organizar el código de manera más eficiente y mantenible.

## Patrones de diseño comunes en Flutter:
- **Patrón Modelo-Vista-Controlador (MVC):** Es un patrón de diseño arquitectónico que separa una aplicación en tres componentes principales: el Modelo, la Vista y el Controlador. Este patrón es común en el desarrollo de aplicaciones para organizar el código y mantener una separación clara entre la lógica de negocio y la interfaz de usuario. 
- **Patrón Singleton:** Este patrón asegura que una clase tenga una única instancia y proporciona un punto de acceso global a ella. Es útil cuando se necesita un único objeto, como un gestor de configuración o una conexión de base de datos.
- **Patrón Factory:** El patrón Factory proporciona una interfaz para crear objetos, pero permite que las subclases alteren el tipo de objeto que se va a crear. Es útil cuando el proceso de creación es complejo o depende de la lógica de negocio.
- **Patrón Decorator:** El Patrón Decorator es útil cuando quieres añadir responsabilidades adicionales a un objeto de forma dinámica.
- **Patrón Provider (Dependencias):** El patrón Provider es muy utilizado en Flutter para gestionar el estado y las dependencias de una aplicación. Proporciona una forma eficiente de compartir objetos entre widgets y reaccionar a cambios en el estado.