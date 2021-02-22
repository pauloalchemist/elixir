defmodule NicepayWeb.WelcomeController do
  use NicepayWeb, :controller

  def index(conn, _params) do
    text(conn, "Welcome to the NicePay API!")
  end
end
