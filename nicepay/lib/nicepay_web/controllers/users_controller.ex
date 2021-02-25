defmodule NicepayWeb.UsersController do
  use NicepayWeb, :controller

  alias Nicepay.User

  action_fallback NicepayWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Nicepay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user )
    end
  end
end
