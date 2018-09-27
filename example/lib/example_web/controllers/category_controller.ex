defmodule ExampleWeb.CategoryController do
  use ExampleWeb, :controller

  alias Example.Store
  alias Example.Store.Category

  def index(conn, _params) do
    categories = Store.list_categories()
    render(conn, "index.html", categories: categories)
  end
end
