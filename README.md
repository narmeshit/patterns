# Patron Singleton

Vamos a combinar el patrón MVC con el patrón Singleton en una aplicación Flutter. Imaginemos que estamos desarrollando una aplicación que necesita acceder a un servicio de configuración de la aplicación, y este servicio debe seguir el patrón Singleton para asegurar que solo exista una instancia en toda la aplicación.

## Estructura General:

- **Model:** Representa la configuración de la aplicación (en este caso, el tema).
- **Service (Singleton):** Utiliza el patrón Singleton para asegurarse de que solo haya una instancia de este servicio en toda la aplicación. Maneja la lógica para obtener y modificar la configuración de la aplicación.
- **Screen:** La UI que interactúa con el ConfigurationService para mostrar y cambiar la configuración de la aplicación.

## Explicación

- **Model:** AppConfig sigue representando la configuración de la aplicación, pero ahora estamos trabajando directamente con ThemeData para cambiar el tema de la aplicación.

- **Service:** ConfigurationService es un Singleton que maneja el estado del tema de la aplicación. Solo hay una instancia de este servicio en toda la aplicación.

- **Screen:** ConfigScreen permite al usuario cambiar el tema de la aplicación. El método widget.onThemeChanged() llama al método _updateTheme() en MyApp para aplicar el nuevo tema.

- **Main:** MyApp es el punto de entrada de la aplicación y es responsable de cambiar el tema globalmente cuando se detecta un cambio.

## Beneficios

- **Consistencia:** El uso del patrón Singleton asegura que la configuración del tema sea consistente en toda la aplicación.
- **Modularidad:** Separar la lógica de negocio (manejo de temas) de la UI facilita el mantenimiento y escalabilidad.
- **Cambio de Tema Dinámico:** La aplicación puede cambiar entre temas claro y oscuro en tiempo real sin necesidad de reiniciarla.