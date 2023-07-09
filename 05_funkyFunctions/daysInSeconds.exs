# Define variables

secondsInMinute = 60
minutesInHour = 60
hoursInDay = 24

secondsInDay = secondsInMinute * minutesInHour * hoursInDay

# d2s: Number -> Number
# Take in the nunmber of days and return the seconds in those days.

d2s = fn (days) -> days * secondsInDay end

prompt = "Enter number of days: "

input = IO.gets(prompt) |> 
	Float.parse() |> 
	elem(0)

d2s.(input) |>
	IO.puts()
