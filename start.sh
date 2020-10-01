
# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# clone repositories
git clone https://github.com/hpi-schul-cloud/schulcloud-client.git
git clone https://github.com/hpi-schul-cloud/schulcloud-server.git
git clone https://github.com/hpi-schul-cloud/schulcloud-synapse-synchronization.git

# Start containers
docker-compose up -d

echo "When the service are running execute the following commands once:"
echo "docker-compose exec synapse sh /data/register_sync_user.sh"
echo "docker-compose exec server npm run setup"