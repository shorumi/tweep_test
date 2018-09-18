# Tweets Job Challenge

## Tech Stack
- Docker Compose
- Ruby 2.5.1
- Rails 5.2.1
- PostgreSQL
- Memcached
- Sidekiq
- Redis
- Whenever JOBS
- JSONAPI compliance
- SOLID design pattern

**API QUERYING WAS NOT AVAILABLE IN THE EXTERNAL MOCKED API PROVIDED.**
- The project was created with the mindset to SOLID and TDD design patterns.
- I extracted all the business logic to some **Business Modules**
- Created some **Entities** to manipulate object's data.
- Attempted to use a lot of **Dependency Injection**.
- Extracted and created some **Services** with **Single Responsibility** on mind.
- The code is **98.39%** covered with **RSpec** tests, take a look at `coverage/index.html`
- Service consumes data from **Tweep API**
- Memcached with Dalli valid for 1 day.
- There is a job that run every 10 minutes, it runs the Tweeps Rules and then records it on the local database.


## Starting the project
- Rename `.env.development` to `.env`
- Add an authorized email to the `TWEEPS_HTTP_USERNAME` ENV VAR inside the `.env` file
- In a unix terminal tab run: 
```shell
docker-compose up --build
```
- In another terminal tab prepare the database with: 
```shell
docker-compose run tweeps_test rails db:setup
```
- After the previous step run the rails seed to get data from TWEEPS EXTERNAL API, applies the locaweb rules and record it to the Database: 
```shell
docker-compose run rails tweep:seed --trace
```

## Running the RSpec tests
- In a terminal tab run the rspec tests: 
```shell
docker-compose run tweeps_test bundle exec rspec -fdoc --color
```

## JSONAPI Endpoints

### Most Relevants
```http://localhost:5000/most_relevants```

### Most Mentions
```http://localhost:5000/users?include=most_mentions```
