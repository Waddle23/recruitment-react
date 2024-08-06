FROM alpine

COPY ./app/dist /app/public

COPY ./.config/default.conf /etc/nginx/http.d/default.conf

RUN apk add --no-cache nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
