# Patron Provider (Dependencias)

El patrón Provider es muy utilizado en Flutter para gestionar el estado y las dependencias de una aplicación. Proporciona una forma eficiente de compartir objetos entre widgets y reaccionar a cambios en el estado.

## Patrón MVC utilizando el patrón Provider en Flutter

Podemos usar Provider como la herramienta para gestionar el estado y actualizar la interfaz de usuario. Provider simplifica el proceso de notificar a la vista cuando cambian los datos en el modelo.

### Explicación
- **Model:** Gestiona la lista de tareas. Al heredar de ChangeNotifier, puede notificar a sus consumidores cuando la lista de tareas cambia.
- **Screen:** Muestra la lista de tareas y permite agregar, eliminar o marcar tareas como completadas. Utiliza Provider.
- **Main:** Inicializa Provider y se asegura de que TaskModel esté disponible para todas las pantallas de la aplicación.

### Beneficios
- **Reactividad:** La UI se actualiza automáticamente cuando el modelo cambia, gracias a Provider.
- **Modularidad:** El código está estructurado de forma clara en modelo, vista y controlador.eliminar o marcar tareas como completadas. Utiliza Provider.
- **Mantenibilidad:** La separación de responsabilidades facilita el mantenimiento y la escalabilidad de la aplicación.