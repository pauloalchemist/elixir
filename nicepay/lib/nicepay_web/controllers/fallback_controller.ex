defmodule NicepayWeb.FallbackController do
  use NicepayWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(NicepayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
