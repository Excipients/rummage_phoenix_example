defmodule ExampleWeb.ProductController do
  use ExampleWeb, :controller

  alias Example.Store
  alias Example.Store.Product

  action_fallback ExampleWeb.FallbackController

  def index(conn, _params) do
    products = Store.list_products()
    render(conn, "index.json", products: products)
  end
end
