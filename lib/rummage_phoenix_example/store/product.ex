defmodule RummagePhoenixExample.Store.Product do
  use Ecto.Schema
  import Ecto.Changeset
  alias RummagePhoenixExample.Store.Product


  schema "products" do
    field :available, :boolean, default: false
    field :name, :string
    field :price, :float
    field :category_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Product{} = product, attrs) do
    product
    |> cast(attrs, [:name, :price, :available])
    |> validate_required([:name, :price, :available])
  end
end
