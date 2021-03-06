defmodule Slax.MixProject do
  use Mix.Project

  def project do
    [
      app: :slax,
      version: "0.1.3",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "SAX parser",
      package: package(),
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:erlsom, "~> 1.4"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ~w[MIT],
      maintainers: ["Ben Schmeckpeper"],
      exclude_patterns: [~r{~$}],
      links: %{"GitHub" => "https://github.com/bschmeck/slax"}
    ]
  end

  defp docs do
    [
      source_url: "https://github.com/bschmeck/slax",
      extras: ["README.md"],
      main: "readme"
    ]
  end
end
