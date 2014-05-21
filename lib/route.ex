defmodule Route do
  import Weber.Route
  require Weber.Route

  route on("GET", "/", :ElixirFeed.Main, :index)
    |>  on("GET", "/plain", :ElixirFeed.Plain, :index)

end
