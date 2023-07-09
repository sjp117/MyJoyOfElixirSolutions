num = 5

if num == 50 do
    IO.puts "Number is 50."
  else
    IO.puts "Number is not 50."
end

unless num == 50 do
  IO.puts "Number is not 50."
end

# Double negatives are not good.
unless num != 50 do
  IO.puts "Number is 50."
end