FROM node:12

WORKDIR /app

COPY ./ ./

RUN npm install --silent

EXPOSE 3000
