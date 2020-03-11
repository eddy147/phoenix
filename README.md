# Setting up your project
    $ docker-compose run --rm web mix phx.new --no-brunch --no-html YOUR_PROJECT_NAME
You might want to use different options when creating your project, in this case it will create a project without the javascript and HTML components. Useful if you’re creating an API service.

# Connect to postgres
Open config/dev.exs

    config :phoenix_aptlist, PhoenixAptlist.Repo,
    adapter: Ecto.Adapters.Postgres,
    username: "postgres",
    password: "postgres",
    database: "app_dev",
    hostname: "db",
    port: 5432,
    pool_size: 10

Open config/test.exs

    config :phoenix_aptlist, PhoenixAptlist.Repo,
    adapter: Ecto.Adapters.Postgres,
    username: "postgres",
    password: "postgres",
    database: "app_test",
    hostname: "db",
    port: 5432,
    pool_size: 10



# Finish
    docker-compose build
    docker-compose up -d

Go to http://localhost:4000 and you should see something about a route not existing.