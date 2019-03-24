FROM node AS builder
COPY . sa-frontend/
WORKDIR sa-frontend
RUN npm install && npm run build

FROM nginx as release
COPY --from=builder sa-frontend/build /usr/share/nginx/html/
