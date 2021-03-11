defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> Enum.map(fn x -> parse_integer(x) end)
    |> Enum.filter(fn x -> not is_error(x) end)
    |> Enum.filter(fn x -> Integer.is_odd(x) end)
    |> Enum.count()
  end

  defp parse_integer(str) do
    case Integer.parse(str) do
      {number, _} -> number
      :error -> :error
    end
  end

  defp is_error(x), do: x == :error
end
