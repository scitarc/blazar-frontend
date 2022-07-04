FROM node:16.15.1-alpine

WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package*.json .

RUN npm install

RUN npm install -g @quasar/cli

COPY . .

RUN chown -R node:node ./node_modules

CMD ["npm", "run", "dev"]
