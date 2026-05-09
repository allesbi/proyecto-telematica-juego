# 1. Definición de la Imagen Base: Usamos Alpine por su seguridad y ligereza
FROM nginx:alpine

# 2. Copia de Artefactos: Transferimos el código fuente al directorio del servidor web
# El servidor Nginx busca por defecto el archivo index.html en esta ruta
COPY ./app /usr/share/nginx/html

# 3. Documentación de Red: Indicamos que el servicio escuchará en el puerto estándar HTTP
EXPOSE 80

# 4. Punto de Entrada: Ejecutamos el servidor en modo "foreground" (primer plano)
# Esto es esencial para que el contenedor de Docker no se detenga inmediatamente
CMD ["nginx", "-g", "daemon off;"]

