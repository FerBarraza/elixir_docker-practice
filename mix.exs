
defmodule Portal.Mixfile do
  use Mix.Project

  def project do
    [app: :portal,
     name: "Elixir Portal",
     version: "0.0.1",
     source_url: "https://github.com/jswinarton/elixir-portal",
     homepage_url: "https://www.howistart.org/posts/elixir/1#modeling-portal-doors-with-agents",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],
     mod: {Portal, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:earmark, "~> 0.1", only: :dev},
     {:ex_doc, "~> 0.11", only: :dev}]
  end
end



























