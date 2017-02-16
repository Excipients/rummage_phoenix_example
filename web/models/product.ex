defmodule RummagePhoenixExample.Product do
  use RummagePhoenixExample.Web, :model
  use Rummage.Ecto, repo: RummagePhoenixExample.Repo, per_page: 5

  schema "products" do
    field :name, :string
    field :price, :integer
    field :category, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :price, :category])
    |> validate_required([:name, :price, :category])
  end
end
