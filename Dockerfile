FROM ruby:3.1

RUN api-get update -yqq

RUN api-get install -yqq --no-install-recommends nodejs

COPY . /usr/src/app/

WORKDIR /usr/src/app

RUN bundle install 

CMD ["rails", "s", "-b", "0.0.0.0"]