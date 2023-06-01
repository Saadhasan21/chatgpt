FROM node:16.16.0-alpine

WORKDIR /app/
ENV NODE_ENV production
COPY package*.json .
COPY . .
RUN npm install

CMD node /app/src/app.js