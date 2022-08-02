#https://hub.docker.com/repository/docker/rleafar/conversao-temperatura

FROM node:16.16.0
WORKDIR /app
COPY ./package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node","server.js"]
