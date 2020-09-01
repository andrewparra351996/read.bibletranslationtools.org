FROM ruby:2.7.1-slim-buster
RUN apt update && apt install -y python curl unzip build-essential
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install
RUN gem install jekyll -v '~> 3.9.0'
RUN gem install bundler
