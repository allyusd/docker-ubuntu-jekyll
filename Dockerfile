FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
  ruby \
  ruby-dev \
  make \
  gcc \
  tree \
  python && \
  rm -rf /var/lib/apt/lists/* && \
  gem install jekyll bundler

COPY Gemfile /

RUN bundle install

EXPOSE 4000

VOLUME /home/ubuntu/jekyll

WORKDIR /home/ubuntu/jekyll
