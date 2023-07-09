defmodule People.PersonTest do
  use ExUnit.Case
  alias People.Person
  doctest People.Person

  test "full_name/1" do
    person = %Person{
      first_name: "Ryan",
      last_name: "Bigg"
    }

    assert person |> Person.full_name() === "Ryan Bigg"
  end

  test "full_name/1 with mononyms" do
    teller = %Person{
      first_name: "Teller"
    }

    assert teller |> Person.full_name() === "Teller"

    madonna = %Person{
      first_name: "Madonna"
    }

    assert madonna |> Person.full_name() === "Madonna"
  end

  # The age test is only valid on the day it was written: ~D[2023-07-09]
  test "age/1" do
    person = %Person{
      birthday: ~D[1987-12-04]
    }

    assert person |> Person.age() === 35.59479808350445
  end
end
