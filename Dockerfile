FROM node:15

WORKDIR /usr/src/app

ENV NODE_ENV production

COPY . .

# RUN npm install --dev && npm run build<already set up webpack>
RUN cd backend 
RUN npm install 
RUN cd ..
RUN cd frontend 
RUN npm install 
RUN cd .. 

# RUN npm start <"concurrently \"npm run client\" \"npm run server\"">
CMD [ "npm", "start" ]