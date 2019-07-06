defmodule FileHelper do
  @moduledoc false

  def array_from_file(path, split_char) do
    path
    |> File.read!
    |> String.split(split_char)
  end

  def strings_to_integers(list) do
    Enum.map(list, fn x -> String.to_integer(x) end)
  end
end
