FROM ruby:2.5.1-slim

ARG PROJECT_FOLDER
ARG RAILS_PORT
ARG RAILS_ENV
ARG TZ_DATA

RUN  apt-get update \
  && apt-get install -qq -y --no-install-recommends \
   build-essential \
   git \
   nodejs \
   libpq-dev \
   libsqlite3-dev \
   cron \
   tzdata \
  && rm -rf /var/lib/apt/lists/*

RUN ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN echo 'America/Sao_Paulo' > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
ARG TZ_DATA


RUN mkdir -p ${PROJECT_FOLDER}
COPY Gemfile Gemfile.lock ./
WORKDIR $PROJECT_FOLDER
RUN gem install bundler --pre
RUN bundle install --binstubs
COPY . .
RUN bundle exec whenever --update-crontab
EXPOSE ${RAILS_PORT}