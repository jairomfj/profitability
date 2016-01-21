defmodule Profitability do
  use Application
  
  def start( _type, _args ) do
    {:ok, _} = Plug.Adapters.Cowboy.http MyPlug, []
  end
end
