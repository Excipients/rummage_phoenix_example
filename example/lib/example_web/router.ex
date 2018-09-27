defmodule ExampleWeb.Router do
  use ExampleWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ExampleWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    resources "/categories", CategoryController, only: [:index]
    resources "/products", ProductController, only: [:index]

    # Views for corresponding CSS frameworks
    get "/products_bootstrap3", ProductController, :products_bootstrap3
    get "/products_bootstrap4", ProductController, :products_bootstrap4
    get "/products_materialize", ProductController, :products_materialize
    get "/products_foundation", ProductController, :products_foundation
    get "/products_semantic", ProductController, :products_semantic
  end
end
