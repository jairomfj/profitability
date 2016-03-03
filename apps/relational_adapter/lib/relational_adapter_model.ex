defmodule RelationalAdapter.Model do
    defmacro __using__(_) do
        quote do
            use Ecto.Model
            @primary_key {:id, :string, autogenerate: false}
            @foreign_key_type :string
        end
    end
end