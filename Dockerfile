FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl wget make g++
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get install -y nodejs
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 3000
CMD npm start
