# Usar la imagen oficial de Node.js
FROM node:18

# Crear directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto que usa la app
EXPOSE 3000

# Comando para iniciar la app
CMD ["node", "index.js"]
