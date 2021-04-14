defmodule NextEngine.Repo do
  def run(query) do
    post(query)
  end

  @recv_timeout 50_000
  defp post(query) do
    HTTPoison.start()

    generate_url(query.path)
    |> HTTPoison.post!({:form, query.params}, [], recv_timeout: @recv_timeout)

    # TODO: デコードする
  end

  defp generate_url(path), do: host() <> path

  defp params(fields, conds), do: basic_params() ++ [fields: fields] ++ conds

  defp basic_params do
    [
      access_token: access_token(),
      refresh_token: refresh_token(),
      wait_flag: 1,
      limit: 10000
    ]
  end

  def access_token, do: System.get_env("NEXT_ENGINE_ACCESS_TOKEN")
  def refresh_token, do: System.get_env("NEXT_ENGINE_REFRESH_TOKEN")
  defp host, do: "https://api.next-engine.org"
end
