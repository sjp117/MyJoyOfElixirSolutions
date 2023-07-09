# Use Enum.reduce/2 to multiply these numbers together: [5, 12, 9, 24, 9, 18]

# Define number list
numbers = [5, 12, 9, 24, 9, 18]

# Display number list
"List of numbers is:" |> IO.puts()
numbers |> IO.inspect()

"" |> IO.puts()    # add new line

"The product of the numbers is:" |> IO.puts()

numbers |> 
    Enum.reduce(fn (value, product) -> product * value end) |>
    IO.puts()