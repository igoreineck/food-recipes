FROM ruby:3.1.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN gem install bundler -v 2.2.14

RUN mkdir /food-recipes

WORKDIR /food-recipes

COPY Gemfile /food-recipes/Gemfile

COPY Gemfile.lock /food-recipes/Gemfile.lock

RUN bundle install

ENTRYPOINT ["./entrypoints/docker_entrypoint.sh"]

EXPOSE 3000
