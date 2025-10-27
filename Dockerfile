# Stage 1: build / dependencies
FROM node:18-alpine AS build

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --production

# Stage 2: final runtime
FROM node:18-alpine

WORKDIR /usr/src/app

# Install curl for health check
RUN apk add --no-cache curl

COPY --from=build /usr/src/app/node_modules ./node_modules
COPY . .

EXPOSE 3000

# Health check
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
    CMD curl -sS --fail http://localhost:3000/api/health || exit 1

CMD ["node", "server.js"]
