FROM node:22-bullseye-slim

# Set working directory
WORKDIR /app

SHELL ["/bin/bash", "-c"]
CMD npm install && npm cache clean --force && npm run dev 
