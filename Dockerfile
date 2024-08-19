FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/app

COPY . /home/app

# set default dir so that next commands executes in /home/app dir


# will execute npm install in /home/app because of WORKDIR

# no need for /docker home/app/server.js because of WORKDIR
CMD ["node", "/home/app/server.js"]
