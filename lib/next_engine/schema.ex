defmodule NextEngine.Schema do
  @callback path() :: String.t()
  @callback schema() :: %{}
end
