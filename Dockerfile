FROM node:16-alpine

COPY ["package.json", "package-lock.json", "/usr/src/service/app/"]

WORKDIR /usr/src/service/app

RUN npm install

COPY [".", "/usr/src/service/app/"]

CMD ["yarn", "start"]
