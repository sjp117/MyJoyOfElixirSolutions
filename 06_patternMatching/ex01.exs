# map with age variable
person1 = %{name: "Bob", age: 32}

# map without age variable
person2 = %{name: "Emma"}

# gets age value if map has an age variable
getNameIfAge = fn
	%{name: name, age: age} -> name
	_ -> "Map needs age."
end

getNameIfAge.(person1) |> IO.puts()
getNameIfAge.(person2) |> IO.puts()