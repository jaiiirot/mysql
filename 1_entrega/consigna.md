# Entrega 1

Deberás entregar los avances correspondientes a la primera entrega de tu proyecto final.

## Se debe entregar

- **Descripción de la temática de la base de datos**
- **Diagramas de entidad-relación de la base de datos**
- **Listado de las tablas que comprenden la base de datos**, con descripción de cada tabla, listado de campos, abreviaturas de nombres de campos, nombres completos de campos, tipos de datos, tipo de clave (foránea, primaria, índice(s))
- **Un archivo .sql** que contenga:
  - Script en SQL de creación de la base de datos y tablas. Este puede estar publicado en un repositorio GitHub, con lo cual el documento PDF debe contener los links de las publicaciones.

## Formato

- Aclarar el tipo de archivo en que se espera el desafío.
- Aclarar que debe tener el nombre “Idea+Apellido”.

## Sugerencias

- Permitir comentarios en el archivo.

## Criterios de evaluación

### Funcional

- Presenta la documentación en formato PDF solicitada, la cual muestra toda la información referida a su proyecto.
- **La sección Introducción**: contiene lo referente a la explicación de su proyecto final. Es conciso y no tiene párrafos de relleno.
- **La sección Objetivo**: tiene un detalle de lo que el proyecto busca cubrir en dicho apartado, reverenciando al proyecto en sí y a las diferentes aristas que son cross-funcional al mismo (información contable, de logística, analítica, etcétera).
- **El apartado Situación Problemática**: describe correctamente la necesidad de implementar una base de datos sobre el modelo de proyecto elegido y qué brechas puede solucionar a través de dicha implementación.
- **El apartado Modelo de Negocio**: describe de manera abstracta a la organización que utiliza esta solución. Esta descripción puede estar realizada en un modelo textual o a través de uno o más gráficos, siendo coincidentes con el proyecto presentado.
- **El diagrama E-R (Entidad-Relación)**: representa de manera fiel la estructura de base de datos que visualizamos a través del Esquema generado a partir del archivo .SQL. Muestra las Entidades incluidas en el proyecto, y sus relaciones, coincidiendo todo con la información generada a partir del Script de creación del Esquema. Fue presentado en formato gráfico dentro del documento PDF y fue explicado o mencionado dentro del documento PDF.
- **El apartado Listado de Tablas**: representa de manera fiel las Entidades incluidas en el script de creación del Esquema de datos. Por cada Entidad se encuentran descritos sus campos, el tipo de datos de éstos, y el tipo de clave utilizado. Se combinan las claves únicas, foráneas e índices en aquellas tablas (Entidades) que las requieren.

### Técnico

- Se incluye un script del tipo archivo .SQL, cuyo nombre referencia qué función cumple.
- Se ejecuta el script inicial: (creación de objetos de la bb.dd.) y el mismo no presenta problemas (arroja errores) al ejecutarse. Este script de creación genera correctamente todas las entidades en la base de datos, y sus diferentes relaciones.
- El desarrollo de las tablas: puede no estar completo respecto a la visión del proyecto final, dado que con lo que falta aprender, dicha visión puede cambiar respecto a la idea original.