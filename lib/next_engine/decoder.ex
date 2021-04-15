defmodule NextEngine.Decoder do
  require IEx

  def decode(body, schema) do
    json =
      body
      |> Jason.decode!()

    %{json | "data" => decode_data(json["data"], schema)}
  end

  def decode_data(data, schema) do
    data
    |> Enum.map(fn datum ->
      convert_all_values(datum, schema)
    end)
  end

  def convert_all_values(map, schema) do
    map
    |> Map.keys()
    |> Enum.reduce(%{}, fn key, acm ->
      Map.merge(acm, %{key => convert_value(map[key], schema[key])})
    end)
  end

  def convert_value(nil, _), do: nil
  def convert_value(value, :string), do: value
  def convert_value(value, :datetime), do: Timex.parse!(value, "{YYYY}-{0M}-{0D} {h24}:{0m}:{0s}")

  def convert_value(value, :integer) do
    if String.match?(value, ~r/[0-9]*\.[0-9]*/) do
      String.to_float(value)
    else
      String.to_integer(value)
    end
  end
end
