defmodule WeberHttpResponseTest do
  use ExUnit.Case

  test "SimpleResponse test" do
    {:ok, status, _, client} = :hackney.request(:get, 'http://localhost:8080/weber', [], <<>>, [])
    assert(status == 404)
  end

  test "Make the Elixir_feed app respond" do
    {:ok, status, _, client} = :hackney.request(:get, 'http://localhost:8080/', [], <<>>, [])
    assert(status == 200)
  end

end
