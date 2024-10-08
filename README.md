# Base de datos Universidad 📚

## Tabla de contenido 
| Indice | Título  |
|--|--|
| 1. | [Descripción_del_proyecto](#Descripción_del_proyecto) |
| 2. | [Estructura_de_la_Base_de_Datos](#Estructura_de_la_Base_de_Datos) |
| 3. | [Autores](#Autores) |

# Descripción del Proyecto 🚀
Esta base de datos para una institución educativa que permita administrar de manera eficiente la información relacionada con estudiantes, cursos, docentes, aulas y horarios.
Este sistema facilitará la inscripción de estudiantes, la asignación de cursos a docentes, la programación de clases y el uso de aulas.

## El sistema incluirá las siguientes funcionalidades:

### Gestión de Estudiantes:

Registro y actualización de información personal de los estudiantes.
Inscripción en cursos ofrecidos por la institución.

### Gestión de Cursos:

Creación y modificación de cursos, incluyendo nombre, descripción y créditos.
Asignación de docentes a cada curso.

### Gestión de Docentes:

Registro de información sobre los docentes, incluyendo especialidades.
Asignación de docentes a cursos específicos.

### Gestión de Aulas:

Registro y actualización de aulas disponibles, incluyendo capacidad.
Programación de cursos en aulas específicas.

### Gestión de Horarios:

Definición de horarios para los cursos, incluyendo días y horas.
Asignación de horarios a los cursos programados.

### Informes y Consultas:

Generación de informes sobre inscripciones, cursos, docentes y horarios.
Consultas sobre la disponibilidad de aulas y horarios.


# Imagen de la base de datos Universidad 📝:

![image](https://github.com/user-attachments/assets/33251272-6430-461c-9d6b-203bce853a92)


# Estructura de la Base de Datos 📺:
La base de datos consta de las siguientes tablas:

## Estudiantes:

![image](https://github.com/user-attachments/assets/739dc772-0bb5-473c-ba71-c0094f8a5d6e)

## Cursos horarios:

![image](https://github.com/user-attachments/assets/d53a30cd-1559-4881-94e1-08c82efb2f21)

## Horarios:

![image](https://github.com/user-attachments/assets/3e254a5c-39aa-402f-a9f4-c878f11e1a54)

## Estudiantes Cursos:

![image](https://github.com/user-attachments/assets/432e3c7b-94a4-488c-b537-b28457a27770)

## Cursos:

![image](https://github.com/user-attachments/assets/08888de6-9cbe-4659-9d15-a6fa56c23b01)

## Cursos_Aula:

![image](https://github.com/user-attachments/assets/f6de67cc-6542-44c2-92eb-188761a28012)

## Cursos_docentes:

![image](https://github.com/user-attachments/assets/f1f6ddc2-d5bc-4765-b62c-3592f17b9951)

## Docentes:

![image](https://github.com/user-attachments/assets/accb6f9d-31fc-41cc-9aee-834160f8b00e)

## Aulas:

![image](https://github.com/user-attachments/assets/3aae4382-a94e-486d-86c5-3e18ae24a4e7)



# Primera Forma Normal (1FN)
## Acciones:

Eliminación de grupos repetitivos: Se asegura que cada columna de las tablas contenga valores atómicos (sin listas ni conjuntos). Por ejemplo, en la tabla de Estudiantes, se evita que haya múltiples correos electrónicos en una sola fila.
Identificación de la clave primaria: Se establece una clave primaria única para cada tabla, como ID_Estudiante, ID_Curso, etc.

# Segunda Forma Normal (2FN)
## Acciones:

Eliminación de dependencias parciales: Se garantiza que todos los atributos de una tabla dependan completamente de la clave primaria. Por ejemplo, en la tabla de Inscripción, todos los atributos dependen del par (ID_Estudiante, ID_Curso), evitando que atributos como Fecha_Inscripción dependan solo de ID_Curso.
Creación de tablas adicionales: Se crean tablas adicionales si es necesario para mantener la dependencia completa, como la separación de cursos, aulas y horarios en tablas distintas.

# Tercera Forma Normal (3FN)
## Acciones:

Eliminación de dependencias transitivas: Se asegura que no haya atributos que dependan de otros atributos que no sean la clave primaria. Por ejemplo, si se tiene información sobre la especialidad de un docente, esta no debe estar en la tabla de cursos; en su lugar, se relaciona la tabla de cursos directamente con la tabla de docentes.
Revisión de relaciones: Se revisan las relaciones entre tablas para asegurar que cada atributo en una tabla se relacione directamente con la clave primaria.





## Autores👤:

-[Mariana Rueda](https://github.com/mariana34r)
-[Ronaldo Oviedo](https://github.com/RonaldoOviedo19)






