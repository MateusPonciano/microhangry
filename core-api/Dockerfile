FROM node:alpine
WORKDIR /app
COPY . /app
RUN npm install -g typescript
RUN npm install
RUN npm run typeorm -- migration:run
EXPOSE 8080
CMD ["npm", "run", "start:dev"]
