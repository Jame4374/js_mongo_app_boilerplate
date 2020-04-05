FROM node:12-slim

WORKDIR /starter
ENV NODE_ENV development

COPY package.json /starter/package.json

RUN npm install --production

COPY .env.example /starter/.env.example
COPY . /starter

CMD ["npm","start"]

EXPOSE 5000
EXPOSE 25
EXPOSE 587
EXPOSE 2525
EXPOSE 80
EXPOSE 443
EXPOSE 8080
