FROM node:12

WORKDIR /app

COPY ./ ./

RUN npm install --silent

RUN npm run build 

RUN npm install -g serve

EXPOSE 3000
