defmodule RummagePhoenixExampleWeb.CategoryController do
  use RummagePhoenixExampleWeb, :controller

  use Rummage.Phoenix.Controller, only: [:paginate]

  alias RummagePhoenixExample.Store
  alias RummagePhoenixExample.Store.Category

  def index(conn, params) do
    rummage_params = Map.get(params, "rummage")

    {categories, rummage} = Store.list_rummaged_categories(rummage_params,
      with: [:category, :categories, :products])


    render(conn, "index.html", categories: categories, rummage: rummage)
  end
end
