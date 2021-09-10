defmodule Benchmarks do
  @warmup 0.5
  @time 0.5
  @memory_time 0.5
  @parallel 1

  @inputs (
  (5..10)
  |> Enum.map(&Integer.pow(2, &1))
  |> Enum.map(&(1..&1))
  |> Enum.map(fn range ->
    name = range.last |> Integer.to_string |> String.pad_leading(10, "0")
    {"#{name}", range}
  end)
  )

  def odd_value1?({_key, value}) do
    require Integer
    Integer.is_odd(value)
  end

  def odd_value2?(_key, value) do
    require Integer
    Integer.is_odd(value)
  end

  def run_integer_maps_oddness() do
    Benchee.run(%{
          "MapsFilterProf.wrapped_filter" => fn input -> MapsFilterProf.wrapped_filter(input, &odd_value1?/1) end,
          "MapsFilterProf.direct_filter" => fn input -> MapsFilterProf.direct_filter(input, &odd_value1?/1) end,
          "MapsFilterProf.direct_filter_inlined" => fn input -> MapsFilterProf.direct_filter_inlined(input, &odd_value1?/1) end,
          ":maps.filter" => fn input -> :maps.filter(&odd_value2?/2, input) end,
                },
      after_each: fn _ -> :erlang.garbage_collect() end, # make garbage collection unlikely to occur _during_ benchmark.
      inputs: @inputs,
      warmup: @warmup,
      time: @time,
      memory_time: @memory_time,
      pre_check: true,
      formatters: [
        Benchee.Formatters.Console,
        {Benchee.Formatters.CSV, file: "benchmark_runs/map_filter.csv"},
        {Benchee.Formatters.Markdown, file: "benchmark_runs/map_filter.md", description:
        """
        Compares:

        - `:maps.filter` (which takes a function with two arguments)
        - MapsFilterProf.wrapped_filter (wrapping `:maps.filter` to be able to pass a unary function taking a {k, v}-pair)
        - MapsFilterProf.direct_filter (re-implementing `:maps.filter` to be able to pass a unary function taking a {k, v}-pair)
        - MapsFilterProf.direct_filter_inlined (Variant of the above, but with `:maps.next` and `:maps.iterator` also inlined)

        By filtering for a map with `n` key-value-pairs (where keys and values are integers and the same value),
        all odd values.
        """}
      ]
    )
  end

  def run() do
    run_integer_maps_oddness()
  end

end
Benchmarks.run()
