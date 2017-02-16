defmodule RummagePhoenixExample.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :price, :integer
      add :category, :string

      timestamps()
    end

  end
end
