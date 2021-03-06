defmodule ResourceFromRequest.MixProject do
  use Mix.Project

  def project do
    [
      app: :plug_resource_from_request,
      version: "0.1.1",
      elixir: "~> 1.10",
      test_coverage: [tool: ExCoveralls],
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Jordan Parker"],
      licenses: ["AGPL-3.0-only"],
      links: %{"GitHub" => "https://github.com/byjpr/plug_resource_from_request"}
    ]
  end

  defp description do
    """
    Set a private value from headers or URL params
    """
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
      {:joken, "~> 2.0.0"},
      {:phoenix, "~> 1.5.4"},
      {:jason, "~> 1.2"},
      {:plug_cowboy, "~> 2.0"},
      {:timex, "~> 3.7"},
      {:git_cli, "~> 0.3", only: :dev, runtime: false},
      {:versioce, "~> 1.1.1", only: :dev, runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:excoveralls, "~> 0.10", only: :test, runtime: false},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:credo_naming, "~> 1.0", only: [:dev, :test], runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
