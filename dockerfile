# Use the official MongoDB image as the base image
FROM mongo:latest

# Optionally, set environment variables for MongoDB configuration
 ENV MONGO_INITDB_ROOT_USERNAME=myuser
 ENV MONGO_INITDB_ROOT_PASSWORD=mypassword

# Copy your MongoDB configuration files, if needed
# COPY mongod.conf /etc/mongod.conf

# Expose the default MongoDB port (27017) if necessary
 EXPOSE 27017

# Define a custom entrypoint script if needed
# COPY entrypoint.sh /docker-entrypoint-initdb.d/
# RUN chmod +x /docker-entrypoint-initdb.d/entrypoint.sh

# Start MongoDB when the container starts
CMD ["mongod"]
