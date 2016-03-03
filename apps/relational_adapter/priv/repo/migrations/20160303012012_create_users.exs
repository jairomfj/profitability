defmodule RelationalAdapter.Repo.Migrations.CreateUsers do
  use Ecto.Migration

    def up do
        create table(:users, primary_key: false) do
        add :id, :string, primary_key: true
        timestamps
        end
    end

    def down do
        drop table(:users)
    end
end
