peoples = %{
	name: ["Bob", "Izzy", "Davis", "Emma"],
	age: [20, 30, 28, 23]
}

# count the number of people
n = peoples.age |> length()

# get the mean age
peoples.age |>
	Enum.sum() |>
	div(n) |>
	IO.puts()