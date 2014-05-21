defmodule ElixirFeed.Main do

  def index([], _conn) do
    commits = fetch_commits
    message = for m <- commits, do: format_commits(m)
    result = String.from_char_data!(message)

    {:render, [commits: result], []}
  end

  defp format_commits(c) do
    "<li class=\"list-group-item\">" <> format_badge(c) <> c["message"] <> "</li>"
  end

  defp format_badge(c) do
    "<span class=\"badge\">" <> c["author"]["name"] <> "</span>"
  end

  defp fetch_commits do
    ElixirCommits.GithubFetcher.fetch_page("1")
  end
end
