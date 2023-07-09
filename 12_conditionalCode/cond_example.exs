num = 50

cond do
  num < 50 ->
    IO.puts "Number is less than 50."
  num > 50 ->
    IO.puts "Number is greater than 50."
  num == 50 ->
    IO.puts "Number is exactly 50."
end