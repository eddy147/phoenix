FROM elixir:latest

LABEL maintainer eddy147@gmail.com

RUN apt-get update && apt-get install --yes postgresql-client
ADD . /app
RUN mix local.hex --force
RUN mix local.rebar --force

RUN wget https://github.com/phoenixframework/archives/raw/master/phx_new.ez
RUN mix archive.install --force phx_new.ez 

WORKDIR /app
EXPOSE 4000
CMD ["./run.sh"]