defmodule Example.Store.Category do
  use Rummage.Ecto.Schema
  import Ecto.Changeset


  schema "categories" do
    field :description, :string
    field :name, :string

    belongs_to :parent_category, __MODULE__

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
