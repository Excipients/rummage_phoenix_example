defmodule RummagePhoenixExampleWeb.ProductController do
  use RummagePhoenixExampleWeb, :controller

  alias RummagePhoenixExample.Store
  alias RummagePhoenixExample.Store.Product

  def index(conn, _params) do
    products = Store.list_products()
    render(conn, "index.html", products: products)
  end
end
