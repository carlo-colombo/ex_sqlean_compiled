defmodule ExSqleanCompiled do
  @moduledoc """
  Documentation for `ExSqleanCompiled`.
  """

  def path_for_module(module) do
    Path.join([build_path(), "dist", "#{module}.so"])
  end

  def build_path() do
    Path.join(:code.priv_dir(:ex_sqlean_compiled), "sqlean_src")
  end
end
