FROM node:10-alpine AS builder

# Add OS-level dependencies
RUN apk add --no-cache git

# Install docpad globally at a working version

RUN npm install -g docpad@6.79.4

# Install npm dependencies
COPY package.json /app/package.json
WORKDIR /app
RUN npm install

# Build and test website
COPY . /app
RUN $(npm bin)/grunt lint
RUN npm test

# Build final image
FROM nginx:alpine
COPY --from=builder /app/out /usr/share/nginx/html
