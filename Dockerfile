#Base image
FROM node:alpine
#Set working directory
WORKDIR '/app'
#Copy package.json to current directory
COPY package.json .
#Run npm install
RUN npm install
#copy everything else
COPY . .
#Start server
CMD ["npm", "start"]