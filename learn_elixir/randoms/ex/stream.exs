list = [1,2,3,4, "string"]

list
|> Stream.filter(&is_number/1)
|> Stream.map(&(&1 * 2))
|> Enum.into([])
|> IO.inspect

list
|> Stream.cycle
|> Enum.take(7)
|> IO.inspect

1
|> Stream.iterate(&(&1 * 10))
|> Enum.take(3)
|> IO.inspect

