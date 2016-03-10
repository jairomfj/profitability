defmodule UserPersistenceAdapter do
    @callback save(UserModel.t) :: UserModel.t
end
