defmodule ExSqleanCompiled.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_sqlean_compiled,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      make_cwd: "sqlean_src",
      make_makefile: "../Makefile",
      make_targets: ["all"],
      make_clean: ["clean"],
      compilers:  Mix.compilers() ++ [:sqlean],
      # aliases: ["deps.precompile": ["echo"]]
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
      {:elixir_make, "~> 0.4", runtime: false},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
