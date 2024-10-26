# Notion clone

## Software versions:
* Ruby 3.3.0
* Rails 7.2.1
* PostgreSQL 16.0

## Start project
1. Set up local environment (Ruby, etc.)
2. Download or clone a repository
3. Run bundler to install required gems and dependencies

```bash
$ bundle install
```

If necessary, you can run PostgreSQL and Redis locally using [Docker](https://docker.com)

Make sure you are using [Docker Compose V2](https://docs.docker.com/compose/#compose-v2-and-the-new-docker-compose-command)
```
% docker compose version
Docker Compose version v2.3.3
```

`docker-compose.yml` configured to run PostgreSQL 16.0
```bash
$ docker compose up -d
```
4. Create and set up a database for the project
```bash
$ rails db:prepare
```
5. Start project
```bash
$ bin/dev
```

### The project is available at the link http://localhost:3000/
