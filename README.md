# El patrón Modelo-Vista-Controlador (MVC)

Es un patrón de diseño arquitectónico que separa una aplicación en tres componentes principales: el Modelo, la Vista y el Controlador. Este patrón es común en el desarrollo de aplicaciones para organizar el código y mantener una separación clara entre la lógica de negocio y la interfaz de usuario.

## Componentes

### Modelo (Model)

Es responsable de manejar los datos y la lógica de negocio. El modelo representa los objetos que la aplicación utiliza para funcionar y las reglas de negocio que se aplican a esos datos.

### Vista (View)

La vista es la parte de la aplicación que presenta la interfaz de usuario. Se encarga de mostrar los datos que provienen del modelo y enviar las interacciones del usuario al controlador.

### Controlador (Controller)

El controlador actúa como un intermediario entre el modelo y la vista. Recibe la entrada del usuario desde la vista, la procesa (a menudo manipulando el modelo), y luego devuelve una salida a la vista.

## ¿Cómo se usa MVC en Flutter?

En Flutter, MVC se puede implementar de varias maneras, pero la separación clara de responsabilidades entre el modelo, la vista y el controlador es esencial para mantener el código modular y fácil de mantener. Aunque Flutter no impone un patrón arquitectónico específico, MVC puede ser útil en aplicaciones donde la separación entre la lógica de negocio y la interfaz de usuario es crucial.

## Ejemplo de su uso en Flutter

Vamos a implementar un sencillo contador siguiendo el patrón MVC.
Este patrón ayuda a mantener el código modular y facilita la escalabilidad y el mantenimiento.

## Explicación:

- **Modelo (CounterModel):** Este almacena y maneja los datos de la aplicación. En este caso, el contador y el método para incrementarlo.

- **Vista (CounterView):** Es una representación de la UI que muestra el valor actual del contador y un botón para incrementarlo. La vista no tiene lógica de negocio, solo se encarga de mostrar la información.

- **Controlador (CounterController):** El controlador maneja la lógica y la interacción entre la vista y el modelo. En este ejemplo, el controlador actualiza el modelo cuando el usuario presiona el botón, y la vista se reconstruye con el nuevo valor del modelo.