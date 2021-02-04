# Docker First Layer for Front-End
FROM node:10-slim AS Frond-End-build
WORKDIR /usr/src/app
COPY frontend/package*.json ./frontend/
RUN cd frontend && npm install
COPY frontend/ ./frontend/
# RUN cd frontend && npm install && npm run build

# Docker Second Layer for Sever-End
# FROM node:10-slim AS Back-End-build
# WORKDIR /usr/src/app
# COPY backend/package*.json ./backend/
# RUN cd backend && npm install
# COPY backend/ ./backend/
# RUN cd backend && npm install

# # Docker Combiner Layer for Production
# FROM node:10-slim AS Product-Build
# WORKDIR /root/
# COPY --from=Frond-End-build /usr/src/app/frontend ./my-app/frontend
# COPY --from=Back-End-build /usr/src/app/backend ./my-app/backend
# COPY package*.json .

# EXPOSE 3000

# RUN npm start <"concurrently \"npm run client\" \"npm run server\"">
CMD [ "npm", "start" ]