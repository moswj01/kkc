# Use the official Node.js runtime as the base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy the rest of the application code
COPY . .

# Create uploads directory
RUN mkdir -p public/uploads

# Set environment to development
ENV NODE_ENV=development

# Build the application
RUN npm run build

# Expose the port Strapi runs on
EXPOSE 1337

# Create non-root user for security
RUN addgroup -g 1001 -S nodejs
RUN adduser -S strapi -u 1001

# Change ownership of the app directory to strapi user
RUN chown -R strapi:nodejs /app
USER strapi

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:1337/_health || exit 1

# Start the application
CMD ["npm", "start"]