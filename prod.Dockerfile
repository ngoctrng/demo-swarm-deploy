# build production stage
FROM node:10-alpine
WORKDIR /app

COPY dist dist
COPY package*.json ./
RUN npm install --production

EXPOSE 3000
CMD [ "npm", "start" ]