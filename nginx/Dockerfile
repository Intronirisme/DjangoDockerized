FROM nginx:alpine

COPY . /config-writter/

RUN chmod +x /config-writter/config-writter.sh

ENTRYPOINT ["./config-writter/config-writter.sh"]
CMD ["nginx", "-g", "daemon off;"]