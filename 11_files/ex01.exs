# Can you make Elixir write a program for itself? Put this code into a file called script.ex 
# with File.write/2: IO.puts "This file was generated from Elixir" and then make it run by 
# running elixir that-file.ex.

code = ~s(IO.puts "This file was generated from Elixir") # "~s()" makes it so the content is a string.

File.write("script.ex", code)