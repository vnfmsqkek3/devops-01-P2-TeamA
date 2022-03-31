FROM node:16-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install 
RUN npm install fastify-cli --global
RUN fastify generate .
RUN npm init fastify
COPY . .
EXPOSE 4000
CMD ["node", "app.js"]