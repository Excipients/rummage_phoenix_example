defmodule RummagePhoenixExampleWeb.CategoryController do
  use RummagePhoenixExampleWeb, :controller

  alias RummagePhoenixExample.Store
  alias RummagePhoenixExample.Store.Category

  def index(conn, _params) do
    categories = Store.list_categories()
    render(conn, "index.html", categories: categories)
  end
end
