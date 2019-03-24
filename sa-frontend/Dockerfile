FROM node AS builder
RUN mkdir sa-frontend 
COPY . sa-frontend/
WORKDIR sa-frontend
RUN npm install && npm run build
