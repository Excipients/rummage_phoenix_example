defmodule RummagePhoenixExample.Category do
  use RummagePhoenixExample.Web, :model

  schema "categories" do
    field :category_name, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:category_name])
    |> validate_required([:category_name])
  end
end
