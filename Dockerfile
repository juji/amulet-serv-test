FROM ruby:latest
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y nodejs mysql-client postgresql-client
RUN gem install rails
