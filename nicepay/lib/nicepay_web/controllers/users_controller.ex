defmodule NicepayWeb.UsersController do
  use NicepayWeb, :controller

  alias Nicepay.User

  action_fallback NicepayWeb.FallbackController

  def create(conn, params) do
    params
    |> Nicepay.create_user()
    |> handle_response(conn)
  end

  defp handle_response({:ok, %User{} = user}, conn) do
    conn
    |> put_status(:created)
    |> render("create.json", user: user )
  end

  defp handle_response({:error, _result} = error, _conn), do: error
end
