FROM node:18-alpine
WORKDIR /developer-portfolio
COPY package*.json ./
RUN npm install && npm install sharp
RUN npx update-browserslist-db@latest
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm","run","dev"]
