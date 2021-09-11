defmodule MapsFilterProf do
  def wrapped_filter(map_or_iter, fun) when is_function(fun, 1) do
    wrapped_fun = fn key, val -> fun.({key, val}) end
    :maps.filter(wrapped_fun, map_or_iter)
  end

  @doc """
  Implements Maps.filter by 're-implementing' `:maps.filter/2`,
  working directly with a unary function accepting `{key, value}` arguments.

  Notes:
  - Currently we do not wrap the first `next` clause the way this is done in `:maps.filter/2`
    This is probably OK as I expect Elixir already handles this
    when the erlang error is turned into a `BadMapError`, but I am not 100% sure.
  - We might opt for inlining `:maps.next` in this module as well,
    to reduce function call overhead. (It is a thin wrapper over `:erts_internal.map_next/3`.)
  """
  def direct_filter(map, fun) when is_map(map) and is_function(fun, 1) do
    iter = :maps.iterator(map)
    next = :maps.next(iter)

    :maps.from_list(do_direct_filter(next, fun))
  end

  defp do_direct_filter(:none, _fun), do: []
  defp do_direct_filter({key, value, iter}, fun) do
    if fun.({key, value}) do
      [{key, value} | do_direct_filter(:maps.next(iter), fun)]
    else
      do_direct_filter(:maps.next(iter), fun)
    end
  end

  def direct_filter_inlined(map, fun) when is_map(map) and is_function(fun, 1) do
    iter = iterator(map)
    next = next(iter)

    # Cannot be inlined as it is a BIF
    :maps.from_list(do_direct_filter_inlined(next, fun))
  end

  defp do_direct_filter_inlined(:none, _fun), do: []
  defp do_direct_filter_inlined({key, value, iter}, fun) do
    if fun.({key, value}) do
      [{key, value} | do_direct_filter_inlined(next(iter), fun)]
    else
      do_direct_filter_inlined(next(iter), fun)
    end
  end

  @compile {:inline, iterator: 1}
  defp iterator(map), do: [0 | map]

  @compile {:inline, next: 1}
  defp next({key, val, iter}), do: {key, val, iter}
  defp next([path | map]), do: :erts_internal.map_next(path, map, :iterator)
  defp next(:none), do: :none
end
