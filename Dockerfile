FROM node:8.16-stretch as builder

RUN apt install -y python make && \
    npm install -g bower gulp

WORKDIR /app
COPY package.json .
COPY package-lock.json .
COPY bower.json .

RUN npm ci && \ 
    bower install --allow-root

COPY . .

RUN cp config/config.skel config/config.prod.js && \
    gulp build


FROM nginx:1.17-alpine
COPY --from=builder /app/dist /usr/share/nginx/html
