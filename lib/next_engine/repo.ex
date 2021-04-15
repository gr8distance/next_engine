defmodule NextEngine.Repo do
  require IEx

  alias NextEngine.Decoder

  def run(query) do
    post(query)
  end

  @recv_timeout 50_000
  defp post(query) do
    HTTPoison.start()

    params = build_params(query.schema |> fields(), query.conds)

    generate_url(query.path)
    |> HTTPoison.post!({:form, params}, [], recv_timeout: @recv_timeout)
    |> Map.get(:body)
    |> Decoder.decode(query.schema)
  end

  defp generate_url(path), do: host() <> path

  defp build_params(fields, conds) do
    basic_params() ++ [fields: fields] ++ conds
  end

  defp basic_params do
    [
      access_token: access_token(),
      refresh_token: refresh_token(),
      wait_flag: 1,
      limit: 10000
    ]
  end

  defp fields(schema) do
    schema
    |> Map.keys()
    |> Enum.join(", ")
  end

  def access_token, do: System.get_env("NEXT_ENGINE_ACCESS_TOKEN")
  def refresh_token, do: System.get_env("NEXT_ENGINE_REFRESH_TOKEN")
  defp host, do: "https://api.next-engine.org"
end
