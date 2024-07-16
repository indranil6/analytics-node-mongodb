#FROM node:14

#WORKDIR /usr/src/app

#COPY package*.json ./

#RUN npm install
#RUN npm ci --only=production

#COPY . .

#EXPOSE 3000

#CMD [ "node", "index.js"]

FROM node:9-slim

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 3000

CMD ["npm", "start"]