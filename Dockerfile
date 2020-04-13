FROM ruby:2.3.8
LABEL authors="Fabiano Martins <fabiano@investtools.com.br>"

WORKDIR /app

COPY . .

RUN gem install bundler -v 1.17

RUN bundle install 

CMD bundle exec rspec
