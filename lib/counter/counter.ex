defmodule Counter do
  @moduledoc """
  Documentation for Counter.
  """

  alias Counter.Core

  def start(f) do
    run(f, 0)
  end

  def run(counter_function, count) do
    counter_function.(count)
    new_count = Core.inc(count)
    :timer.sleep(1000)
    run(counter_function, new_count)
  end
end
