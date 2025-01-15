defmodule Mix.Tasks.Compile.Sqlean do
  @moduledoc "Printed when the user requests `mix help echo`"
  @shortdoc "Compile Sqlean sqlite extension"

  use Mix.Task

  @impl Mix.Task
  def run(_args) do
    Mix.Project.config()
    |> ElixirMake.Compiler.make([])
  end

  def clean() do
    Mix.shell().info("cleaning")

    Mix.Project.config()
    |> Keyword.put(:make_targets, ["clean"])
    |> ElixirMake.Compiler.make([])
  end
end
