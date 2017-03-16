FROM ruby:2.3.1

RUN mkdir /app
COPY . /app/

RUN useradd -u 1000 -m foo
RUN chown -R foo:foo /app

WORKDIR /app
USER foo
RUN bundle cache
RUN bundle install --deployment --binstubs --local

CMD ["bin/rackup"]

