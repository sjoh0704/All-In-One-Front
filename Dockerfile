FROM node:12

RUN npm install -g serve

WORKDIR /app

COPY ./ ./

RUN npm run build 

EXPOSE 3000
