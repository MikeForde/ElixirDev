defmodule IslandsEngine do
  import Helpers.Format, only: [trim_text: 1]
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

  def newuser(name, age) do
    formatted_user = trim_text(name)
    %{name: formatted_user, age: age}
  end

  def newuser(), do: generate_user()

  defp generate_user do
    %{mike: "Mike", age: 53}
  end
end
