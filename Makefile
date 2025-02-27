
server:
	rails server

test:
	bundle exec rspec

migrate:
	rails db:migrate

dc: dc.db dc.redis

dc.db:
	docker-compose up -d postgres

dc.redis:
	docker-compose up -d redis

db:
	rails db:create db:migrate db:seed
.PHONY: db

deps: deps.ruby deps.node

deps.ruby:
	bundle

deps.node:
	yarn

assets:
	rails assets:precompile

front: front.build front.css

front.build:
	yarn build

front.css:
  yarn build:css

lint: lint.front lint.ruby

lint.front:
	yarn lint:fix

lint.ruby:
	bundle exec rubocop -A

console:
	rails console
