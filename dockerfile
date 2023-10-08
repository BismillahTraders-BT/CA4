# Use an official MySQL image as the base image
FROM mysql:latest

# Environment variables for database configuration
ENV MYSQL_DATABASE=mlops
ENV MYSQL_ROOT_PASSWORD=root

# Copy the initialization SQL script to a directory in the container
COPY init.sql /docker-entrypoint-initdb.d/

# Expose MySQL default port (3306)
EXPOSE 3306

FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]

