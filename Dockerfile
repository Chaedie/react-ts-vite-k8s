FROM nginx:1.17

RUN rm /etc/nginx/conf.d/default.conf
COPY ./front-app.conf /etc/nginx/conf.d/default.conf

COPY packages/web/dist/ /usr/share/nginx/html
