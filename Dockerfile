FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /post-ms
WORKDIR /post-ms
ADD Gemfile /post-ms/Gemfile
ADD Gemfile.lock /post-ms/Gemfile.lock
RUN bundle install
ADD . /post-ms
