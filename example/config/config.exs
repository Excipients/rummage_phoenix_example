use Mix.Config

config :example,
  ecto_repos: [Example.Repo]

config :example, ExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "do+7+hQgVaFTCYXJPcw42rH0VtMm2f6HVkYoEDFEQpjdWqncpQU8jakrIsTf17GZ",
  render_errors: [view: ExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Example.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

config :example, Rummage.Ecto,
  repo: Example.Repo,
  per_page: 5

import_config "#{Mix.env}.exs"
