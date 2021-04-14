defmodule NextEngine.Query do
  defstruct schema: __MODULE__, path: "", params: []

  def build(schema, params \\ []) do
    %__MODULE__{
      schema: schema.schema,
      path: schema.path,
      params: params
    }
  end
end
