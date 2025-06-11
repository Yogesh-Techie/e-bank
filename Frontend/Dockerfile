# Stage 1: Build the app
FROM node:18 AS build

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve with Nginx
FROM nginx:alpine

# Remove default config and replace with custom
COPY --from=build /app/dist /usr/share/nginx/html

# Optional: Copy custom nginx.conf (you can skip if default is OK)
# COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
