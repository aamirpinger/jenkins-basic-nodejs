FROM node:alpine

COPY . .

EXPOSE 3000

RUN npm install

CMD npm start