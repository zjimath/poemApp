# Etapa 1: Construcción del frontend
FROM node:20-alpine AS builder

# Establecer directorio de trabajo
WORKDIR /app

# Copiar archivos necesarios para instalar dependencias
COPY package*.json ./

# Instalar dependencias (sin devDependencies en prod)
RUN npm ci

# Copiar el resto del proyecto
COPY . .

# Compilar el proyecto para producción
RUN npm run build

# Etapa 2: Servir los archivos estáticos con Nginx
FROM nginx:stable-alpine

# Eliminar configuración por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar los archivos compilados desde la etapa anterior
COPY --from=builder /app/dist /usr/share/nginx/html

# Copiar archivo de configuración de Nginx (lo haremos en el siguiente paso)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exponer el puerto 80 (puerto estándar HTTP)
EXPOSE 80

# Iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
