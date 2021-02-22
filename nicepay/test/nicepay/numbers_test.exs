defmodule Nicepay.NumbersTest do
  use ExUnit.Case

  alias Nicepay.Numbers

  describe "sum_from_file/1" do
    test "Quando um arquivo válido for informado, retornar a soma de seus números" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "Quando um arquivo inválido for informado, retornar um erro" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "Invalid file!"}}

      assert response == expected_response
    end
  end
end
