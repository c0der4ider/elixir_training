# Elixir modules support attributes, there are built-in attributes and you
#~may also add custom ones.

defmodule MyMod do
  @moduledoc """
  This is a build-in attribute on a example module.
  """

  @my_data 100 # This is a custom attribute.
  IO.inspect(@my_data) #=> 100
end
