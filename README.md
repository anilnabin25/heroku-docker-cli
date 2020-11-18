### Getting Started with Setting up Environment

```
git clone git@github.com:namespace-team/oriai_relatedly.git
cd oriai_relatedly
sh docker/bootstrap.sh
docker-compose up
```

## Some usefull docker commands 

### To build the docker
> docker-compose build

### To install the gems in the docker
> docker-compose run --rm app bundle install

### To create, migrate and seed the database in the docker 
> docker-compose run --rm app bundle exec rails db:create

> docker-compose run --rm app bundle exec rails db:migrate

> docker-compose run --rm app bundle exec rails db:seed

### To run rails console on docker 
> docker-compose run --rm app bundle exec rails c

### To run the docker in the background and restarting 
> docker-compose up -d

> docker-compose restart


## Testing

### [RuboCop Rails](https://github.com/rubocop-hq/rubocop-rails) 
A RuboCop extension focused on enforcing Rails best practices and coding conventions.
### How to execute rubocop
1. go to terminal 
2. run `docker-compose run --rm -e 'RAILS_ENV=test' app bundle exec rubocop` to check this test

### [Rspec Rails](https://github.com/rspec/rspec-rails) 
rspec-rails brings the RSpec testing framework to Ruby on Rails as a drop-in alternative to its default testing framework, Minitest.\
In RSpec, tests are not just scripts that verify your application code. They’re also specifications (or specs, for short): detailed explanations of how the application is supposed to behave, expressed in plain English.
### How to execute rspec
1. go to terminal.
2. run `docker-compose run --rm -e 'RAILS_ENV=test' app bundle exec rspec` to check this test.
