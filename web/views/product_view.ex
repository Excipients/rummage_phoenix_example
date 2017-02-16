defmodule RummagePhoenixExample.ProductView do
  use RummagePhoenixExample.Web, :view
  use Rummage.Phoenix.View, struct: :product, helper: RummagePhoenixExample.Router.Helpers,
    default_scope: RummagePhoenixExample.Product, repo: RummagePhoenixExample.Repo
end
