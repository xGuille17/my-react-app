# Usa la imagen de Node.js como base
FROM node:14

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el package.json y el package-lock.json para instalar dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del proyecto
COPY . .

# Construye la aplicación para producción
RUN npm run build

# Expone el puerto 3000
EXPOSE 3000

# Comando por defecto para iniciar la app
CMD ["npm", "start"]
