defmodule Playground.Mixfile do
  use Mix.Project
  @moduledoc false

  def project, do: [
    app: :playground,
    version: "0.1.0",
    elixir: "~> 1.4",
    build_embedded: Mix.env == :prod,
    start_permanent: Mix.env == :prod,
    deps: deps()
  ]

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application, do: [
    applications: [:logger]
  ]

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps, do: [
    {:credo, "~> 0.5"},
    {:poison, "~> 3.0"},
    {:ex_doc, "~> 0.14.5"}
  ]

end
