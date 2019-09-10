use Mix.Config

config :real_world, RealWorldWeb.Endpoint,
  load_from_system_env: true,
  force_ssl: [rewrite_on: [:x_forwarded_proto]]

config :logger, level: :info

config :real_world, RealWorld.Repo,
  adapter: Ecto.Adapters.Postgres,
  ssl: true
