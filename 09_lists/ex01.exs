# Use a combination of Enum.map/2 and String.replace/3 to replace all the e's in these words with
# another letter of your choosing: ["a", "very", "fine", "collection", "of", "words", "enunciated"]

words = ["a", "very", "fine", "collection", "of", "words", "enunciated"]

"Word list without replacement." |> IO.puts()
words |> IO.inspect()

"\nWord list with replacement. e -> b" |> IO.puts()
words |>
	Enum.map(&String.replace(&1, "e", "b")) |>
	IO.inspect()