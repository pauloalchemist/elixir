defmodule Nicepay do
  alias Nicepay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
