FROM node:23-alpine3.20

WORKDIR /app

COPY package.json .

RUN yarn

COPY . .

RUN yarn run build

CMD [ "yarn", "start" ]