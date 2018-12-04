FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app
WORKDIR /app
ADD tutorial/Gemfile /app/Gemfile
ADD tutorial/Gemfile.lock /app/Gemfile.lock
RUN bundle install
ADD ./tutorial /app
