defmodule RelationalAdapter.UserRepository do
    import Ecto.Query

    def keyword_query do
        query = from w in RelationalAdapter.User,
        select: w
        RelationalAdapter.Repo.all(query)
    end
end