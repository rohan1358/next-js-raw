FROM node:14-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json .
COPY package-lock.json .
RUN npm ci

# Copy app source code
COPY . .

# Build app
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
