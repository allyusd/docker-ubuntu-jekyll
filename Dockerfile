FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
  ruby \
  ruby-dev \
  make \
  gcc \
  tree \
  zlib1g-dev && \
  rm -rf /var/lib/apt/lists/* && \
  gem install jekyll bundler

COPY Gemfile /

RUN gem install nokogiri -v '1.7.1' && \
  bundle config build.nokogiri --use-system-libraries && \
  bundle install

EXPOSE 4000

VOLUME /home/ubuntu/jekyll

WORKDIR /home/ubuntu/jekyll
