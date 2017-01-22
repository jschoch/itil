defmodule Itil.Mixfile do
  use Mix.Project

  def project do
    [app: :itil,
     version: "0.1.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package(),
     description: description(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end


  defp package do
    [# These are the default files included in the package
     name: :itil,
     files: ["lib", "mix.exs", "README*","LICENSE*"],
     maintainers: ["Jesse Schoch"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/jschoch/itil",}
      #"Docs" => "http://ericmj.github.io/postgrex/"}
    ]
  end
  defp description do
    """
    Lazy print and log functions and utils

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

    """
  end

end
