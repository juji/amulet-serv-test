FROM elixir:latest

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs && \
    mix local.hex --force && \
    mix local.rebar --force && \
    rm -rf /var/lib/apt/lists/*

