# Github Codespaces Experiment

## Download

Clone this repository and the submodules which include the source code of the HPI Schul-Cloud:

```
git clone --recurse-submodules -j8 git://github.com/maxklenk/hpi-schul-cloud-codespaces.git
```

## Use

To start the stack run

```
docker-compose up -d
```

You can watch the output of all containers using

```
docker-compose logs -f
```

# (once) Fill Database

```
docker-compose exec server npm run setup
```

# (once) Create Synapse Sync User

```
docker-compose exec synapse register_new_matrix_user -u sync -p secure -c /data/homeserver.yaml --admin http://localhost:8008
```

## Problems

- Run the `up` command again to apply a changed docker-compose file (e.g. env variables):

```
docker-compose up -d
```

- Use the --build flag to rebuild/update the used image:

```
docker-compose up -d --build
```

- Error Code 137
  Try to give docker more memory

## Add new Services

1. Add the source

```
git submodule add git@github.com:hpi-schul-cloud/schulcloud-synapse-synchronization.git
```

2. Add service in `docker-compose.yml`

3. Start services

```
docker-compose up -d
```

4. Test if everything is working
