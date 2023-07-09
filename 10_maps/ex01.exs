# Use your newfound knowledge of the pipe operator to re-write your solution to Chapter 8's first exercise.

name = IO.gets("What is your name? ") |> String.trim()

age = IO.gets("What is your age? ") |> String.trim()

"Hello, #{name}! You're #{age}? That's old!" |> IO.puts()

