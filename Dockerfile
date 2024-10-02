FROM node:14


WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ARG DEFAULT_PORT=80

ENV PORT $DEFAULT_PORT

EXPOSE $PORT

# VOLUME [ "/data/node_modules" ]

# VOLUME [ "/data/temp" ]

CMD [ "npm", "start" ]