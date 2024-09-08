FROM node:17

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

COPY . .

RUN npm ci --only=dev && npm run lint

EXPOSE 4000

CMD ["npm", "start"]
