defmodule RummagePhoenixExample.Product do
  use RummagePhoenixExample.Web, :model
  use Rummage.Ecto, per_page: 2

  schema "products" do
    field :name, :string
    field :price, :integer

    belongs_to :category, RummagePhoenixExample.Category

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :price])
    |> validate_required([:name, :price])
  end
end
