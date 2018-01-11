use Mix.Config

config :rummage_phoenix_example, RummagePhoenixExampleWeb.Endpoint,
  url: [host: "rummage-example.adiiyengar.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json"

# Do not print debug messages in production
config :logger, level: :info

config :rummage_phoenix_example, RummagePhoenixExampleWeb.Endpoint,
  secret_key_base: "SQBJpyKq9InS2TR9J2zhPWwWIxItqzXTAf04FJaGW7w2fVGYSzTpF9Byv0ONAVKz"

# Configure your database
config :rummage_phoenix_example, RummagePhoenixExample.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("POSTGRES_USERNAME"),
  password: System.get_env("POSTGRES_PASSWORD"),
  database: "rummage_phoenix_example_prod",
  pool_size: 15

