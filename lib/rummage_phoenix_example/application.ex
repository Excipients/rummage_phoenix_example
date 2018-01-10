defmodule RummagePhoenixExample.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(RummagePhoenixExample.Repo, []),
      supervisor(RummagePhoenixExampleWeb.Endpoint, []),
    ]

    opts = [strategy: :one_for_one, name: RummagePhoenixExample.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    RummagePhoenixExampleWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
