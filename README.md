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

# fill db once

```
docker-compose exec server npm run setup
```

## Problems

Use the --build flag to rebuild/update the used image:

```
docker-compose up -d --build
```
