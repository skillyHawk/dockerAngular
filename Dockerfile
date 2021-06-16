FROM node:12.18.1
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY package.json /app/package.json
RUN npm install
RUN npm install -g @angular/cli
COPY . .
CMD ng serve --host 0.0.0.0