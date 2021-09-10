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
  def direct_filter(map_or_iter, fun) when is_function(fun, 1) do
    iter =
      if is_map(map_or_iter) do
        :maps.iterator(map_or_iter)
      else
        map_or_iter
      end

    # Might throw a BadMapError, which should bubble up.
    # TODO should this be improved with a try/catch
    # to add some extra information to the exception?
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


end
