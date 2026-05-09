# 🛸 Retro Space Invaders - Proyecto Telemática

Este proyecto consiste en el diseño e implementación de un **servicio telemático a nivel de producción**, utilizando contenedores para garantizar un despliegue rápido, escalable y persistente. Se ha desarrollado un juego clásico de "Space Invaders" como servicio consumible.

## 🚀 Requerimientos del Sistema
* **Docker**: Para la contenedorización del servicio.
* **Git**: Para la gestión de versiones y trazabilidad.
* **Nginx (Alpine)**: Servidor web ligero utilizado como base en la imagen.

## 📂 Estructura del Repositorio
* `/app`: Contiene el código fuente del servicio (HTML5, CSS3 y JavaScript).
* `Dockerfile`: Script de automatización para la construcción de la imagen de producción.
* `README.md`: Manual del desarrollador y guía de despliegue.

## 🛠️ Guía de Despliegue (Paso a Paso)

Siga estas instrucciones para poner el servicio en marcha en un servidor de producción:

1. **Clonar el repositorio:**
   git clone https://github.com/allesbi/proyecto-telematica-juego.git
   cd proyecto-telematica-juego 

2. **Construir la imagen(Build):**
   docker build -t space-invaders-telematica .

3. **Poner a correr la imagen:**
   docker run -d --name juego -p 8080:80 space-invaders-telematica
