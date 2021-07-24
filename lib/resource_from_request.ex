defmodule ResourceFromRequest do
  @moduledoc """
  Set a private value for a chosen resource type
  """
  import Plug.Conn

  @doc false
  def call(conn, type: :url, param: url_param, private_name: priv_name),
    do:
      conn |> Enron.Helper.get_param_from_url(%{param: url_param}) |> set_private(priv_name, conn)

  def call(conn, type: :header, param: header_param, private_name: priv_name),
    do: conn |> Enron.Helper.get_param_from_header(header_param) |> set_private(priv_name, conn)

  defp set_private([value], key, conn), do: put_private(conn, key, value)
  defp set_private(value, key, conn), do: put_private(conn, key, value)
end
