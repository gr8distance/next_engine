defmodule NextEngine.Query do
  defstruct schema: __MODULE__, path: "", conds: []

  def build(schema, conds \\ []) do
    %__MODULE__{
      schema: schema.schema,
      path: schema.path,
      conds: conds
    }
  end
end
