defmodule NextEngine.Repo do
  require IEx

  alias NextEngine.Decoder

  def run(query, access_token: access_token, refresh_token: refresh_token) do
    params =
      build_params(
        fields(query.schema),
        query.conds,
        access_token: access_token,
        refresh_token: refresh_token
      )

    generate_url(query.path)
    |> post(params)
    |> Map.get(:body)
    |> Decoder.decode(query.schema)
  end

  @recv_timeout 50_000
  defp post(url, params) do
    HTTPoison.start()
    HTTPoison.post!(url, {:form, params}, [], recv_timeout: @recv_timeout)
  end

  defp generate_url(path), do: host() <> path

  defp build_params(fields, conds, opts) do
    basic_params(opts) ++ [fields: fields] ++ conds
  end

  defp basic_params(opts) do
    [wait_flag: 1, limit: 10000] ++ opts
  end

  defp fields(schema) do
    schema
    |> Map.keys()
    |> Enum.join(", ")
  end

  defp host, do: "https://api.next-engine.org"
end
