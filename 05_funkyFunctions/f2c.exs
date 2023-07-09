# f2c: Number -> Number
# Take a Fahrenheit numeric value and return a Celcius numeric value

f2c = fn (f) -> (f - 32) / 1.8 end

prompt = "Enter temperature in Fahrenheit: "

input = IO.gets(prompt) |> 
	Float.parse() |> 
	elem(0)

f2c.(input) |>
	Float.round(2) |>
	IO.puts()