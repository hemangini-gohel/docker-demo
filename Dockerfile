FROM ruby:3.1.3

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends nodejs postgresql-client

WORKDIR /app
COPY . /app/

ENV BUNDLE_PATH /gems

RUN bundle install

ENTRYPOINT ["bin/rails"]

CMD ["s", "-b", "0.0.0.0"]

EXPOSE 3000
