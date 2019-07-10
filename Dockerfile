from node:8.16.0-stretch

RUN apt install -y python make
RUN npm install -g bower gulp forever

WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm install

COPY bower.json .
RUN bower install --allow-root

COPY . .

RUN cp config/config.skel config/config.prod.js
RUN gulp build

CMD npm run start
