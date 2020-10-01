# clone repositories
git clone --depth 1 https://github.com/hpi-schul-cloud/schulcloud-client.git
git clone --depth 1 https://github.com/hpi-schul-cloud/schulcloud-server.git
git clone --depth 1 https://github.com/hpi-schul-cloud/schulcloud-synapse-synchronization.git

# Allow access to synapse folder
chmod 777 synapse

# Start containers
docker-compose up -d

echo ""
echo "When the service are running execute the following commands once:"
echo "docker-compose exec synapse sh /data/register_sync_user.sh"
echo "docker-compose exec server npm run setup"