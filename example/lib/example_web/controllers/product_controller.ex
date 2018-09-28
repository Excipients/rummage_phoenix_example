defmodule ExampleWeb.ProductController do
  use ExampleWeb, :controller
  use Rummage.Phoenix.Controller, rummage_schema: Example.Store.Product

  alias Example.Store
  alias Example.Store.Product

  @compatible_css ~w(
    bootstrap3
    bootstrap4
    materialize
    foundation
    semantic
  )

  action_fallback ExampleWeb.FallbackController

  def index(conn, params) do
    css = Map.get(params, "css", "bootstrap3")

    case Enum.member?(@compatible_css, css) do
      true -> apply(__MODULE__, :"products_#{css}", [conn, params])
      _ ->
        conn
        |> put_flash(:error, "CSS requested isn't valid: #{css}")
        |> redirect(to: "/")
        |> halt()
    end

    products = Store.list_products()
    categories = Store.list_categories()
    render(conn, "index.json", products: products, categories: categories)
  end

  def products_bootstrap3(conn, params) do
    rummage = rummage_params(params["rummage"])

    {products, rummage} = Store.list_products(rummage)
    categories = Store.list_categories()

    render(conn, "bootstrap3.html",
           products: products,
           categories: categories,
           rummage: rummage)
  end

  def products_bootstrap4(conn, params) do
    rummage = rummage_params(params["rummage"])

    {products, rummage} = Store.list_products(rummage)
    categories = Store.list_categories()

    render(conn, "bootstrap4.html",
           products: products,
           categories: categories,
           rummage: rummage)
  end

  def products_materialize(conn, params) do
    rummage = rummage_params(params["rummage"])

    {products, rummage} = Store.list_products(rummage)
    categories = Store.list_categories()

    render(conn, "materialize.html",
           products: products,
           categories: categories,
           rummage: rummage)
  end

  def products_foundation(conn, params) do
    rummage = rummage_params(params["rummage"])

    {products, rummage} = Store.list_products(rummage)
    categories = Store.list_categories()

    render(conn, "foundation.html",
           products: products,
           categories: categories,
           rummage: rummage)
  end

  def products_semantic(conn, params) do
    rummage = rummage_params(params["rummage"])

    {products, rummage} = Store.list_products(rummage)
    categories = Store.list_categories()

    render(conn, "semantic.html",
           products: products,
           categories: categories,
           rummage: rummage)
  end
end
