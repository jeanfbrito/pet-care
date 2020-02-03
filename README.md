# Pet Care

## Installation

We are using docker to manage our project dependencies, so first you will need to install [docker](https://www.docker.com/products/docker) and [docker compose](https://docs.docker.com/compose/install).

1. Clone the repository

```bash
git clone https://github.com/jeanfbrito/pet-care.git
```

2. Open the project directory

```bash
cd pet-care
```

3. Build the project

```bash
docker-compose build
```

4. Run the project

```bash
docker-compose up
```

## Access

Open the interface on the browser: [http://localhost:3000/](http://localhost:3000/)

Open the endpoint in JSONAPI: [http://localhost:3000/api/v1/pets/](http://localhost:3000/api/v1/pets/)

## Heroku dyno

Open the interface on the browser: [https://pet-care-jean.herokuapp.com/](https://pet-care-jean.herokuapp.com/)

Open the endpoint in JSONAPI: [https://pet-care-jean.herokuapp.com/api/v1/pets/](https://pet-care-jean.herokuapp.com/api/v1/pets/)
