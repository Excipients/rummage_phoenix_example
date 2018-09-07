defmodule Example.Store.Category do
  use Ecto.Schema
  import Ecto.Changeset


  schema "categories" do
    field :description, :string
    field :name, :string
    field :parent_category_id, :id

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
