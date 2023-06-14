FROM ruby:3.1.1

RUN apt-get update -yqq

RUN apt-get install -yqq --no-install-recommends nodejs

COPY . /usr/src/app/

WORKDIR /usr/src/app

RUN bundle

RUN apt-get remove --purge mysql-server 

RUN apt-get -f install

RUN apt-get install mysql-server



CMD ["rails", "s", "-b", "0.0.0.0"]