FROM node:19.1.0 as base

FROM base as dvelopment
WORKDIR /app
COPY package.json .
#ARG NODE_ENV
#RUN if [ "$NODE_ENV" == 'production' ]; \
#    then npm install --production; \
#    else npm install; \
#    fi
RUN npm install
COPY . .
ENV PORT=4000
EXPOSE ${PORT}
CMD [ "npm", "run", "start-dev" ]

FROM base as production
WORKDIR /app
COPY package.json .
RUN npm install --only=production
COPY . .
ENV PORT=4000
EXPOSE ${PORT}
CMD [ "npm", "start" ]
