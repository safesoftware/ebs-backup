FROM ruby:2-alpine

WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
RUN bundle install --frozen

COPY lib/ /usr/src/app/

CMD ./backup.rb
