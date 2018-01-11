defmodule RummagePhoenixExample.Store do
  @moduledoc """
  The Store context.
  """

  import Ecto.Query, warn: false
  alias RummagePhoenixExample.Repo

  alias RummagePhoenixExample.Store.Category

  # Created for use with Rummage
  def list_rummaged_categories(rummage_params, opts \\ [])
  def list_rummaged_categories(rummage_params, []) do
    {query, rummage} = Category.rummage(rummage_params)
    {Repo.all(query), rummage}
  end
  def list_rummaged_categories(rummage_params, [with: assocs]) do
    {query, rummage} = Category.rummage(rummage_params)
    categories = query
      |> Repo.all()
      |> Repo.preload(assocs)
    {categories, rummage}
  end

  # Generated by Phoenix
  def list_categories(opts \\ [])
  def list_categories([]) do
    Repo.all(Category)
  end
  def list_categories([with: assocs]) do
    Category
    |> Repo.all()
    |> Repo.preload(assocs)
  end

  alias RummagePhoenixExample.Store.Product

  # Created for use with Rummage
  def list_rummaged_products(rummage_params, opts \\ [])
  def list_rummaged_products(rummage_params, []) do
    {query, rummage} = Product.rummage(rummage_params)
    {Repo.all(query), rummage}
  end
  def list_rummaged_products(rummage_params, [with: assocs]) do
    {query, rummage} = Product.rummage(rummage_params)
    products = query
      |> Repo.all()
      |> Repo.preload(assocs)
    {products, rummage}
  end

  # Generated by Phoenix
  def list_products(opts \\ [])
  def list_products([]) do
    Repo.all(Product)
  end
  def list_products([with: assocs]) do
    Product
    |> Repo.all()
    |> Repo.preload(assocs)
  end
end
