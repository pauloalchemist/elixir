defmodule NicepayWeb.AccountsController do
  use NicepayWeb, :controller

  alias Nicepay.Account

  action_fallback NicepayWeb.FallbackController

  def deposti(conn, params) do
    with {:ok, %Account{} = account} <- Nicepay.deposit (params) do
      conn
      |> put_status(:ok)
      |> render("create.json", account: account)
    end
  end
end
