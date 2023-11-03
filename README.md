# Born2beRoot: Virtualización & Administración de Sistemas

## 🚀 Introducción

Born2beRoot es un proyecto que sumerge al participante en el fascinante mundo de la virtualización y administración de sistemas. El objetivo principal es configurar una máquina virtual con un conjunto de normas específicas y estrictas, garantizando la seguridad, eficiencia y funcionalidad del servidor virtualizado.

## 💡 Enfoque y Proceso

### Elección del Sistema Operativo

Para este proyecto, opté por **Debian** como sistema operativo, reconocido por su estabilidad y confiabilidad en entornos de servidor.

### Particionado y Estructura

El particionado fue realizado utilizando **LVM** (Logical Volume Manager), ofreciendo flexibilidad y eficiencia. Opté por seguir directamente la estructura de particiones avanzada sugerida en la parte bonus del proyecto.

### Configuración del Servidor

Se configuró un servidor de WordPress totalmente funcional, apoyado en tres pilares fundamentales:

- **lighttpd**: Un servidor web ligero y de alto rendimiento.
- **MariaDB**: Sistema de gestión de bases de datos relacional.
- **PHP**: Lenguaje de programación de uso general que es especialmente adecuado para el desarrollo web.

Como servicio adicional y complementando el conjunto, configuré **phpMyAdmin**, una herramienta de administración de bases de datos a través de la web, permitiendo una gestión intuitiva y eficaz de MariaDB.

### Seguridad y Monitoreo

La seguridad fue una prioridad en este proyecto. Se estableció una política de contraseñas fuertes, y se limitó el acceso SSH al puerto 4242, prohibiendo el acceso root a través de este medio. Además, se implementó un firewall, dejando únicamente los puertos esenciales abiertos.

Para el monitoreo del sistema, creé un script en bash llamado [monitoring.sh](./monitoring.sh). Este script muestra información vital del servidor en todos los terminales cada 10 minutos, incluyendo uso de CPU, memoria, número de conexiones activas, entre otros.

## 🏆 Logros

- Configuración exitosa de un servidor Debian virtualizado siguiendo normativas estrictas.
- Implementación de servicios adicionales que agregan valor y funcionalidad al servidor.
- Enfoque en seguridad y monitoreo, garantizando la integridad y el rendimiento del sistema.

## 🔍 Conclusión

Born2beRoot no es solo un proyecto, es una demostración de habilidades en administración de sistemas y virtualización. Mi enfoque meticuloso y determinado en cumplir y superar los requisitos evidencia mi capacidad y compromiso en entregar soluciones de alta calidad en el ámbito de la informática.

---

👤 Pablo Palma](mailto:pablopalmappr@gmail.com) | 📜 [LinkedIn](https://www.linkedin.com/in/pablopalmarodr%C3%ADguez/) | 📧 [Correo](pablopalmappr@gmail.com) 

---
