defmodule ExampleWeb.ProductController do
  use ExampleWeb, :controller

  alias Example.Store
  alias Example.Store.Product

  action_fallback ExampleWeb.FallbackController

  def index(conn, _params) do
    products = Store.list_products()
    categories = Store.list_categories()
    render(conn, "index.json", products: products, categories: categories)
  end

  def products_bootstrap3(conn, _params) do
    products = Store.list_products()
    categories = Store.list_categories()
    render(conn, "bootstrap3.html", products: products, categories: categories)
  end

  def products_bootstrap4(conn, _params) do
    products = Store.list_products()
    categories = Store.list_categories()
    render(conn, "bootstrap4.html", products: products, categories: categories)
  end

  def products_materialize(conn, _params) do
    products = Store.list_products()
    categories = Store.list_categories()
    render(conn, "materialize.html", products: products, categories: categories)
  end

  def products_foundation(conn, _params) do
    products = Store.list_products()
    categories = Store.list_categories()
    render(conn, "foundation.html", products: products, categories: categories)
  end

  def products_semantic(conn, _params) do
    products = Store.list_products()
    categories = Store.list_categories()
    render(conn, "semantic.html", products: products, categories: categories)
  end
end
