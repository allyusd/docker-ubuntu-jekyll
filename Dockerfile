FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
  ruby \
  ruby-dev \
  make \
  gcc \
  tree \
  python && \
  rm -rf /var/lib/apt/lists/* &&
  gem install jekyll bundler


