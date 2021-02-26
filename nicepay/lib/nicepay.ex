defmodule Nicepay do

  alias Nicepay.Users.Create, as: UserCreate
  alias Nicepay.Accounts.Deposit

  defdelegate create_user(params), to: UserCreate, as: :call
  defdelegate deposit(params), to: Deposit, as: :call
end
