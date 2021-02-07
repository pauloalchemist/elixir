IO.puts("oi elixir")
IO.puts(true == :true)
IO.puts(div 10, 2)
IO.puts(div(10,2))
IO.puts(0b1010)
IO.puts(:banana)
IO.puts(is_atom(Elixir))
string = :word
IO.puts("hello #{string}")
IO.puts("hello\n#{string}")
IO.puts(is_binary("mundo"))
IO.puts(byte_size("mundo"))
IO.puts(String.length("mundo"))
IO.puts(String.upcase("paulo giovani"))
IO.puts(String.downcase("Paulo Giovani"))
# função anônima
add = fn a, b -> a + b end
IO.puts(add.(10,15))
IO.puts(is_function(add))
# listas
list = [1, 2, 3, 4, 5]
list2 = [6, 7, 8]
list3 = list ++ list2
IO.puts(length(list))
IO.puts(length(list3))
list4 = [104, 101, 108, 108, 111]
IO.puts(list4)
IO.puts('hello' == "hello")
