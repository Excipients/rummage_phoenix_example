# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :example_web,
  namespace: ExampleWeb,
  ecto_repos: [Example.Repo]

# Configures the endpoint
config :example_web, ExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rfkHfBR4jxrzmZrXFz3GW7hgLDU2cbmQ57y7tK7auo/J6Y3P4bz1Fl0PL2Z2IjWD",
  render_errors: [view: ExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExampleWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :example_web, :generators,
  context_app: :example

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
