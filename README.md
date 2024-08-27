# Patron Repository

Maneja la persistencia de datos, encapsulando la lógica para acceder a diferentes fuentes de datos (como bases de datos locales o servicios web) y proporcionando una interfaz uniforme para la aplicación.

## Explicación

- **Modelo (User):** Representa un usuario con propiedades como id, name y email.
- **Repositorio (UserRepository):** Contiene la lógica para obtener los usuarios de la API.
- **Proveedor (UserProvider):** Gestiona el estado de la lista de usuarios y el estado de carga.
- **UI (UserScreen):** Muestra los usuarios obtenidos del repositorio y permite que el usuario dispare la acción de carga.

Este es un ejemplo básico, pero puedes expandirlo para incluir otras fuentes de datos, como bases de datos locales, y usar patrones más complejos como el Bloc o Riverpod para la gestión del estado.