FROM ruby:2.4.0
ADD . /code
WORKDIR /code
RUN bundle install
