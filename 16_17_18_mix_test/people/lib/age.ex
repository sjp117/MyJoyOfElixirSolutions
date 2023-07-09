defmodule People.Age do
  import Plug.Conn

  def init(options), do: options

  defp get_age(birthday) do
    birthdate = Date.from_iso8601(birthday) |> elem(1)
    days = Date.diff(Date.utc_today(), birthdate)
    (days / 365.25) |> trunc()
  end

  def call(%Plug.Conn{params: %{"birthday" => birthday}} = conn, _opts) do
    age = get_age(birthday)

    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "You are #{age} years old!")
  end
end
