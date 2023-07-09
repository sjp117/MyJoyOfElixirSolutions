defmodule People.Person do
  defstruct first_name: nil,
            last_name: nil,
            birthday: nil,
            location: "home"

  @doc """
  Join together a person's first name and last name.
  If that person only as a first name, then only the first name will be the full name.

  ## Examples

  iex> ryan = %Person{first_name: "Ryan", last_name: "Bigg"}
  iex> ryan |> Person.full_name
  "Ryan Bigg"

  iex> madonna = %Person{first_name: "Madonna"}
  iex> madonna |> Person.full_name
  "Madonna"
  """
  def full_name(%__MODULE__{
        first_name: first_name,
        last_name: nil
      }) do
    "#{first_name}"
  end

  def full_name(%__MODULE__{
        first_name: first_name,
        last_name: last_name
      }) do
    "#{first_name} #{last_name}"
  end

  @doc """
  Takes in person's birthday and returns their age.
  This doctest is only valid on the day it was written: ~D[2023-07-09]
  ## Examples

  iex> person = %Person{birthday: ~D[1987-12-04]}
  iex> person |> Person.age
  35.59479808350445
  """
  def age(%__MODULE__{} = person) do
    days = Date.diff(Date.utc_today(), person.birthday)
    days / 365.25
  end

  def home(%__MODULE__{} = person) do
    %{person | location: "home"}
  end

  def away(%__MODULE__{} = person) do
    %{person | location: "away"}
  end

  defp set_location(%__MODULE__{} = person, location) do
    IO.puts("#{person |> full_name}'s location is now #{location}.")
    %{person | location: location}
  end

  def toggle_location(%__MODULE__{location: "away"} = person) do
    person |> set_location("home")
  end

  def toggle_location(%__MODULE__{location: "home"} = person) do
    person |> set_location("away")
  end

  defimpl Inspect do
    def inspect(
          %{
            first_name: first_name,
            last_name: last_name,
            location: location
          },
          _
        ) do
      "Person [#{first_name} #{last_name}, #{location}]"
    end
  end
end
