FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
  ruby \
  ruby-dev \
  make \
  gcc \
  tree && \
  gem install jekyll bundler


