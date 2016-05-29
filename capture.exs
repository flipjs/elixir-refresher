add1 = &(&1+1)
add1.(2)
  |> IO.puts

sum = &(&1 + &2)
sum.(3, 4) |> IO.puts

map = &{&1, &2}
map.(1, 2)
  |> IO.inspect

list = &[&1, &2]
list.(1, 2)
  |> IO.inspect

IO.inspect &String.upcase(&1)
