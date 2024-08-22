#!/bin/bash

# Navigate to the application directory
cd /path/to/your/app

# Update the configuration file (e.g., changing an environment variable)
sed -i 's/OLD_VALUE/NEW_VALUE/g' config.env

# Restart the Docker container to apply the changes
docker-compose down
docker-compose up -d

# Log the update
echo "$(date) - Configuration updated and app restarted" >> update_log.txt

