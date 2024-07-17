# Use an official lightweight base image
FROM alpine:latest

# Install curl for connectivity testing
RUN apk --no-cache add curl

# Add a script to perform the connectivity test
COPY connectivity_test.sh /usr/local/bin/connectivity_test.sh

# Make the script executable
RUN chmod +x /usr/local/bin/connectivity_test.sh

# Set the entrypoint to the script
ENTRYPOINT ["/usr/local/bin/connectivity_test.sh"]
