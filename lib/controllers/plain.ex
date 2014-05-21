defmodule ElixirFeed.Plain do
  def index([], _conn) do
    {:text, "Hello World"}
  end
end
