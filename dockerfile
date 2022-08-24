FROM node:8.4.0

# Create app directory
RUN mkdir -p /usr/src/linebulk
WORKDIR /usr/src/linebulk

# Install app dependencies
COPY package.json /usr/src/linebulk/
RUN npm install

# Bundle app source
COPY . /usr/src/linebulk

EXPOSE 7777

CMD [ "node", "server.js"]
