FROM ruby:2.3.1

ENV RACK_ENV production
RUN gem update bundler --no-document

RUN mkdir /app
COPY . /app/

RUN useradd -u 1000 -m foo
RUN chown -R foo:foo /app

WORKDIR /app
USER foo
RUN bundle install --deployment --binstubs

EXPOSE 3000

CMD ["bin/rackup", "-s", "puma", "-p", "3000"]

