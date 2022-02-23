FROM node:16-alpine

WORKDIR /usr/src/app
RUN npm install -g nodemon

# install dependecies
COPY package*.json ./
RUN npm install

# copy source code
COPY . .

# EXPOSE 3001

# run node app
CMD [ "npm", "start" ]
