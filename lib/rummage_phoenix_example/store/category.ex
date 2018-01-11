defmodule RummagePhoenixExample.Store.Category do
  use Ecto.Schema
  use Rummage.Ecto, per_page: 7

  import Ecto.Changeset
  alias RummagePhoenixExample.Store.Product


  schema "categories" do
    field :name, :string

    belongs_to :category, __MODULE__

    has_many :categories, __MODULE__
    has_many :products, Product

    timestamps()
  end

  @doc false
  def changeset(%__MODULE__{} = category, attrs) do
    category
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
