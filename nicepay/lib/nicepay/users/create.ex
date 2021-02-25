defmodule Nicepay.Users.Create do
  alias Nicepay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
