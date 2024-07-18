FROM node:22-alpine

WORKDIR /usr/src/app

COPY Package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm","start"]
