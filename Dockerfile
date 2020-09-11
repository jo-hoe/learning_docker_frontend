# Multi Step Build Process

# 1. Build Phase
# Setup dependencies and build project
# 'as builder' sets and alias
FROM node:alpine as builder
WORKDIR "/app"
COPY package.json .
RUN npm install
# copy everything including test code
# test code gets drop later
COPY . . 
RUN npm run build

# 2. Run Phase
# Get only build
FROM nginx
# Does nothing in local deployment but will 
# be interpreted by deployment services
EXPOSE 80
# reference alias and copy build app into 
# static hosting folder of nginx
COPY --from=builder /app/build /usr/share/nginx/html