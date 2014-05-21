defmodule ElixirFeed.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_feed,
      version: "0.0.1",
      deps: deps(Mix.env)
    ]
  end

  def application do
    [
      applications: [:inets, :hackney],
      mod: {ElixirFeed, []}
    ]
  end

  defp deps(:prod) do
    [
      { :weber, github: "elixir-web/weber" },
      { :elixir_commits, github: "iamkristian/elixir_commits" }
    ]
  end

  defp deps(:test) do
    deps(:prod) ++ [{ :hackney, github: "benoitc/hackney" }]
  end

  defp deps(_) do
    deps(:prod)
  end
end
