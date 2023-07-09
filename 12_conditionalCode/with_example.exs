file_data = %{name: "haiku.txt"}

with {:ok, name} <- Map.fetch(file_data, :name),
     {:ok, contents} <- File.read(name) do
  contents
  |> String.split("\n", trim: true)
  |> Enum.map(&String.reverse/1)
  |> Enum.join("\n")
  |> IO.puts
else
	:error -> ":name key missing in the field_data." |> IO.puts()
	{:error, :enoent} -> "Couldn't read file." |> IO.puts()
end
