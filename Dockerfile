FROM node:0.10.41

RUN mkdir /app/

WORKDIR /app/

COPY ./nodewebsite/express-website /app/

RUN npm install -g express

RUN npm install -g express-generator

RUN express express-website

RUN npm install

RUN npm install --save nodemailer

EXPOSE 3000

CMD [ "npm", "start"  ]
