defmodule Chart do
  # Based on benchmark plotting code
  # written by Saša Jurić
  def build(data, opts) do
    Application.put_env(:gnuplot, :timeout, {0, :ms})

    titles = Enum.map(data, fn {title, _} -> to_string(title) end)
    colors = ~w/black dark-green blue dark-khaki dark-violet gray40/
    pts = [4, 5, 6, 7, 12, 13]
    dts = [1, 2, 3, 4, 5, 6]

    plots =
      [titles, colors, pts, dts]
      |> Enum.zip()
      |> Enum.map(fn {title, color, pt, dt} ->
      [
        "-",
        :title,
        title,
        :smooth,
        :csplines,
        :with,
        :linespoints,
        :pn,
        5,
        :lc,
        :rgb,
        color,
        :dt,
        dt,
        :pt,
        pt,
        :ps,
        1.6
      ]
    end)
    |> Gnuplot.plots()

      Gnuplot.plot(
        Keyword.get(opts, :commands, []) ++ [[:set, :key, :left, :top], plots],
        Enum.map(
          data,
          fn {_title, points} -> Enum.map(points, &Tuple.to_list/1) end
        )
      )
  end

  def build_from_csv_raw(filepath, opts) do
    filepath
    |> Path.expand()
    |> File.stream!
    |> CSV.decode!(headers: true)
    |> Enum.group_by(&(escape_underscores(&1["Name"])), fn row ->
      x = String.to_integer(row["Input"])
      y = 1 / String.to_float(row["Iterations per Second"])
      {x, y}
    end
    )
    |> Enum.map(fn {k, v} -> {k, Enum.sort(v)} end)
    |> Enum.into(%{})
    |> build(opts)
  end

  defp escape_underscores(string) do
    string
    |> String.replace("_", "\\\\\\_")
  end

  def build_from_csv(filepath, title, xlabel, ylabel) do
    build_from_csv_raw(filepath, commands: [
          [:set, :title, title],
          [:set, :xlabel, xlabel],
          [:set, :ylabel, ylabel],
          [:set, :format, :x, "%.0s%c"],
          [:set, :format, :y, "%s%cs"],
          [:set, :grid, :xtics],
          [:set, :grid, :ytics],
          # [:set, :logscale, :x, 10],
          # [:set, :logscale, :y, 10],
        ])
  end
end
