# Stage 1: Compile and Build angular codebase

# Use official node image as the base image
FROM node:16.8 as node
# Set the working directory
WORKDIR /app

COPY . .

# Install all the dependencies
RUN npm install

# Generate the build of the application
RUN npm run build --prod


# Stage 2: Serve app with nginx server

# Use official nginx image as the base image
FROM nginx:latest

# Copy the build output to replace the default nginx contents.
COPY --from=node /usr/local/app/dist/microservice-ui /usr/share/nginx/html



# Expose port 3000
EXPOSE 3000

ENTRYPOINT ["npm", "start"]
