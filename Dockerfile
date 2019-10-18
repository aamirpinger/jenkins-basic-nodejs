FROM node:alpine

COPY . .

EXPOSE 3000

WORKDIR /src

RUN npm install

CMD npm start