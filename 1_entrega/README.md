# Base de datos de LaEsuela

### Descripción

La base de datos de **LaEscuela** está diseñada para gestionar la información de una escuela secundaria técnica con una duración de 6 años. Su principal función es registrar y administrar datos relacionados con:

- **Cursos**
- **Estudiantes**
- **Materias**
- **Profesores**
- **Tutores**

### Objetivos

Los principales objetivos de esta base de datos son:

1. **Registro de Estudiantes y Materias**:

   - Registrar a cada estudiante junto con las materias que está cursando.
   - Asignar o registrar el curso correspondiente a cada estudiante.

2. **Gestión de Profesores**:

   - Registrar los profesores responsables de cada materia.
   - Mantener un registro de las materias y los estudiantes inscritos en ellas.

3. **Información para Tutores**:
   - Permitir que los tutores accedan a la información completa de un estudiante, incluyendo:
     - Materias aprobadas y no aprobadas.
     - Notas finales.
     - Profesores que evaluaron y registraron las notas.

Este sistema busca centralizar y optimizar la gestión académica, facilitando el acceso a la información tanto para el personal administrativo como para los tutores.

## Diagrama Entidad Relacion & Tablas

![Diagrama Entidad Relacion](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj2Keg4fxLACO5CQ_pYYzia1q89UhEk8zit7YL0Q6EiIxxBXOLOqZWRzB9QvCwFHAHb5E_gJt3inJ2_IT8dUW092EHTaMWbbOHyqGacC4dqGQ_MUY6hqfX7Q3FX98wz9tFX5WznXHvf3tEr/s1600/8.gif)

## Tablas y su USo

Cursos
|tabla |concepto |tipo de dato|tipo de clave |
|------|------------------------------------------------|------------|--------------|
|id |identificar cada curso con un caracter unico | INT | primaria |
|año |año del curso que este cursando el estudiante | INT | N/A |

## Archivo
