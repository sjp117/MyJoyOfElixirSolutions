defmodule Person do

	defstruct [
		first_name: nil,
		last_name: nil,
		birthday: nil,
		location: "home"
	]

	def full_name(%Person{} = person) do
		"#{person.first_name} #{person.last_name}"
	end

	def age(%Person{} = person) do
		days = Date.diff(Date.utc_today, person.birthday)
		days / 365.25
	end

	def home(%Person{} = person) do
  	%{person | location: "home"}
	end

	def away(%Person{} = person) do
  	%{person | location: "away"}
	end

	defp set_location(%Person{} = person, location) do
		IO.puts "#{person |> full_name}'s location is now #{location}."
		%{person | location: location}
	end

	def toggle_location(%Person{location: "away"} = person) do
		person |> set_location("home")
	end

	def toggle_location(%Person{location: "home"} = person) do
		person |> set_location("away")
	end

	defimpl Inspect do
		def inspect(%Person{
			first_name: first_name,
			last_name: last_name,
			location: location,
			}, _) do
				"Person [#{first_name} #{last_name}, #{location}]"
			end
	end

end