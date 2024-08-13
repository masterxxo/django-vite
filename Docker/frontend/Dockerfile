FROM node:22-bullseye-slim as base

# Set working directory
WORKDIR /app

# Install node modules
COPY \ 
  package.json \
  package-lock.json \
  ./

RUN npm install && npm cache clean --force

# Copy taildind config to workdir
COPY tailwind.config.js .

# CMD npm run dev
