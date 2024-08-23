#!/bin/bash

# Navigate to the application directory
cd D:/interview/1/devops-challenge-apps

# Update the configuration file (e.g., changing an environment variable)
sed -i 's/APP_ENV=development/APP_ENV=production/g' config.env

# Restart the Docker container to apply the changes
docker-compose down
docker-compose up -d

# Log the update
echo "$(date) - Configuration updated and app restarted" >> update_log.txt

