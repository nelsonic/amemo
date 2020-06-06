defmodule App.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :text, :string
      add :person_id, :integer
      add :status, :integer

      timestamps()
    end

  end
end
