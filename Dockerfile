FROM node:16.14.2
WORKDIR /app
COPY . .
RUN npm install
RUN apt-get update
RUN apt-get update
RUN apt-get update \
     && apt-get install default-jre -y \
     && apt-get install default-jdk -y
RUN apt-get install mariadb-server -y
#new
RUN apt-get install build-essential
RUN service mysql start
RUN mkdir /codes
RUN pwd
RUN ls -lart
RUN useradd -ms /bin/bash wolverine
USER wolverine
CMD ["npm", "run", "start"]

