defmodule RummagePhoenixExampleWeb.CategoryController do
  use RummagePhoenixExampleWeb, :controller

  alias RummagePhoenixExample.Store
  alias RummagePhoenixExample.Store.Category

  def index(conn, _params) do
    categories = Store.list_categories(
      with: [:category, :categories, :products])

    render(conn, "index.html", categories: categories)
  end
end
