FROM ruby:2.5.1-slim

ARG PROJECT_FOLDER
ARG RAILS_PORT

RUN  apt-get update \
  && apt-get install -qq -y --no-install-recommends \
   build-essential \
   git \
   nodejs \
   libpq-dev \
   libsqlite3-dev \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p ${PROJECT_FOLDER}}
WORKDIR $PROJECT_FOLDER
COPY Gemfile Gemfile.lock ./
RUN gem install bundler --pre
RUN bundle install --binstubs
COPY . .
EXPOSE ${RAILS_PORT}