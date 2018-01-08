defmodule I do
  require Logger
  @moduledoc """
  Documentation for Itil.


  This is for lazy printing and logging
  """

  @doc """
  Hello world.

  ## Examples

      iex> I.p "sup"
      :ok


      iex> I.p "some term",[1,2,3]
      :ok


      iex> I.l "sup"
      :ok

      iex> I.l "some term", [1,2,4]
      :ok

      iex> I.ld "another term", %{a_map: :be_here}
      :ok
  """
  def p(term) do
    IO.puts inspect( term, pretty: true)
  end
  def p(string,term) when is_binary(string) do
    IO.puts string
    p(term)
  end
  def l(term) do
    Logger.info inspect term, pretty: true
  end
  def l(string,term) when is_binary(string)do
    Logger.info string
    l(term)
  end 
  def ld(term) do
    Logger.debug inspect term, pretty: true
  end
  def ld(string,term) when is_binary(string) do
    Logger.debug string
    l(term)
  end
  def le(term) do
    Logger.error inspect term, pretty: true
  end
  def le(string,term) when is_binary(string) do
    Logger.error string
    l(term)
  end 
end
