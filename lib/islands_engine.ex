defmodule IslandsEngine do
  alias Helpers.Format

  @somename "is"
  @moduledoc """
  Documentation for `IslandsEngine`.
  """
alias ElixirLS.LanguageServer.Providers.CodeAction.Helpers

  @doc """
  Hello world.

  ## Examples

      iex> IslandsEngine.hello()
      :world

  """

  def hello do
    :world
  end

  def newuser("Mike", age)  do
    %{name: "Mike" <> " " <> @somename <> " cool", age: age}
  end

  def newuser(name, age) when age >= 18 do
    formatted_user = Format.trim_text(name)
    %{name: formatted_user <> " " <> @somename <> " not cool and old", age: age}
  end

  def newuser(name, age) when age < 18 do
    formatted_user = Format.trim_text(name)
    %{name: formatted_user <> " " <> @somename <> " not cool but young", age: age}
  end

  def newuser(), do: generate_user()


  defp generate_user do
    %{mike: "Mike", age: 53}
  end

  def generate_slug(text) do
    text
    |> String.downcase()
    |> String.trim()
    |> String.replace(" ", "-")
    |> dbg()
  end
end
