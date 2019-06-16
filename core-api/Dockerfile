FROM node:alpine
WORKDIR /app
COPY . /app
RUN npm install -g typescript
RUN npm install
RUN export PATH="$PATH:/app/node_modules/.bin"
EXPOSE 8080
CMD ["npm", "run", "start:dev"]
