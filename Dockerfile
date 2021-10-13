FROM elixir:1.9.4-alpine AS dev

WORKDIR /app

COPY mix.exs mix.lock /app/

RUN apk update && \
    apk upgrade --no-cache && \
    apk add --no-cache \
      git \
      build-base && \
    mix local.rebar --force && \
    mix local.hex --force

RUN mix do deps.get, deps.compile, compile --warnings-as-errors

CMD ["mix",  "run"]
