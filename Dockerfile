FROM node:19.1.0

WORKDIR /app

COPY package.json .

ARG NODE_ENV

RUN if [ "$NODE_ENV" == 'production' ]; \
    then npm install --production; \
    else npm install; \
    fi

COPY . .

ENV PORT=4000

EXPOSE ${PORT} 

CMD [ "npm", "run", "start-dev" ]


