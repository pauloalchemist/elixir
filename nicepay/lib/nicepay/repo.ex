defmodule Nicepay.Repo do
  use Ecto.Repo,
    otp_app: :nicepay,
    adapter: Ecto.Adapters.Postgres
end
