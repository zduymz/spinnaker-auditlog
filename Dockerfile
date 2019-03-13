FROM node:10-jessie-slim
USER root
WORKDIR /app
COPY ./app /app
CMD ["node", "/app/index.js"]
