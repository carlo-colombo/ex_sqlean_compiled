defmodule Mix.Tasks.Compile.Sqlean do
  @moduledoc "Printed when the user requests `mix help echo`"
  @shortdoc "Compile Sqlean sqlite extension"

  use Mix.Task

  @impl Mix.Task
  def run(_args) do
    Mix.Project.config()
    |> Keyword.put(:make_cwd, "./sqlean_src")
    |> Keyword.put(:make_makefile, "../Makefile")
    |> Keyword.put(:make_targets, ["all"])
    |> ElixirMake.Compiler.make([])
  end

  def clean() do
    Mix.shell().info("cleaning")

    Mix.Project.config()
    |> Keyword.put(:make_cwd, Path.join(:code.priv_dir(:ex_sqlean_compiled), "sqlean_src"))
    |> Keyword.put(:make_targets, ["clean"])
    |> ElixirMake.Compiler.make([])
  end
end
