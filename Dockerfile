# Use a base image with Hugo pre-installed
FROM klakegg/hugo:ext-alpine AS builder

# Set the working directory inside the container
WORKDIR /site

# Copy the contents of your Hugo project into the container
COPY . .

# Build the static site
RUN hugo --minify

# Use a lightweight base image to serve the static site
FROM nginx:alpine

LABEL org.opencontainers.image.source https://github.com/jasondchambers/www-art

# Copy the static site from the builder stage into the nginx web root directory
COPY --from=builder /site/public /usr/share/nginx/html

