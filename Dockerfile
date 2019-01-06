FROM elixir:latest

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y nodejs
RUN mix local.hex --force
RUN mix local.rebar --force
