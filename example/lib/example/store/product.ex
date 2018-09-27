defmodule Example.Store.Product do
  use Ecto.Schema
  import Ecto.Changeset


  schema "products" do
    field :availability, :boolean, default: false
    field :description, :string
    field :internal_code, :string
    field :name, :string
    field :price, :float
    field :category_id, :id

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :internal_code, :price, :availability, :description])
    |> validate_required([:name, :internal_code, :price, :availability, :description])
  end
end
