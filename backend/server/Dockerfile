# Dockerfile.dev
FROM node:18

WORKDIR /server

# Copy package files and install all dependencies
COPY package*.json ./
RUN npm install

# (Optional) Install nodemon globally if you plan to use it
RUN npm install -g ts-node
RUN npm install -g nodemon

# Note: We do NOT copy your source code here – it will be mounted during container start

EXPOSE 3000

# Start in development mode with nodemon (adjust command as needed)
# nodemon --watch 'server/src/**' --ext 'ts,json' --exec 'ts-node server/src/bootstrap.ts'
CMD ["ts-node", "src/index.ts"]
#CMD ["sh"]