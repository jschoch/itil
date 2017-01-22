# Itil

Lazy printing and logging

  ## Examples

      iex> I.p "sup"
      "sup"
      :ok


      iex> I.p "some term",[1,2,3]
      "some term"
      [1, 2, 3]
      :ok


      iex> I.l "sup"
      10:47:53.389 [info]  "sup"
      :ok

      iex> I.l "some term", [1,2,4]

      10:48:21.239 [info]  some term

      10:48:21.242 [info]  [1, 2, 4]
      :ok




## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `itil` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:itil, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/itil](https://hexdocs.pm/itil).

