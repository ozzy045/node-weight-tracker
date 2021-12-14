FROM node:14-alpine

COPY . weightracker/
WORKDIR /weightracker

RUN npm init -y
RUN npm install @hapi/hapi@19 @hapi/bell@12 @hapi/boom@9 @hapi/cookie@11 @hapi/inert@6 @hapi/joi@17 @hapi/vision@6 dotenv@8 ejs@3 postgres@1 -y
RUN npm install --save-dev nodemon@2 -y
RUN npm install

EXPOSE  8080
CMD npm run initdb && npm run dev


