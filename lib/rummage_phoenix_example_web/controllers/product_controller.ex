defmodule RummagePhoenixExampleWeb.ProductController do
  use RummagePhoenixExampleWeb, :controller

  use Rummage.Phoenix.Controller, only: [:paginate]

  alias RummagePhoenixExample.Store
  alias RummagePhoenixExample.Store.Product

  def index(conn, params) do
    rummage_params = Map.get(params, "rummage")

    {products, rummage} = Store.list_rummaged_products(rummage_params,
      with: [:category])

    render(conn, "index.html", products: products, rummage: rummage)
  end
end
