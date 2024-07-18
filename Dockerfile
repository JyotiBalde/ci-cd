FROM node:22-alpine

WORKDIR /usr/src/app

COPY COPY package.json package-lock.json ./


# Debugging step: list the files
RUN ls -l /usr/src/app

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm","start"]
