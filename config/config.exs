# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rummage_phoenix_example,
  ecto_repos: [RummagePhoenixExample.Repo]

# Configures the endpoint
config :rummage_phoenix_example, RummagePhoenixExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ay3A7vVGiDn/5Tqpbk8K/dlE2QRhI5OFQ0cTN5JGad3q+5vMdZYUuDKM9AvjX7xD",
  render_errors: [view: RummagePhoenixExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RummagePhoenixExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# config :rummage_ecto, Rummage.Ecto, [
#   default_repo: RummagePhoenixExample.Repo,
# ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
