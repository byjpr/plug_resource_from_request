defmodule ResourceFromRequest.Helper do
  @moduledoc false
  import Plug.Conn

  def get_param_from_url(conn, %{param: key}), do: get_param_from_url(conn, key)

  def get_param_from_url(conn, key) when is_atom(key),
    do: get_param_from_url(conn, Atom.to_string(key))

  def get_param_from_url(conn, key), do: conn.params[key]

  def get_param_from_header(conn, key), do: get_req_header(conn, key)
end
