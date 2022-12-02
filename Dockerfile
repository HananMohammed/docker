FROM node:19.1.0

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ENV PORT=4000

EXPOSE ${PORT} 

CMD [ "npm", "run", "start-dev" ]


