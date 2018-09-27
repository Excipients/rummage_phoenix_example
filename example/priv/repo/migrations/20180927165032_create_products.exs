defmodule Example.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :internal_code, :string
      add :price, :float
      add :availability, :boolean, default: false, null: false
      add :description, :text
      add :category_id, references(:categories, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:products, [:name])
    create index(:products, [:category_id])
    create index(:products, [:price])
    create index(:products, [:availability])
  end
end
