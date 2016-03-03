defmodule RelationalAdapter.Repo.Migrations.CreateUsers do
  use Ecto.Migration

    def up do
        create table(:users) do
        timestamps
        end
    end

    def down do
        drop table(:users)
    end
end
