defmodule People.Plug do
  import Plug.Conn

  def init(options) do
    # initialize options
    options
  end

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("Text/plain")
    |> send_resp(200, "Hello again from the People project!")
  end
end
