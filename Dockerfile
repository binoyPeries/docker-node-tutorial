FROM node:16.16.0-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=userpassword

RUN mkdir -p / /app

COPY ./app /home/app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app

# will execute npm install in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "index.js"]
