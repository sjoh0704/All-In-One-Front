FROM node:14.15.4

RUN npm install -g serve

WORKDIR /app

COPY ./ ./

# build
RUN npm run build 

EXPOSE 3000

# execute
ENTRYPOINT ["serve", "-s", "build"]