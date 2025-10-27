FROM node:18-alpine AS build

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --production

FROM node:18-alpine

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/node_modules ./node_modules
COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
