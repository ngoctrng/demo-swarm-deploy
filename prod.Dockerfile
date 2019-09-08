FROM node:10-alpine

# Create app directory
WORKDIR /app

COPY package*.json .
RUN npm install --production

RUN npm run build
COPY dist dist

EXPOSE 3000