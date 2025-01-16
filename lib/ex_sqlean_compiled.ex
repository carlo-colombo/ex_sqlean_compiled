defmodule ExSqleanCompiled do
  @moduledoc """
  Documentation for `ExSqleanCompiled`.
  """

  def path_for_module(module) do
    Path.join([:code.priv_dir(:ex_sqlean_compiled),  "#{module}.so"])
  end
end
