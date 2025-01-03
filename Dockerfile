FROM node:23-alpine3.20

WORKDIR /app

COPY package.json .

RUN yarn

COPY . .

RUN yarn run build

EXPOSE 3000

CMD ["yarn", "run", "preview", "--host", "0.0.0.0"]
