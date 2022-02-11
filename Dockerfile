FROM node:lts-alpine

WORKDIR /app
COPY . /app

RUN rm -f package-lock.json \
    ; rm -rf .idea \
    ; rm -rf node_modules \
    ; npm config set registry "https://registry.npmmirror.com/" \
    && npm install

EXPOSE 3000
CMD ["node", "app.js"]
