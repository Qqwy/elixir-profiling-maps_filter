defmodule Benchmarks do
  @warmup 2
  @time 5
  @memory_time 2
  @parallel 1

  # @inputs (
  # (5..25)
  # |> Enum.map(&Integer.pow(2, &1))
  # |> Enum.map(&(1..&1))
  # |> Enum.map(fn range ->
  #   name = range.last |> Integer.to_string |> String.pad_leading(10, "0")
  #   {"#{name}", range}
  # end)
  # )

  def build_inputs(max_exp \\ 6) do
    for {exp, iterations_exp} <-
    Enum.zip(
      0..max_exp,
      5..1 |> Stream.concat(Stream.repeatedly(fn -> 1 end)) |> Enum.take(max_exp + 1)
    ),
      scale = trunc(:math.pow(10, exp)),
      iterations = trunc(:math.pow(10, iterations_exp)),
      factor <- if(exp == max_exp, do: [1], else: 1..9) do
        size = scale * factor

      end
    |> Enum.map(fn size -> {padded_int(size, max_exp + 1), build_map_from_range(0..size - 1)} end)
  end

  defp build_map_from_range(range) do
    range
    |> Enum.map(&({&1, &1}))
    |> Enum.into(%{})
  end

  defp padded_int(integer, max_pad) do
    integer
    |> Integer.to_string
    |> String.pad_leading(max_pad, "0")
  end

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
      inputs: build_inputs(6),
      warmup: @warmup,
      time: @time,
      memory_time: @memory_time,
      parallel: @parallel,
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
