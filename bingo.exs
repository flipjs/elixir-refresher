num = 7

bingo = fn
  (2) -> "bingo!"
  (7) -> "magnificent!"
  (_) -> "no win"
end

IO.puts bingo.(num)

