FROM node:alpine

COPY . /jenkins-basic-nodejs

EXPOSE 3000

RUN npm install

CMD npm start