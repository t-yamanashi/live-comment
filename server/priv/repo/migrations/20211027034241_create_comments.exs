defmodule Server.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :comment, :string
      add :loaded, :integer

      timestamps()
    end
  end
end
