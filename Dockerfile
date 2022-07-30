FROM node:18-slim
WORKDIR /usr/src/app
RUN npm -g install edge-runtime
COPY . .
ENTRYPOINT [ "edge-runtime", "--port", "8080", "--listen" ]
CMD ["index.js"]