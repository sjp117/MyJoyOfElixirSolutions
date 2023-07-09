# Simply read the file
File.read("haiku.txt")

# If successfully read, save the content in a variable
{:ok, contents} = File.read("haiku.txt")

# Split the content by the line breaks.
contents |> String.split("\n", trim: true)

# Split and reverse each element of the list
contents
|> String.split("\n", trim: true)
|> Enum.map(&String.reverse/1)

# Split and reverse each element of the list and join them to a single string.
# Assign the new string to a varaible.
fixed_contents = contents
|> String.split("\n", trim: true)
|> Enum.map(&String.reverse/1)
|> Enum.join("\n")

# Same as the above, but using File.stream
stream = File.stream!("haiku.txt")

fixed_contents = stream
|> Enum.map(&String.trim/1)
|> Enum.map(&String.reverse/1)
|> Enum.join("\n")

# Write to a new file
File.write("fixed-haiku.txt", fixed_contents)

# Rename original file
File.rename("haiku.txt", "reversed-haiku.txt")

# Rename it back to the original file name
File.rename("reversed-haiku.txt", "haiku.txt")

# Create new file with content
File.write("delete-me.txt", "delete me")

# Delete the new file
File.rm("delete-me.txt")

