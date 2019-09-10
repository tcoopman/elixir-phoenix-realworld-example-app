use Mix.Config

config :real_world, RealWorldWeb.Endpoint,
  http: [port: System.fetch_env!("PORT")],
  secret_key_base: System.fetch_env!("SECRET_KEY_BASE")

config :logger, level: :info

config :real_world, RealWorld.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.fetch_env!("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE", "10")),
  ssl: true
