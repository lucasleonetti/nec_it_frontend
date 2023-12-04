# NEC-IT technology - Sistema Transaccional para la Gestión Eficiente Interdepartamental Empresarial (MVP)

![NEC-IT logo](<https://github.com/lucasleonetti/nec_it_frontend/blob/developer/assets/logo/necit_logo_black-removebg-preview.png?raw=true>)

## Descripción

NEC IT es un sistema transaccional diseñado para optimizar la gestión y comunicación entre los diferentes departamentos de una institución empresarial. Desarrollado con el objetivo de centralizar y agilizar los procesos, NEC IT ofrece notificaciones en tiempo real, dashboards ejecutivos personalizados y un seguimiento detallado de las actividades de cada departamento.

## Características Principales

Centralización y Coordinación Eficiente: Conecta y sincroniza las operaciones departamentales para mejorar la colaboración y reducir los tiempos de respuesta.

Notificaciones en Tiempo Real: Agiliza la toma de decisiones con alertas instantáneas para los responsables de cada departamento.

Dashboard Ejecutivo Personalizado: Proporciona a los responsables una visión integral de las actividades y el estado actual de su departamento.

Seguimiento Detallado de Actividades: Permite un seguimiento completo, desde el registro de peticiones hasta la asignación de tareas, mejorando la rendición de cuentas y la transparencia.

## Tecnologías

- Frontend: Flutter, Dart, Riverpod (State Management), Dio (HTTP Client).
- Backend: Java 17, Springboot, Maven, JPA, Hibernate, PostgreSQL.

## Casos de uso desarrollados

**Gestion de Peticiones:**

**Registrar Petición:**  
_Actor Principal:_ Responsable de Departamento.  
_Descripción:_ El Responsable de Departamento puede registrar una nueva petición en nombre de su departamento, especificando el tipo de servicio requerido y proporcionando detalles adicionales, como la descripción del problema.

**Validar Petición:**  
Actor Principal: Responsable de Departamento.  
Descripción: El Responsable de Departamento puede validar y revisar las peticiones registradas para asegurarse de que estén completas y se ajusten a los requerimientos antes de su procesamiento.

**Consultar Petición:**  
_Actor Principal:_ Responsable de Departamento.  
_Descripción:_ Permite al Responsable de Departamento consultar el estado de las peticiones registradas, incluyendo información sobre si han sido asignadas a un colaborador y su estado actual.

**Gestion de Tareas:**

**Asignar Tarea:**  
_Actor Principal:_ Responsable de Departamento.  
_Descripción:_ El Responsable de Departamento puede asignar tareas, derivadas de las peticiones recibidas, a los colaboradores de su departamento, especificando la tarea a realizar, el colaborador asignado y la fecha límite.

**Visualizar Tarea Pendiente:**  
_Actor Principal:_ Colaborador.  
_Descripción:_ Los colaboradores pueden ver las tareas pendientes asignadas a ellos por el Responsable de Departamento. Esto les proporciona una lista de tareas por completar, incluyendo detalles y fechas límite.

## Prueba y Ejecucion

**Requisitos:**

- Flutter SDK
- Android Studio o Visual Studio Code
- Dart SDK
- Dispositivo Android o Emulador
- Node.js > 14.0

**Ejecución:**

- Clonar el repositorio
- Abrir el proyecto en Android Studio o Visual Studio Code
- Ejecutar la prueba de servidor:
   esta disponible el repositorio [nec-it_server_test](<https://github.com/lucasleonetti/nec-it_server_test>) para ejecutar el servidor de prueba en local utilizando Node.js.
- ejecutar en la terminal `npm install` para instalar las dependencias
- ejecutar en la terminal `node server.js` para iniciar el servidor
- Ejecutar el comando `flutter pub get` en la terminal
- Ejecutar el comando `flutter run` en la terminal
