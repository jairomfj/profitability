defmodule UserModel do
    defstruct [
        :id,
        :inserted_at,
        :updated_at
    ]

    @type t :: %UserModel{
        id: String.t,
        inserted_at: Timex.DateTime,
        updated_at: Timex.DateTime
    }

end
