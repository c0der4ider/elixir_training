# Funtion declarations also support guards and multiple clauses.
# When a function with multple clauses is called, the first function
# that satisfies the clause will be invoke.
# Example: invoking area({:circle, 3}) will call the second area
# function defined below, not the first:

defmodule Geometry do
  def area({:rectangle, w, h}) do
    w * h
  end

  def area({:circle, r}) when is_number(r) do
    3.14 * r * r
  end
end

IO.puts Geomatry.area({:rectangle, 2, 3})
IO.puts Geomatry.area({:circle, 3})

# Geomatry.area({:circle, "not_a_number"})
#=> ** (FunctionClauseError) no function clause matching is Geometry.area/1
