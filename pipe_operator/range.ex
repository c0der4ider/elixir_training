# The pipe operator |> allows you to pass the output of an exprenssion
# as the first parameter into a function.

Range.new(1,10)
|> Enum.map(fn x -> x * x end)
|> Enum.filter(fn x -> rem(x, 2) == 0 end)
