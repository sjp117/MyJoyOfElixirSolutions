case File.read("haik.txt") do
	{:ok, contents} ->
		contents
		|> String.split("\n", trim: true)
		|> Enum.map(&String.reverse/1)
		|> Enum.join("\n")
		|> IO.puts()
	{:error, :enoent} ->
		IO.puts "Could not find file."
	{:error, _} ->
		IO.puts "Something unexpected happened, please try again."
end