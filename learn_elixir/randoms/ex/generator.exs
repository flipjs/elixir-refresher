list = for name <- ["felipe", "onie"] do
  String.upcase(name)
end

IO.inspect list

IO.puts "----------------"

suits = [:hearts, :diamonds, :clubs, :spades]
faces = [2,3,4,5,6,7,8,9, :jack, :queen, :king, :ace]
deck = for suit <- suits, face <- faces do
  {suit, face}
end
IO.inspect deck

IO.puts "----------------"

for {:spades, face} <- deck do
  {:spades, face}
end
|> IO.inspect

IO.puts "----------------"

for {:spades, face} <- deck, is_number(face) do
  {:spades, face}
end
|> IO.inspect

IO.puts "----------------"

user = %{name: "felipe", email: "felipe@foo.com", dob: 1991}
nameemail = for {k, v} <- user,
            k in [:name, :email],
            into: %{},
            do: {k, v}
IO.inspect nameemail
