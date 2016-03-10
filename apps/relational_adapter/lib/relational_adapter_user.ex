defmodule RelationalAdapter.User do
    use RelationalAdapter.Model

    schema "users" do
        field :inserted_at, Timex.Ecto.DateTime
        field :updated_at, Timex.Ecto.DateTime
    end
end