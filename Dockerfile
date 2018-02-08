# To build:
# > docker build -t thefarang/keystone .
#
# To run:
# > docker run -v `pwd`:/app -ti thefarang/keystone
FROM node:8.5.0-alpine
RUN mkdir -p /app/src
WORKDIR /app

# VOLUME ["/app"]

# Install the app dependencies
COPY package.json /app/package.json
COPY .env /app/.env
RUN npm install

COPY ./src /app/src

#ENTRYPOINT ["npm"]
CMD ["/bin/sh"]
#CMD ["npm", "start"]
