FROM node:18-alpine as system_base

ARG NODE_ENV
ENV NODE_ENV=${NODE_ENV}

RUN apk update && apk upgrade && apk add --no-cache --update bash dumb-init

CMD ["/bin/bash"]
ENTRYPOINT ["/bin/bash"]


FROM system_base as node_base

WORKDIR /app

COPY package.json package-lock.json* ./

RUN [[ "${NODE_ENV}" == "production" ]] && npm ci --only=production || npm install

ENV PATH /app/node_modules/.bin:$PATH

COPY  . .

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
EXPOSE 3000
CMD [ "npm", "start" ]