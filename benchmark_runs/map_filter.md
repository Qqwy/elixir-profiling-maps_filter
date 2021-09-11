
# Benchmark

Compares:

- `:maps.filter` (which takes a function with two arguments)
- MapsFilterProf.wrapped_filter (wrapping `:maps.filter` to be able to pass a unary function taking a {k, v}-pair)
- MapsFilterProf.direct_filter (re-implementing `:maps.filter` to be able to pass a unary function taking a {k, v}-pair)
- MapsFilterProf.direct_filter_inlined (Variant of the above, but with `:maps.next` and `:maps.iterator` also inlined)

By filtering for a map with `n` key-value-pairs (where keys and values are integers and the same value),
all odd values.


## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">8</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">7.60 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.12.0</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">24.0.1</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">2 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">1 s</td>
  </tr>
</table>

## Statistics




__Input: 0000001__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">698.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.22%</td>
    <td style="white-space: nowrap; text-align: right">1.31 μs</td>
    <td style="white-space: nowrap; text-align: right">2.56 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">559.28 K</td>
    <td style="white-space: nowrap; text-align: right">1.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.82%</td>
    <td style="white-space: nowrap; text-align: right">1.68 μs</td>
    <td style="white-space: nowrap; text-align: right">2.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">528.33 K</td>
    <td style="white-space: nowrap; text-align: right">1.89 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.77%</td>
    <td style="white-space: nowrap; text-align: right">1.76 μs</td>
    <td style="white-space: nowrap; text-align: right">2.65 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">499.42 K</td>
    <td style="white-space: nowrap; text-align: right">2.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.36%</td>
    <td style="white-space: nowrap; text-align: right">1.88 μs</td>
    <td style="white-space: nowrap; text-align: right">2.56 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">282.67 K</td>
    <td style="white-space: nowrap; text-align: right">3.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.77%</td>
    <td style="white-space: nowrap; text-align: right">3.37 μs</td>
    <td style="white-space: nowrap; text-align: right">4.91 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">698.60 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">559.28 K</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">528.33 K</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">499.42 K</td>
    <td style="white-space: nowrap; text-align: right">1.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">282.67 K</td>
    <td style="white-space: nowrap; text-align: right">2.47x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">136 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">128 B</td>
    <td>0.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">152 B</td>
    <td>1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">208 B</td>
    <td>1.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">264 B</td>
    <td>1.94x</td>
  </tr>

</table>


<hr/>


__Input: 0000002__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">640.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.07%</td>
    <td style="white-space: nowrap; text-align: right">1.44 μs</td>
    <td style="white-space: nowrap; text-align: right">2.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">542.61 K</td>
    <td style="white-space: nowrap; text-align: right">1.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.32%</td>
    <td style="white-space: nowrap; text-align: right">1.78 μs</td>
    <td style="white-space: nowrap; text-align: right">2.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">495.94 K</td>
    <td style="white-space: nowrap; text-align: right">2.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.63%</td>
    <td style="white-space: nowrap; text-align: right">2.10 μs</td>
    <td style="white-space: nowrap; text-align: right">2.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">323.78 K</td>
    <td style="white-space: nowrap; text-align: right">3.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±108.35%</td>
    <td style="white-space: nowrap; text-align: right">2.28 μs</td>
    <td style="white-space: nowrap; text-align: right">15.57 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">197.73 K</td>
    <td style="white-space: nowrap; text-align: right">5.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±102.74%</td>
    <td style="white-space: nowrap; text-align: right">3.81 μs</td>
    <td style="white-space: nowrap; text-align: right">24.53 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">640.31 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">542.61 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">495.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">323.78 K</td>
    <td style="white-space: nowrap; text-align: right">1.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">197.73 K</td>
    <td style="white-space: nowrap; text-align: right">3.24x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">248 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">216 B</td>
    <td>0.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">264 B</td>
    <td>1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">320 B</td>
    <td>1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">352 B</td>
    <td>1.42x</td>
  </tr>

</table>


<hr/>


__Input: 0000003__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">495.95 K</td>
    <td style="white-space: nowrap; text-align: right">2.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.30%</td>
    <td style="white-space: nowrap; text-align: right">2.04 μs</td>
    <td style="white-space: nowrap; text-align: right">2.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">473.99 K</td>
    <td style="white-space: nowrap; text-align: right">2.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±121.02%</td>
    <td style="white-space: nowrap; text-align: right">1.44 μs</td>
    <td style="white-space: nowrap; text-align: right">11.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">466.20 K</td>
    <td style="white-space: nowrap; text-align: right">2.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.36%</td>
    <td style="white-space: nowrap; text-align: right">2.15 μs</td>
    <td style="white-space: nowrap; text-align: right">2.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">309.92 K</td>
    <td style="white-space: nowrap; text-align: right">3.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±104.91%</td>
    <td style="white-space: nowrap; text-align: right">2.40 μs</td>
    <td style="white-space: nowrap; text-align: right">15.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">261.99 K</td>
    <td style="white-space: nowrap; text-align: right">3.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.07%</td>
    <td style="white-space: nowrap; text-align: right">3.79 μs</td>
    <td style="white-space: nowrap; text-align: right">4.95 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">495.95 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">473.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">466.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">309.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">261.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.89x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">248 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">304 B</td>
    <td>1.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">320 B</td>
    <td>1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">376 B</td>
    <td>1.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">408 B</td>
    <td>1.65x</td>
  </tr>

</table>


<hr/>


__Input: 0000004__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">414.07 K</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±125.67%</td>
    <td style="white-space: nowrap; text-align: right">1.71 μs</td>
    <td style="white-space: nowrap; text-align: right">13.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">413.31 K</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±48.34%</td>
    <td style="white-space: nowrap; text-align: right">2.14 μs</td>
    <td style="white-space: nowrap; text-align: right">6.75 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">312.52 K</td>
    <td style="white-space: nowrap; text-align: right">3.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±107.01%</td>
    <td style="white-space: nowrap; text-align: right">2.40 μs</td>
    <td style="white-space: nowrap; text-align: right">16.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">307.08 K</td>
    <td style="white-space: nowrap; text-align: right">3.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±114.63%</td>
    <td style="white-space: nowrap; text-align: right">2.00 μs</td>
    <td style="white-space: nowrap; text-align: right">16.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">243.71 K</td>
    <td style="white-space: nowrap; text-align: right">4.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±29.31%</td>
    <td style="white-space: nowrap; text-align: right">3.83 μs</td>
    <td style="white-space: nowrap; text-align: right">8.56 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">414.07 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">413.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">312.52 K</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">307.08 K</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">243.71 K</td>
    <td style="white-space: nowrap; text-align: right">1.7x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">416 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">432 B</td>
    <td>1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">488 B</td>
    <td>1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">336 B</td>
    <td>0.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">528 B</td>
    <td>1.27x</td>
  </tr>

</table>


<hr/>


__Input: 0000005__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">479.29 K</td>
    <td style="white-space: nowrap; text-align: right">2.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±98.77%</td>
    <td style="white-space: nowrap; text-align: right">1.51 μs</td>
    <td style="white-space: nowrap; text-align: right">9.79 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">477.10 K</td>
    <td style="white-space: nowrap; text-align: right">2.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.97%</td>
    <td style="white-space: nowrap; text-align: right">2.10 μs</td>
    <td style="white-space: nowrap; text-align: right">2.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">419.00 K</td>
    <td style="white-space: nowrap; text-align: right">2.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.84%</td>
    <td style="white-space: nowrap; text-align: right">2.40 μs</td>
    <td style="white-space: nowrap; text-align: right">2.70 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">275.62 K</td>
    <td style="white-space: nowrap; text-align: right">3.63 μs</td>
    <td style="white-space: nowrap; text-align: right">±139.65%</td>
    <td style="white-space: nowrap; text-align: right">2.30 μs</td>
    <td style="white-space: nowrap; text-align: right">21.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">191.70 K</td>
    <td style="white-space: nowrap; text-align: right">5.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±78.99%</td>
    <td style="white-space: nowrap; text-align: right">3.83 μs</td>
    <td style="white-space: nowrap; text-align: right">19.52 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">479.29 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">477.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">419.00 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">275.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">191.70 K</td>
    <td style="white-space: nowrap; text-align: right">2.5x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">472 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">368 B</td>
    <td>0.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">544 B</td>
    <td>1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">488 B</td>
    <td>1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">584 B</td>
    <td>1.24x</td>
  </tr>

</table>


<hr/>


__Input: 0000006__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">561.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.39%</td>
    <td style="white-space: nowrap; text-align: right">1.84 μs</td>
    <td style="white-space: nowrap; text-align: right">2.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">373.67 K</td>
    <td style="white-space: nowrap; text-align: right">2.68 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.44%</td>
    <td style="white-space: nowrap; text-align: right">2.63 μs</td>
    <td style="white-space: nowrap; text-align: right">3.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">349.46 K</td>
    <td style="white-space: nowrap; text-align: right">2.86 μs</td>
    <td style="white-space: nowrap; text-align: right">±81.87%</td>
    <td style="white-space: nowrap; text-align: right">2.33 μs</td>
    <td style="white-space: nowrap; text-align: right">11.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">286.80 K</td>
    <td style="white-space: nowrap; text-align: right">3.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±132.50%</td>
    <td style="white-space: nowrap; text-align: right">2.13 μs</td>
    <td style="white-space: nowrap; text-align: right">20.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">195.58 K</td>
    <td style="white-space: nowrap; text-align: right">5.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±66.35%</td>
    <td style="white-space: nowrap; text-align: right">4.34 μs</td>
    <td style="white-space: nowrap; text-align: right">17.80 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">561.13 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">373.67 K</td>
    <td style="white-space: nowrap; text-align: right">1.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">349.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">286.80 K</td>
    <td style="white-space: nowrap; text-align: right">1.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">195.58 K</td>
    <td style="white-space: nowrap; text-align: right">2.87x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">584 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">656 B</td>
    <td>1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">600 B</td>
    <td>1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">456 B</td>
    <td>0.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">688 B</td>
    <td>1.18x</td>
  </tr>

</table>


<hr/>


__Input: 0000007__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">383.75 K</td>
    <td style="white-space: nowrap; text-align: right">2.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±125.41%</td>
    <td style="white-space: nowrap; text-align: right">1.85 μs</td>
    <td style="white-space: nowrap; text-align: right">14.84 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">274.40 K</td>
    <td style="white-space: nowrap; text-align: right">3.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±108.91%</td>
    <td style="white-space: nowrap; text-align: right">2.26 μs</td>
    <td style="white-space: nowrap; text-align: right">15.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">237.41 K</td>
    <td style="white-space: nowrap; text-align: right">4.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±117.60%</td>
    <td style="white-space: nowrap; text-align: right">2.41 μs</td>
    <td style="white-space: nowrap; text-align: right">18.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">189.67 K</td>
    <td style="white-space: nowrap; text-align: right">5.27 μs</td>
    <td style="white-space: nowrap; text-align: right">±61.97%</td>
    <td style="white-space: nowrap; text-align: right">4.28 μs</td>
    <td style="white-space: nowrap; text-align: right">17.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">165.99 K</td>
    <td style="white-space: nowrap; text-align: right">6.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±176.53%</td>
    <td style="white-space: nowrap; text-align: right">2.68 μs</td>
    <td style="white-space: nowrap; text-align: right">44.30 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">383.75 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">274.40 K</td>
    <td style="white-space: nowrap; text-align: right">1.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">237.41 K</td>
    <td style="white-space: nowrap; text-align: right">1.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">189.67 K</td>
    <td style="white-space: nowrap; text-align: right">2.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">165.99 K</td>
    <td style="white-space: nowrap; text-align: right">2.31x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">640 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">488 B</td>
    <td>0.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">656 B</td>
    <td>1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">744 B</td>
    <td>1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">712 B</td>
    <td>1.11x</td>
  </tr>

</table>


<hr/>


__Input: 0000008__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">540.08 K</td>
    <td style="white-space: nowrap; text-align: right">1.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.13%</td>
    <td style="white-space: nowrap; text-align: right">1.91 μs</td>
    <td style="white-space: nowrap; text-align: right">2.08 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">449.45 K</td>
    <td style="white-space: nowrap; text-align: right">2.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.03%</td>
    <td style="white-space: nowrap; text-align: right">2.29 μs</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">367.11 K</td>
    <td style="white-space: nowrap; text-align: right">2.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.94%</td>
    <td style="white-space: nowrap; text-align: right">2.72 μs</td>
    <td style="white-space: nowrap; text-align: right">3.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">329.19 K</td>
    <td style="white-space: nowrap; text-align: right">3.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±77.64%</td>
    <td style="white-space: nowrap; text-align: right">2.41 μs</td>
    <td style="white-space: nowrap; text-align: right">11.79 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">185.31 K</td>
    <td style="white-space: nowrap; text-align: right">5.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±73.92%</td>
    <td style="white-space: nowrap; text-align: right">4.42 μs</td>
    <td style="white-space: nowrap; text-align: right">20.33 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">540.08 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">449.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">367.11 K</td>
    <td style="white-space: nowrap; text-align: right">1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">329.19 K</td>
    <td style="white-space: nowrap; text-align: right">1.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">185.31 K</td>
    <td style="white-space: nowrap; text-align: right">2.91x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">752 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">576 B</td>
    <td>0.77x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">824 B</td>
    <td>1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">768 B</td>
    <td>1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">848 B</td>
    <td>1.13x</td>
  </tr>

</table>


<hr/>


__Input: 0000009__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">427.30 K</td>
    <td style="white-space: nowrap; text-align: right">2.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.93%</td>
    <td style="white-space: nowrap; text-align: right">2.34 μs</td>
    <td style="white-space: nowrap; text-align: right">3.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">370.33 K</td>
    <td style="white-space: nowrap; text-align: right">2.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.41%</td>
    <td style="white-space: nowrap; text-align: right">2.72 μs</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">326.88 K</td>
    <td style="white-space: nowrap; text-align: right">3.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±114.49%</td>
    <td style="white-space: nowrap; text-align: right">1.92 μs</td>
    <td style="white-space: nowrap; text-align: right">15.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">302.65 K</td>
    <td style="white-space: nowrap; text-align: right">3.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±122.63%</td>
    <td style="white-space: nowrap; text-align: right">2.32 μs</td>
    <td style="white-space: nowrap; text-align: right">18.48 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">176.68 K</td>
    <td style="white-space: nowrap; text-align: right">5.66 μs</td>
    <td style="white-space: nowrap; text-align: right">±81.87%</td>
    <td style="white-space: nowrap; text-align: right">4.54 μs</td>
    <td style="white-space: nowrap; text-align: right">23.01 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">427.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">370.33 K</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">326.88 K</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">302.65 K</td>
    <td style="white-space: nowrap; text-align: right">1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">176.68 K</td>
    <td style="white-space: nowrap; text-align: right">2.42x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">608 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">880 B</td>
    <td>1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">808 B</td>
    <td>1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">824 B</td>
    <td>1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">904 B</td>
    <td>1.49x</td>
  </tr>

</table>


<hr/>


__Input: 0000010__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">425.43 K</td>
    <td style="white-space: nowrap; text-align: right">2.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.47%</td>
    <td style="white-space: nowrap; text-align: right">2.35 μs</td>
    <td style="white-space: nowrap; text-align: right">2.57 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">369.30 K</td>
    <td style="white-space: nowrap; text-align: right">2.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±119.49%</td>
    <td style="white-space: nowrap; text-align: right">1.96 μs</td>
    <td style="white-space: nowrap; text-align: right">14.82 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">313.71 K</td>
    <td style="white-space: nowrap; text-align: right">3.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±107.46%</td>
    <td style="white-space: nowrap; text-align: right">2.37 μs</td>
    <td style="white-space: nowrap; text-align: right">16.02 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">224.60 K</td>
    <td style="white-space: nowrap; text-align: right">4.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±139.36%</td>
    <td style="white-space: nowrap; text-align: right">2.87 μs</td>
    <td style="white-space: nowrap; text-align: right">27.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">190.88 K</td>
    <td style="white-space: nowrap; text-align: right">5.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±60.81%</td>
    <td style="white-space: nowrap; text-align: right">4.50 μs</td>
    <td style="white-space: nowrap; text-align: right">17.16 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">425.43 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">369.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">313.71 K</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">224.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">190.88 K</td>
    <td style="white-space: nowrap; text-align: right">2.23x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">696 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">920 B</td>
    <td>1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">936 B</td>
    <td>1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">992 B</td>
    <td>1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">1008 B</td>
    <td>1.45x</td>
  </tr>

</table>


<hr/>


__Input: 0000020__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">457.00 K</td>
    <td style="white-space: nowrap; text-align: right">2.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.30%</td>
    <td style="white-space: nowrap; text-align: right">2.08 μs</td>
    <td style="white-space: nowrap; text-align: right">3.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">334.56 K</td>
    <td style="white-space: nowrap; text-align: right">2.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.84%</td>
    <td style="white-space: nowrap; text-align: right">2.85 μs</td>
    <td style="white-space: nowrap; text-align: right">4.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">252.36 K</td>
    <td style="white-space: nowrap; text-align: right">3.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±133.18%</td>
    <td style="white-space: nowrap; text-align: right">2.61 μs</td>
    <td style="white-space: nowrap; text-align: right">23.72 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">250.16 K</td>
    <td style="white-space: nowrap; text-align: right">4.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±124.73%</td>
    <td style="white-space: nowrap; text-align: right">2.71 μs</td>
    <td style="white-space: nowrap; text-align: right">22.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">171.29 K</td>
    <td style="white-space: nowrap; text-align: right">5.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.47%</td>
    <td style="white-space: nowrap; text-align: right">5.06 μs</td>
    <td style="white-space: nowrap; text-align: right">18.39 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">457.00 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">334.56 K</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">252.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">250.16 K</td>
    <td style="white-space: nowrap; text-align: right">1.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">171.29 K</td>
    <td style="white-space: nowrap; text-align: right">2.67x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">1.72 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">1.79 KB</td>
    <td>1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">1.08 KB</td>
    <td>0.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">1.73 KB</td>
    <td>1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">1.77 KB</td>
    <td>1.03x</td>
  </tr>

</table>


<hr/>


__Input: 0000030__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">396.28 K</td>
    <td style="white-space: nowrap; text-align: right">2.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.07%</td>
    <td style="white-space: nowrap; text-align: right">2.54 μs</td>
    <td style="white-space: nowrap; text-align: right">2.87 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">335.81 K</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.48%</td>
    <td style="white-space: nowrap; text-align: right">3.02 μs</td>
    <td style="white-space: nowrap; text-align: right">3.32 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">315.76 K</td>
    <td style="white-space: nowrap; text-align: right">3.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.55%</td>
    <td style="white-space: nowrap; text-align: right">3.20 μs</td>
    <td style="white-space: nowrap; text-align: right">3.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">236.59 K</td>
    <td style="white-space: nowrap; text-align: right">4.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±41.98%</td>
    <td style="white-space: nowrap; text-align: right">3.64 μs</td>
    <td style="white-space: nowrap; text-align: right">8.93 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">175.54 K</td>
    <td style="white-space: nowrap; text-align: right">5.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.85%</td>
    <td style="white-space: nowrap; text-align: right">5.81 μs</td>
    <td style="white-space: nowrap; text-align: right">6.65 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">396.28 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">335.81 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">315.76 K</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">236.59 K</td>
    <td style="white-space: nowrap; text-align: right">1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">175.54 K</td>
    <td style="white-space: nowrap; text-align: right">2.26x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">2.54 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">1.59 KB</td>
    <td>0.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">2.55 KB</td>
    <td>1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">1.67 KB</td>
    <td>0.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">1.61 KB</td>
    <td>0.63x</td>
  </tr>

</table>


<hr/>


__Input: 0000040__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">184.38 K</td>
    <td style="white-space: nowrap; text-align: right">5.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.82%</td>
    <td style="white-space: nowrap; text-align: right">5.10 μs</td>
    <td style="white-space: nowrap; text-align: right">10.75 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">174.37 K</td>
    <td style="white-space: nowrap; text-align: right">5.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.00%</td>
    <td style="white-space: nowrap; text-align: right">5.70 μs</td>
    <td style="white-space: nowrap; text-align: right">6.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">169.25 K</td>
    <td style="white-space: nowrap; text-align: right">5.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±78.89%</td>
    <td style="white-space: nowrap; text-align: right">4.66 μs</td>
    <td style="white-space: nowrap; text-align: right">23.37 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">151.39 K</td>
    <td style="white-space: nowrap; text-align: right">6.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±61.04%</td>
    <td style="white-space: nowrap; text-align: right">5.28 μs</td>
    <td style="white-space: nowrap; text-align: right">19.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">115.61 K</td>
    <td style="white-space: nowrap; text-align: right">8.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±38.35%</td>
    <td style="white-space: nowrap; text-align: right">7.82 μs</td>
    <td style="white-space: nowrap; text-align: right">21.07 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">184.38 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">174.37 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">169.25 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">151.39 K</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">115.61 K</td>
    <td style="white-space: nowrap; text-align: right">1.59x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">1.45 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">2.20 KB</td>
    <td>1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">2.13 KB</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">2.14 KB</td>
    <td>1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">2.09 KB</td>
    <td>1.44x</td>
  </tr>

</table>


<hr/>


__Input: 0000050__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">171.24 K</td>
    <td style="white-space: nowrap; text-align: right">5.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.08%</td>
    <td style="white-space: nowrap; text-align: right">5.83 μs</td>
    <td style="white-space: nowrap; text-align: right">6.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">147.80 K</td>
    <td style="white-space: nowrap; text-align: right">6.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±48.48%</td>
    <td style="white-space: nowrap; text-align: right">5.90 μs</td>
    <td style="white-space: nowrap; text-align: right">19.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">130.70 K</td>
    <td style="white-space: nowrap; text-align: right">7.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±74.04%</td>
    <td style="white-space: nowrap; text-align: right">5.57 μs</td>
    <td style="white-space: nowrap; text-align: right">23.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">127.79 K</td>
    <td style="white-space: nowrap; text-align: right">7.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±43.84%</td>
    <td style="white-space: nowrap; text-align: right">6.75 μs</td>
    <td style="white-space: nowrap; text-align: right">20.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">95.80 K</td>
    <td style="white-space: nowrap; text-align: right">10.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±45.87%</td>
    <td style="white-space: nowrap; text-align: right">8.96 μs</td>
    <td style="white-space: nowrap; text-align: right">27.75 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">171.24 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">147.80 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">130.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">127.79 K</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">95.80 K</td>
    <td style="white-space: nowrap; text-align: right">1.79x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">2.62 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.65 KB</td>
    <td>1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">3.63 KB</td>
    <td>1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.70 KB</td>
    <td>1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">3.13 KB</td>
    <td>1.19x</td>
  </tr>

</table>


<hr/>


__Input: 0000060__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">121.44 K</td>
    <td style="white-space: nowrap; text-align: right">8.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±59.32%</td>
    <td style="white-space: nowrap; text-align: right">6.72 μs</td>
    <td style="white-space: nowrap; text-align: right">25.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">118.11 K</td>
    <td style="white-space: nowrap; text-align: right">8.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±47.52%</td>
    <td style="white-space: nowrap; text-align: right">7.45 μs</td>
    <td style="white-space: nowrap; text-align: right">23.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">117.62 K</td>
    <td style="white-space: nowrap; text-align: right">8.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±74.34%</td>
    <td style="white-space: nowrap; text-align: right">6.27 μs</td>
    <td style="white-space: nowrap; text-align: right">27.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">112.32 K</td>
    <td style="white-space: nowrap; text-align: right">8.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±50.72%</td>
    <td style="white-space: nowrap; text-align: right">6.90 μs</td>
    <td style="white-space: nowrap; text-align: right">20.11 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">85.71 K</td>
    <td style="white-space: nowrap; text-align: right">11.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±44.33%</td>
    <td style="white-space: nowrap; text-align: right">9.83 μs</td>
    <td style="white-space: nowrap; text-align: right">26.60 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">121.44 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">118.11 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">117.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">112.32 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">85.71 K</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">2.63 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.59 KB</td>
    <td>1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">3.52 KB</td>
    <td>1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.53 KB</td>
    <td>1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">3.41 KB</td>
    <td>1.3x</td>
  </tr>

</table>


<hr/>


__Input: 0000070__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">63.44 K</td>
    <td style="white-space: nowrap; text-align: right">15.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.67%</td>
    <td style="white-space: nowrap; text-align: right">14.60 μs</td>
    <td style="white-space: nowrap; text-align: right">26.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">62.34 K</td>
    <td style="white-space: nowrap; text-align: right">16.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.81%</td>
    <td style="white-space: nowrap; text-align: right">15.21 μs</td>
    <td style="white-space: nowrap; text-align: right">28.32 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">53.53 K</td>
    <td style="white-space: nowrap; text-align: right">18.68 μs</td>
    <td style="white-space: nowrap; text-align: right">±43.39%</td>
    <td style="white-space: nowrap; text-align: right">15.92 μs</td>
    <td style="white-space: nowrap; text-align: right">46.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">52.61 K</td>
    <td style="white-space: nowrap; text-align: right">19.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.87%</td>
    <td style="white-space: nowrap; text-align: right">18.26 μs</td>
    <td style="white-space: nowrap; text-align: right">28.72 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">52.57 K</td>
    <td style="white-space: nowrap; text-align: right">19.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±35.68%</td>
    <td style="white-space: nowrap; text-align: right">15.38 μs</td>
    <td style="white-space: nowrap; text-align: right">32.73 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">63.44 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">62.34 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">53.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">52.61 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">52.57 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">5.27 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">3.51 KB</td>
    <td>0.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">5.34 KB</td>
    <td>1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">4.60 KB</td>
    <td>0.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">5.28 KB</td>
    <td>1.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000080__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">59.26 K</td>
    <td style="white-space: nowrap; text-align: right">16.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.77%</td>
    <td style="white-space: nowrap; text-align: right">16.10 μs</td>
    <td style="white-space: nowrap; text-align: right">29.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">54.57 K</td>
    <td style="white-space: nowrap; text-align: right">18.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.14%</td>
    <td style="white-space: nowrap; text-align: right">15.79 μs</td>
    <td style="white-space: nowrap; text-align: right">31.92 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">48.87 K</td>
    <td style="white-space: nowrap; text-align: right">20.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±34.56%</td>
    <td style="white-space: nowrap; text-align: right">16.75 μs</td>
    <td style="white-space: nowrap; text-align: right">34.92 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">47.73 K</td>
    <td style="white-space: nowrap; text-align: right">20.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±43.97%</td>
    <td style="white-space: nowrap; text-align: right">17.39 μs</td>
    <td style="white-space: nowrap; text-align: right">51.42 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">41.62 K</td>
    <td style="white-space: nowrap; text-align: right">24.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±56.65%</td>
    <td style="white-space: nowrap; text-align: right">19.95 μs</td>
    <td style="white-space: nowrap; text-align: right">73.08 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">59.26 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">54.57 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">48.87 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">47.73 K</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">41.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">3.55 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">3.60 KB</td>
    <td>1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.62 KB</td>
    <td>1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.63 KB</td>
    <td>1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">4.48 KB</td>
    <td>1.26x</td>
  </tr>

</table>


<hr/>


__Input: 0000090__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">53.04 K</td>
    <td style="white-space: nowrap; text-align: right">18.86 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.52%</td>
    <td style="white-space: nowrap; text-align: right">17.22 μs</td>
    <td style="white-space: nowrap; text-align: right">30.71 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">52.44 K</td>
    <td style="white-space: nowrap; text-align: right">19.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±39.00%</td>
    <td style="white-space: nowrap; text-align: right">16.38 μs</td>
    <td style="white-space: nowrap; text-align: right">41.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">46.30 K</td>
    <td style="white-space: nowrap; text-align: right">21.60 μs</td>
    <td style="white-space: nowrap; text-align: right">±55.49%</td>
    <td style="white-space: nowrap; text-align: right">16.54 μs</td>
    <td style="white-space: nowrap; text-align: right">53.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">45.76 K</td>
    <td style="white-space: nowrap; text-align: right">21.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±45.35%</td>
    <td style="white-space: nowrap; text-align: right">17.99 μs</td>
    <td style="white-space: nowrap; text-align: right">54.48 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">40.69 K</td>
    <td style="white-space: nowrap; text-align: right">24.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±41.42%</td>
    <td style="white-space: nowrap; text-align: right">20.56 μs</td>
    <td style="white-space: nowrap; text-align: right">56.49 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap;text-align: right">53.04 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">52.44 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">46.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">45.76 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">40.69 K</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">8.08 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">8.06 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">4.16 KB</td>
    <td>0.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">8.13 KB</td>
    <td>1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">7.84 KB</td>
    <td>0.97x</td>
  </tr>

</table>


<hr/>


__Input: 0000100__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">53.21 K</td>
    <td style="white-space: nowrap; text-align: right">18.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.55%</td>
    <td style="white-space: nowrap; text-align: right">18.11 μs</td>
    <td style="white-space: nowrap; text-align: right">28.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">53.08 K</td>
    <td style="white-space: nowrap; text-align: right">18.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.86%</td>
    <td style="white-space: nowrap; text-align: right">18.22 μs</td>
    <td style="white-space: nowrap; text-align: right">25.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">47.74 K</td>
    <td style="white-space: nowrap; text-align: right">20.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±27.40%</td>
    <td style="white-space: nowrap; text-align: right">19.02 μs</td>
    <td style="white-space: nowrap; text-align: right">35.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">43.86 K</td>
    <td style="white-space: nowrap; text-align: right">22.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.02%</td>
    <td style="white-space: nowrap; text-align: right">21.98 μs</td>
    <td style="white-space: nowrap; text-align: right">35.58 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">40.91 K</td>
    <td style="white-space: nowrap; text-align: right">24.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.50%</td>
    <td style="white-space: nowrap; text-align: right">19.45 μs</td>
    <td style="white-space: nowrap; text-align: right">64.29 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">53.21 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">53.08 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">47.74 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">43.86 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">40.91 K</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">8.16 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">4.48 KB</td>
    <td>0.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">8.17 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">6.55 KB</td>
    <td>0.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">7.99 KB</td>
    <td>0.98x</td>
  </tr>

</table>


<hr/>


__Input: 0000200__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">29235.78</td>
    <td style="white-space: nowrap; text-align: right">0.0342 ms</td>
    <td style="white-space: nowrap; text-align: right">±36.28%</td>
    <td style="white-space: nowrap; text-align: right">0.0267 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0590 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">115.91</td>
    <td style="white-space: nowrap; text-align: right">8.63 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.85%</td>
    <td style="white-space: nowrap; text-align: right">0.0265 ms</td>
    <td style="white-space: nowrap; text-align: right">120.38 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">115.08</td>
    <td style="white-space: nowrap; text-align: right">8.69 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.62%</td>
    <td style="white-space: nowrap; text-align: right">0.0275 ms</td>
    <td style="white-space: nowrap; text-align: right">121.18 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">112.69</td>
    <td style="white-space: nowrap; text-align: right">8.87 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.64%</td>
    <td style="white-space: nowrap; text-align: right">0.0325 ms</td>
    <td style="white-space: nowrap; text-align: right">123.77 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">112.13</td>
    <td style="white-space: nowrap; text-align: right">8.92 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.47%</td>
    <td style="white-space: nowrap; text-align: right">0.0338 ms</td>
    <td style="white-space: nowrap; text-align: right">124.33 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">29235.78</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">115.91</td>
    <td style="white-space: nowrap; text-align: right">252.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">115.08</td>
    <td style="white-space: nowrap; text-align: right">254.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">112.69</td>
    <td style="white-space: nowrap; text-align: right">259.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">112.13</td>
    <td style="white-space: nowrap; text-align: right">260.73x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">7.84 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">17.12 KB</td>
    <td>2.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">17.13 KB</td>
    <td>2.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">11.09 KB</td>
    <td>1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">12.59 KB</td>
    <td>1.6x</td>
  </tr>

</table>


<hr/>


__Input: 0000300__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">130.43</td>
    <td style="white-space: nowrap; text-align: right">7.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±385.37%</td>
    <td style="white-space: nowrap; text-align: right">0.0361 ms</td>
    <td style="white-space: nowrap; text-align: right">114.47 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">123.97</td>
    <td style="white-space: nowrap; text-align: right">8.07 ms</td>
    <td style="white-space: nowrap; text-align: right">±385.23%</td>
    <td style="white-space: nowrap; text-align: right">0.0369 ms</td>
    <td style="white-space: nowrap; text-align: right">120.40 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">120.70</td>
    <td style="white-space: nowrap; text-align: right">8.29 ms</td>
    <td style="white-space: nowrap; text-align: right">±385.32%</td>
    <td style="white-space: nowrap; text-align: right">0.0398 ms</td>
    <td style="white-space: nowrap; text-align: right">123.69 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">113.57</td>
    <td style="white-space: nowrap; text-align: right">8.81 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.32%</td>
    <td style="white-space: nowrap; text-align: right">0.0386 ms</td>
    <td style="white-space: nowrap; text-align: right">122.71 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">113.26</td>
    <td style="white-space: nowrap; text-align: right">8.83 ms</td>
    <td style="white-space: nowrap; text-align: right">±371.87%</td>
    <td style="white-space: nowrap; text-align: right">0.0531 ms</td>
    <td style="white-space: nowrap; text-align: right">122.90 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">130.43</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">123.97</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">120.70</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">113.57</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">113.26</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">11.28 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">18.30 KB</td>
    <td>1.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">18.37 KB</td>
    <td>1.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">18.31 KB</td>
    <td>1.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">13.13 KB</td>
    <td>1.16x</td>
  </tr>

</table>


<hr/>


__Input: 0000400__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">123.87</td>
    <td style="white-space: nowrap; text-align: right">8.07 ms</td>
    <td style="white-space: nowrap; text-align: right">±384.28%</td>
    <td style="white-space: nowrap; text-align: right">0.0524 ms</td>
    <td style="white-space: nowrap; text-align: right">120.21 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">116.66</td>
    <td style="white-space: nowrap; text-align: right">8.57 ms</td>
    <td style="white-space: nowrap; text-align: right">±371.51%</td>
    <td style="white-space: nowrap; text-align: right">0.0516 ms</td>
    <td style="white-space: nowrap; text-align: right">119.21 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">115.72</td>
    <td style="white-space: nowrap; text-align: right">8.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.04%</td>
    <td style="white-space: nowrap; text-align: right">0.0439 ms</td>
    <td style="white-space: nowrap; text-align: right">120.34 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">113.35</td>
    <td style="white-space: nowrap; text-align: right">8.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±371.71%</td>
    <td style="white-space: nowrap; text-align: right">0.0553 ms</td>
    <td style="white-space: nowrap; text-align: right">122.76 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">111.83</td>
    <td style="white-space: nowrap; text-align: right">8.94 ms</td>
    <td style="white-space: nowrap; text-align: right">±371.84%</td>
    <td style="white-space: nowrap; text-align: right">0.0499 ms</td>
    <td style="white-space: nowrap; text-align: right">124.47 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap;text-align: right">123.87</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">116.66</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">115.72</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">113.35</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">111.83</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">30.76 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">25.16 KB</td>
    <td>0.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">30.77 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">29.51 KB</td>
    <td>0.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">30.78 KB</td>
    <td>1.0x</td>
  </tr>

</table>


<hr/>


__Input: 0000500__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.04 K</td>
    <td style="white-space: nowrap; text-align: right">58.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.01%</td>
    <td style="white-space: nowrap; text-align: right">56.09 μs</td>
    <td style="white-space: nowrap; text-align: right">82.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">16.21 K</td>
    <td style="white-space: nowrap; text-align: right">61.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.33%</td>
    <td style="white-space: nowrap; text-align: right">58.23 μs</td>
    <td style="white-space: nowrap; text-align: right">93.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">14.53 K</td>
    <td style="white-space: nowrap; text-align: right">68.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±35.34%</td>
    <td style="white-space: nowrap; text-align: right">59.10 μs</td>
    <td style="white-space: nowrap; text-align: right">137.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">14.35 K</td>
    <td style="white-space: nowrap; text-align: right">69.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±34.45%</td>
    <td style="white-space: nowrap; text-align: right">63.09 μs</td>
    <td style="white-space: nowrap; text-align: right">158.52 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">13.60 K</td>
    <td style="white-space: nowrap; text-align: right">73.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.02%</td>
    <td style="white-space: nowrap; text-align: right">67.86 μs</td>
    <td style="white-space: nowrap; text-align: right">107.04 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">17.04 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">16.21 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">14.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">14.35 K</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">13.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">29.92 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">29.94 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">18.22 KB</td>
    <td>0.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">29.99 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">26.66 KB</td>
    <td>0.89x</td>
  </tr>

</table>


<hr/>


__Input: 0000600__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">14.67 K</td>
    <td style="white-space: nowrap; text-align: right">68.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.32%</td>
    <td style="white-space: nowrap; text-align: right">66.94 μs</td>
    <td style="white-space: nowrap; text-align: right">77.14 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">14.30 K</td>
    <td style="white-space: nowrap; text-align: right">69.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.60%</td>
    <td style="white-space: nowrap; text-align: right">68.59 μs</td>
    <td style="white-space: nowrap; text-align: right">80.10 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">13.75 K</td>
    <td style="white-space: nowrap; text-align: right">72.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.94%</td>
    <td style="white-space: nowrap; text-align: right">70.38 μs</td>
    <td style="white-space: nowrap; text-align: right">87.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">12.94 K</td>
    <td style="white-space: nowrap; text-align: right">77.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.49%</td>
    <td style="white-space: nowrap; text-align: right">73.50 μs</td>
    <td style="white-space: nowrap; text-align: right">116.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">10.68 K</td>
    <td style="white-space: nowrap; text-align: right">93.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±29.98%</td>
    <td style="white-space: nowrap; text-align: right">83.87 μs</td>
    <td style="white-space: nowrap; text-align: right">196.08 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">14.67 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">14.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">13.75 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">12.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">10.68 K</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">21.64 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">35.70 KB</td>
    <td>1.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">35.69 KB</td>
    <td>1.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">53.51 KB</td>
    <td>2.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">33.47 KB</td>
    <td>1.55x</td>
  </tr>

</table>


<hr/>


__Input: 0000700__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">11.97 K</td>
    <td style="white-space: nowrap; text-align: right">83.55 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.58%</td>
    <td style="white-space: nowrap; text-align: right">75.96 μs</td>
    <td style="white-space: nowrap; text-align: right">138.80 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">11.05 K</td>
    <td style="white-space: nowrap; text-align: right">90.48 μs</td>
    <td style="white-space: nowrap; text-align: right">±36.34%</td>
    <td style="white-space: nowrap; text-align: right">79.00 μs</td>
    <td style="white-space: nowrap; text-align: right">207.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.70 K</td>
    <td style="white-space: nowrap; text-align: right">93.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.91%</td>
    <td style="white-space: nowrap; text-align: right">86.75 μs</td>
    <td style="white-space: nowrap; text-align: right">131.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">10.55 K</td>
    <td style="white-space: nowrap; text-align: right">94.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±36.32%</td>
    <td style="white-space: nowrap; text-align: right">80.99 μs</td>
    <td style="white-space: nowrap; text-align: right">195.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">9.23 K</td>
    <td style="white-space: nowrap; text-align: right">108.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±28.94%</td>
    <td style="white-space: nowrap; text-align: right">92.13 μs</td>
    <td style="white-space: nowrap; text-align: right">172.91 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">11.97 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">11.05 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">10.55 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">9.23 K</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">33.64 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">25 KB</td>
    <td>0.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">33.66 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">33.66 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">33.17 KB</td>
    <td>0.99x</td>
  </tr>

</table>


<hr/>


__Input: 0000800__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">10.62 K</td>
    <td style="white-space: nowrap; text-align: right">94.13 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.88%</td>
    <td style="white-space: nowrap; text-align: right">89.31 μs</td>
    <td style="white-space: nowrap; text-align: right">147.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">10.60 K</td>
    <td style="white-space: nowrap; text-align: right">94.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.42%</td>
    <td style="white-space: nowrap; text-align: right">89.44 μs</td>
    <td style="white-space: nowrap; text-align: right">127.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">10.35 K</td>
    <td style="white-space: nowrap; text-align: right">96.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.35%</td>
    <td style="white-space: nowrap; text-align: right">88.61 μs</td>
    <td style="white-space: nowrap; text-align: right">158.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.06 K</td>
    <td style="white-space: nowrap; text-align: right">99.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.16%</td>
    <td style="white-space: nowrap; text-align: right">96.03 μs</td>
    <td style="white-space: nowrap; text-align: right">128.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">9.10 K</td>
    <td style="white-space: nowrap; text-align: right">109.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.07%</td>
    <td style="white-space: nowrap; text-align: right">102.50 μs</td>
    <td style="white-space: nowrap; text-align: right">186.99 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">10.62 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">10.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">10.35 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">9.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">28.48 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">47.23 KB</td>
    <td>1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">47.22 KB</td>
    <td>1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">47.29 KB</td>
    <td>1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">41.92 KB</td>
    <td>1.47x</td>
  </tr>

</table>


<hr/>


__Input: 0000900__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">9.87 K</td>
    <td style="white-space: nowrap; text-align: right">101.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.68%</td>
    <td style="white-space: nowrap; text-align: right">99.94 μs</td>
    <td style="white-space: nowrap; text-align: right">114.58 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.38 K</td>
    <td style="white-space: nowrap; text-align: right">106.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.82%</td>
    <td style="white-space: nowrap; text-align: right">97.75 μs</td>
    <td style="white-space: nowrap; text-align: right">157.96 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.29 K</td>
    <td style="white-space: nowrap; text-align: right">107.60 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.27%</td>
    <td style="white-space: nowrap; text-align: right">98.38 μs</td>
    <td style="white-space: nowrap; text-align: right">157.05 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">7.87 K</td>
    <td style="white-space: nowrap; text-align: right">127.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.65%</td>
    <td style="white-space: nowrap; text-align: right">111.20 μs</td>
    <td style="white-space: nowrap; text-align: right">249.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">6.97 K</td>
    <td style="white-space: nowrap; text-align: right">143.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±39.56%</td>
    <td style="white-space: nowrap; text-align: right">118.96 μs</td>
    <td style="white-space: nowrap; text-align: right">295.67 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap;text-align: right">9.87 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.38 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">7.87 K</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">6.97 K</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">53.11 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">53.09 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">32.02 KB</td>
    <td>0.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">53.16 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">49.70 KB</td>
    <td>0.94x</td>
  </tr>

</table>


<hr/>


__Input: 0001000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">8.36 K</td>
    <td style="white-space: nowrap; text-align: right">119.63 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.09%</td>
    <td style="white-space: nowrap; text-align: right">109.17 μs</td>
    <td style="white-space: nowrap; text-align: right">166.10 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">8.34 K</td>
    <td style="white-space: nowrap; text-align: right">119.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.66%</td>
    <td style="white-space: nowrap; text-align: right">108.78 μs</td>
    <td style="white-space: nowrap; text-align: right">231.32 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">7.89 K</td>
    <td style="white-space: nowrap; text-align: right">126.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.88%</td>
    <td style="white-space: nowrap; text-align: right">115.74 μs</td>
    <td style="white-space: nowrap; text-align: right">182.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">7.50 K</td>
    <td style="white-space: nowrap; text-align: right">133.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.60%</td>
    <td style="white-space: nowrap; text-align: right">127.84 μs</td>
    <td style="white-space: nowrap; text-align: right">210.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">7.14 K</td>
    <td style="white-space: nowrap; text-align: right">140.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.90%</td>
    <td style="white-space: nowrap; text-align: right">128.08 μs</td>
    <td style="white-space: nowrap; text-align: right">216.40 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">8.36 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">8.34 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">7.89 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">7.50 K</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">7.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">37.11 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">58.06 KB</td>
    <td>1.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">58.58 KB</td>
    <td>1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">58.87 KB</td>
    <td>1.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">55.16 KB</td>
    <td>1.49x</td>
  </tr>

</table>


<hr/>


__Input: 0002000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.79 K</td>
    <td style="white-space: nowrap; text-align: right">208.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.87%</td>
    <td style="white-space: nowrap; text-align: right">198.20 μs</td>
    <td style="white-space: nowrap; text-align: right">271.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">4.44 K</td>
    <td style="white-space: nowrap; text-align: right">225.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.65%</td>
    <td style="white-space: nowrap; text-align: right">217.49 μs</td>
    <td style="white-space: nowrap; text-align: right">321.33 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.35 K</td>
    <td style="white-space: nowrap; text-align: right">229.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.49%</td>
    <td style="white-space: nowrap; text-align: right">216.41 μs</td>
    <td style="white-space: nowrap; text-align: right">357.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.08 K</td>
    <td style="white-space: nowrap; text-align: right">245.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.93%</td>
    <td style="white-space: nowrap; text-align: right">235.30 μs</td>
    <td style="white-space: nowrap; text-align: right">291.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.59 K</td>
    <td style="white-space: nowrap; text-align: right">385.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±108.23%</td>
    <td style="white-space: nowrap; text-align: right">255.33 μs</td>
    <td style="white-space: nowrap; text-align: right">1924.12 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">4.79 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">4.44 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.35 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.08 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.59 K</td>
    <td style="white-space: nowrap; text-align: right">1.85x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">148.50 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">102.14 KB</td>
    <td>0.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">149.02 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">149.35 KB</td>
    <td>1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">139.45 KB</td>
    <td>0.94x</td>
  </tr>

</table>


<hr/>


__Input: 0003000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.94 K</td>
    <td style="white-space: nowrap; text-align: right">339.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.03%</td>
    <td style="white-space: nowrap; text-align: right">326.30 μs</td>
    <td style="white-space: nowrap; text-align: right">497.33 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">2.79 K</td>
    <td style="white-space: nowrap; text-align: right">358.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.52%</td>
    <td style="white-space: nowrap; text-align: right">318.44 μs</td>
    <td style="white-space: nowrap; text-align: right">593.14 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.72 K</td>
    <td style="white-space: nowrap; text-align: right">367.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.76%</td>
    <td style="white-space: nowrap; text-align: right">350.75 μs</td>
    <td style="white-space: nowrap; text-align: right">507.67 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.66 K</td>
    <td style="white-space: nowrap; text-align: right">375.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.81%</td>
    <td style="white-space: nowrap; text-align: right">341.57 μs</td>
    <td style="white-space: nowrap; text-align: right">589.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.64 K</td>
    <td style="white-space: nowrap; text-align: right">379.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.94%</td>
    <td style="white-space: nowrap; text-align: right">366.67 μs</td>
    <td style="white-space: nowrap; text-align: right">479.03 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">2.94 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">2.79 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.64 K</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">148.58 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">224.42 KB</td>
    <td>1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">249.35 KB</td>
    <td>1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">212.73 KB</td>
    <td>1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">230.21 KB</td>
    <td>1.55x</td>
  </tr>

</table>


<hr/>


__Input: 0004000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">2.33 K</td>
    <td style="white-space: nowrap; text-align: right">428.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.52%</td>
    <td style="white-space: nowrap; text-align: right">422.65 μs</td>
    <td style="white-space: nowrap; text-align: right">484.99 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.28 K</td>
    <td style="white-space: nowrap; text-align: right">437.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.87%</td>
    <td style="white-space: nowrap; text-align: right">433.16 μs</td>
    <td style="white-space: nowrap; text-align: right">535.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.11 K</td>
    <td style="white-space: nowrap; text-align: right">473.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.46%</td>
    <td style="white-space: nowrap; text-align: right">442.83 μs</td>
    <td style="white-space: nowrap; text-align: right">762.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.94 K</td>
    <td style="white-space: nowrap; text-align: right">515.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.41%</td>
    <td style="white-space: nowrap; text-align: right">483.54 μs</td>
    <td style="white-space: nowrap; text-align: right">715.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.83 K</td>
    <td style="white-space: nowrap; text-align: right">547.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.49%</td>
    <td style="white-space: nowrap; text-align: right">501.43 μs</td>
    <td style="white-space: nowrap; text-align: right">1024.04 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">2.33 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.28 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.11 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.83 K</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">276.75 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">207.52 KB</td>
    <td>0.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">302.55 KB</td>
    <td>1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">297.12 KB</td>
    <td>1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">255.30 KB</td>
    <td>0.92x</td>
  </tr>

</table>


<hr/>


__Input: 0005000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.82 K</td>
    <td style="white-space: nowrap; text-align: right">550.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.29%</td>
    <td style="white-space: nowrap; text-align: right">533.92 μs</td>
    <td style="white-space: nowrap; text-align: right">657.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.70 K</td>
    <td style="white-space: nowrap; text-align: right">589.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.28%</td>
    <td style="white-space: nowrap; text-align: right">553.29 μs</td>
    <td style="white-space: nowrap; text-align: right">833.37 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.66 K</td>
    <td style="white-space: nowrap; text-align: right">602.48 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.05%</td>
    <td style="white-space: nowrap; text-align: right">584.95 μs</td>
    <td style="white-space: nowrap; text-align: right">781.73 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.66 K</td>
    <td style="white-space: nowrap; text-align: right">602.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.76%</td>
    <td style="white-space: nowrap; text-align: right">550.73 μs</td>
    <td style="white-space: nowrap; text-align: right">844.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.49 K</td>
    <td style="white-space: nowrap; text-align: right">671.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.77%</td>
    <td style="white-space: nowrap; text-align: right">649.86 μs</td>
    <td style="white-space: nowrap; text-align: right">950.91 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">1.82 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.49 K</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">412.92 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">406.86 KB</td>
    <td>0.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">393.40 KB</td>
    <td>0.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">246.98 KB</td>
    <td>0.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">378.78 KB</td>
    <td>0.92x</td>
  </tr>

</table>


<hr/>


__Input: 0006000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.45 K</td>
    <td style="white-space: nowrap; text-align: right">690.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.43%</td>
    <td style="white-space: nowrap; text-align: right">667.11 μs</td>
    <td style="white-space: nowrap; text-align: right">982.84 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.44 K</td>
    <td style="white-space: nowrap; text-align: right">694.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.21%</td>
    <td style="white-space: nowrap; text-align: right">661.01 μs</td>
    <td style="white-space: nowrap; text-align: right">952.75 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.38 K</td>
    <td style="white-space: nowrap; text-align: right">723.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.74%</td>
    <td style="white-space: nowrap; text-align: right">714.89 μs</td>
    <td style="white-space: nowrap; text-align: right">996.02 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.37 K</td>
    <td style="white-space: nowrap; text-align: right">729.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.01%</td>
    <td style="white-space: nowrap; text-align: right">712.16 μs</td>
    <td style="white-space: nowrap; text-align: right">939.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.29 K</td>
    <td style="white-space: nowrap; text-align: right">772.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.08%</td>
    <td style="white-space: nowrap; text-align: right">759.29 μs</td>
    <td style="white-space: nowrap; text-align: right">851.59 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">1.45 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.44 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.38 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.37 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">437.36 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">275.60 KB</td>
    <td>0.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">438.98 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">435.90 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">486.52 KB</td>
    <td>1.11x</td>
  </tr>

</table>


<hr/>


__Input: 0007000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.28 K</td>
    <td style="white-space: nowrap; text-align: right">781.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.55%</td>
    <td style="white-space: nowrap; text-align: right">765.20 μs</td>
    <td style="white-space: nowrap; text-align: right">996.08 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.27 K</td>
    <td style="white-space: nowrap; text-align: right">787.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.90%</td>
    <td style="white-space: nowrap; text-align: right">781.31 μs</td>
    <td style="white-space: nowrap; text-align: right">847.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.25 K</td>
    <td style="white-space: nowrap; text-align: right">799.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.32%</td>
    <td style="white-space: nowrap; text-align: right">778.32 μs</td>
    <td style="white-space: nowrap; text-align: right">1093.94 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.10 K</td>
    <td style="white-space: nowrap; text-align: right">905.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.01%</td>
    <td style="white-space: nowrap; text-align: right">847.26 μs</td>
    <td style="white-space: nowrap; text-align: right">1253.46 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.10 K</td>
    <td style="white-space: nowrap; text-align: right">905.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.22%</td>
    <td style="white-space: nowrap; text-align: right">904.76 μs</td>
    <td style="white-space: nowrap; text-align: right">974.15 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">1.28 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.27 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.25 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">384.67 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">480.71 KB</td>
    <td>1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">533.55 KB</td>
    <td>1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">530.40 KB</td>
    <td>1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">511.23 KB</td>
    <td>1.33x</td>
  </tr>

</table>


<hr/>


__Input: 0008000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.15 K</td>
    <td style="white-space: nowrap; text-align: right">872.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.45%</td>
    <td style="white-space: nowrap; text-align: right">853.13 μs</td>
    <td style="white-space: nowrap; text-align: right">950.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.09 K</td>
    <td style="white-space: nowrap; text-align: right">917.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.31%</td>
    <td style="white-space: nowrap; text-align: right">913.21 μs</td>
    <td style="white-space: nowrap; text-align: right">991.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.05 K</td>
    <td style="white-space: nowrap; text-align: right">952.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.85%</td>
    <td style="white-space: nowrap; text-align: right">918.86 μs</td>
    <td style="white-space: nowrap; text-align: right">1242.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.04 K</td>
    <td style="white-space: nowrap; text-align: right">964.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.12%</td>
    <td style="white-space: nowrap; text-align: right">944.02 μs</td>
    <td style="white-space: nowrap; text-align: right">1283.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">0.94 K</td>
    <td style="white-space: nowrap; text-align: right">1059.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.46%</td>
    <td style="white-space: nowrap; text-align: right">1030.89 μs</td>
    <td style="white-space: nowrap; text-align: right">1395.07 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">1.15 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.09 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.05 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.04 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">0.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">552.13 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">590.18 KB</td>
    <td>1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">407.09 KB</td>
    <td>0.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">571.88 KB</td>
    <td>1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">543.66 KB</td>
    <td>0.98x</td>
  </tr>

</table>


<hr/>


__Input: 0009000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">952.45</td>
    <td style="white-space: nowrap; text-align: right">1.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.78%</td>
    <td style="white-space: nowrap; text-align: right">1.01 ms</td>
    <td style="white-space: nowrap; text-align: right">1.40 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">919.10</td>
    <td style="white-space: nowrap; text-align: right">1.09 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.28%</td>
    <td style="white-space: nowrap; text-align: right">1.07 ms</td>
    <td style="white-space: nowrap; text-align: right">1.24 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">912.23</td>
    <td style="white-space: nowrap; text-align: right">1.10 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.22%</td>
    <td style="white-space: nowrap; text-align: right">1.06 ms</td>
    <td style="white-space: nowrap; text-align: right">1.42 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">898.42</td>
    <td style="white-space: nowrap; text-align: right">1.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.89%</td>
    <td style="white-space: nowrap; text-align: right">1.08 ms</td>
    <td style="white-space: nowrap; text-align: right">1.41 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">858.75</td>
    <td style="white-space: nowrap; text-align: right">1.16 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.99%</td>
    <td style="white-space: nowrap; text-align: right">1.16 ms</td>
    <td style="white-space: nowrap; text-align: right">1.31 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">952.45</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">919.10</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">912.23</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">898.42</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">858.75</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">708.78 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">622.17 KB</td>
    <td>0.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">477.29 KB</td>
    <td>0.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">630.59 KB</td>
    <td>0.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">726.45 KB</td>
    <td>1.02x</td>
  </tr>

</table>


<hr/>


__Input: 0010000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">877.01</td>
    <td style="white-space: nowrap; text-align: right">1.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.08%</td>
    <td style="white-space: nowrap; text-align: right">1.12 ms</td>
    <td style="white-space: nowrap; text-align: right">1.45 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">874.97</td>
    <td style="white-space: nowrap; text-align: right">1.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.91%</td>
    <td style="white-space: nowrap; text-align: right">1.13 ms</td>
    <td style="white-space: nowrap; text-align: right">1.38 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">856.35</td>
    <td style="white-space: nowrap; text-align: right">1.17 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.42%</td>
    <td style="white-space: nowrap; text-align: right">1.12 ms</td>
    <td style="white-space: nowrap; text-align: right">1.46 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">780.40</td>
    <td style="white-space: nowrap; text-align: right">1.28 ms</td>
    <td style="white-space: nowrap; text-align: right">±22.05%</td>
    <td style="white-space: nowrap; text-align: right">1.21 ms</td>
    <td style="white-space: nowrap; text-align: right">2.30 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">762.05</td>
    <td style="white-space: nowrap; text-align: right">1.31 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.14%</td>
    <td style="white-space: nowrap; text-align: right">1.32 ms</td>
    <td style="white-space: nowrap; text-align: right">1.42 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">877.01</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">874.97</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">856.35</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">780.40</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">762.05</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">496.49 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">793.07 KB</td>
    <td>1.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">834.28 KB</td>
    <td>1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">781.02 KB</td>
    <td>1.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">775.83 KB</td>
    <td>1.56x</td>
  </tr>

</table>


<hr/>


__Input: 0020000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">440.61</td>
    <td style="white-space: nowrap; text-align: right">2.27 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.76%</td>
    <td style="white-space: nowrap; text-align: right">2.24 ms</td>
    <td style="white-space: nowrap; text-align: right">2.57 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">433.91</td>
    <td style="white-space: nowrap; text-align: right">2.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.75%</td>
    <td style="white-space: nowrap; text-align: right">2.26 ms</td>
    <td style="white-space: nowrap; text-align: right">2.74 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">427.14</td>
    <td style="white-space: nowrap; text-align: right">2.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.59%</td>
    <td style="white-space: nowrap; text-align: right">2.30 ms</td>
    <td style="white-space: nowrap; text-align: right">2.69 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">399.28</td>
    <td style="white-space: nowrap; text-align: right">2.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.56%</td>
    <td style="white-space: nowrap; text-align: right">2.44 ms</td>
    <td style="white-space: nowrap; text-align: right">2.97 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">378.12</td>
    <td style="white-space: nowrap; text-align: right">2.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.60%</td>
    <td style="white-space: nowrap; text-align: right">2.60 ms</td>
    <td style="white-space: nowrap; text-align: right">2.84 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">440.61</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">433.91</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">427.14</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">399.28</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">378.12</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">1.45 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">1.01 MB</td>
    <td>0.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">1.50 MB</td>
    <td>1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">1.63 MB</td>
    <td>1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">1.50 MB</td>
    <td>1.04x</td>
  </tr>

</table>


<hr/>


__Input: 0030000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">293.38</td>
    <td style="white-space: nowrap; text-align: right">3.41 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.71%</td>
    <td style="white-space: nowrap; text-align: right">3.33 ms</td>
    <td style="white-space: nowrap; text-align: right">4.13 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">285.52</td>
    <td style="white-space: nowrap; text-align: right">3.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.71%</td>
    <td style="white-space: nowrap; text-align: right">3.47 ms</td>
    <td style="white-space: nowrap; text-align: right">3.95 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">282.76</td>
    <td style="white-space: nowrap; text-align: right">3.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.58%</td>
    <td style="white-space: nowrap; text-align: right">3.54 ms</td>
    <td style="white-space: nowrap; text-align: right">3.73 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">267.71</td>
    <td style="white-space: nowrap; text-align: right">3.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.98%</td>
    <td style="white-space: nowrap; text-align: right">3.69 ms</td>
    <td style="white-space: nowrap; text-align: right">4.20 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">246.97</td>
    <td style="white-space: nowrap; text-align: right">4.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.83%</td>
    <td style="white-space: nowrap; text-align: right">3.98 ms</td>
    <td style="white-space: nowrap; text-align: right">4.45 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">293.38</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">285.52</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">282.76</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">267.71</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">246.97</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">1.42 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">2.30 MB</td>
    <td>1.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">2.46 MB</td>
    <td>1.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">2.52 MB</td>
    <td>1.77x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">2.11 MB</td>
    <td>1.48x</td>
  </tr>

</table>


<hr/>


__Input: 0040000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">224.84</td>
    <td style="white-space: nowrap; text-align: right">4.45 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.83%</td>
    <td style="white-space: nowrap; text-align: right">4.38 ms</td>
    <td style="white-space: nowrap; text-align: right">4.74 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">215.77</td>
    <td style="white-space: nowrap; text-align: right">4.63 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.11%</td>
    <td style="white-space: nowrap; text-align: right">4.65 ms</td>
    <td style="white-space: nowrap; text-align: right">4.96 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">209.30</td>
    <td style="white-space: nowrap; text-align: right">4.78 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.71%</td>
    <td style="white-space: nowrap; text-align: right">4.80 ms</td>
    <td style="white-space: nowrap; text-align: right">5.05 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">200.25</td>
    <td style="white-space: nowrap; text-align: right">4.99 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.43%</td>
    <td style="white-space: nowrap; text-align: right">5.03 ms</td>
    <td style="white-space: nowrap; text-align: right">5.28 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">186.61</td>
    <td style="white-space: nowrap; text-align: right">5.36 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.77%</td>
    <td style="white-space: nowrap; text-align: right">5.37 ms</td>
    <td style="white-space: nowrap; text-align: right">5.72 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">224.84</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">215.77</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">209.30</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">200.25</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">186.61</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">2.10 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">2.91 MB</td>
    <td>1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.27 MB</td>
    <td>1.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.37 MB</td>
    <td>1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">3.08 MB</td>
    <td>1.47x</td>
  </tr>

</table>


<hr/>


__Input: 0050000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">176.52</td>
    <td style="white-space: nowrap; text-align: right">5.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.12%</td>
    <td style="white-space: nowrap; text-align: right">5.69 ms</td>
    <td style="white-space: nowrap; text-align: right">5.93 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">174.83</td>
    <td style="white-space: nowrap; text-align: right">5.72 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.59%</td>
    <td style="white-space: nowrap; text-align: right">5.71 ms</td>
    <td style="white-space: nowrap; text-align: right">6.89 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">169.05</td>
    <td style="white-space: nowrap; text-align: right">5.92 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.75%</td>
    <td style="white-space: nowrap; text-align: right">5.91 ms</td>
    <td style="white-space: nowrap; text-align: right">6.22 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">158.25</td>
    <td style="white-space: nowrap; text-align: right">6.32 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.81%</td>
    <td style="white-space: nowrap; text-align: right">6.30 ms</td>
    <td style="white-space: nowrap; text-align: right">6.58 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">150.20</td>
    <td style="white-space: nowrap; text-align: right">6.66 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.86%</td>
    <td style="white-space: nowrap; text-align: right">6.64 ms</td>
    <td style="white-space: nowrap; text-align: right">6.92 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">176.52</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">174.83</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">169.05</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">158.25</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">150.20</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">4.15 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">2.78 MB</td>
    <td>0.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.66 MB</td>
    <td>0.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.87 MB</td>
    <td>0.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">3.33 MB</td>
    <td>0.8x</td>
  </tr>

</table>


<hr/>


__Input: 0060000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">147.23</td>
    <td style="white-space: nowrap; text-align: right">6.79 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.36%</td>
    <td style="white-space: nowrap; text-align: right">6.83 ms</td>
    <td style="white-space: nowrap; text-align: right">7.03 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">146.25</td>
    <td style="white-space: nowrap; text-align: right">6.84 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.85%</td>
    <td style="white-space: nowrap; text-align: right">6.92 ms</td>
    <td style="white-space: nowrap; text-align: right">7.32 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">138.93</td>
    <td style="white-space: nowrap; text-align: right">7.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.17%</td>
    <td style="white-space: nowrap; text-align: right">7.28 ms</td>
    <td style="white-space: nowrap; text-align: right">7.49 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">131.72</td>
    <td style="white-space: nowrap; text-align: right">7.59 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.43%</td>
    <td style="white-space: nowrap; text-align: right">7.56 ms</td>
    <td style="white-space: nowrap; text-align: right">7.88 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">122.10</td>
    <td style="white-space: nowrap; text-align: right">8.19 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.51%</td>
    <td style="white-space: nowrap; text-align: right">8.14 ms</td>
    <td style="white-space: nowrap; text-align: right">8.65 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">147.23</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">146.25</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">138.93</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">131.72</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">122.10</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">4.62 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">3.29 MB</td>
    <td>0.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">4.31 MB</td>
    <td>0.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">4.67 MB</td>
    <td>1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">4.11 MB</td>
    <td>0.89x</td>
  </tr>

</table>


<hr/>


__Input: 0070000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">124.56</td>
    <td style="white-space: nowrap; text-align: right">8.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.13%</td>
    <td style="white-space: nowrap; text-align: right">8.05 ms</td>
    <td style="white-space: nowrap; text-align: right">8.26 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">122.71</td>
    <td style="white-space: nowrap; text-align: right">8.15 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.49%</td>
    <td style="white-space: nowrap; text-align: right">8.07 ms</td>
    <td style="white-space: nowrap; text-align: right">8.76 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">118.36</td>
    <td style="white-space: nowrap; text-align: right">8.45 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.89%</td>
    <td style="white-space: nowrap; text-align: right">8.36 ms</td>
    <td style="white-space: nowrap; text-align: right">9.06 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">104.82</td>
    <td style="white-space: nowrap; text-align: right">9.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.95%</td>
    <td style="white-space: nowrap; text-align: right">9.48 ms</td>
    <td style="white-space: nowrap; text-align: right">9.97 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">104.44</td>
    <td style="white-space: nowrap; text-align: right">9.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±17.82%</td>
    <td style="white-space: nowrap; text-align: right">8.97 ms</td>
    <td style="white-space: nowrap; text-align: right">14.15 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">124.56</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">122.71</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">118.36</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">104.82</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">104.44</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">3.56 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">5.10 MB</td>
    <td>1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">5.95 MB</td>
    <td>1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">5.04 MB</td>
    <td>1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">5.09 MB</td>
    <td>1.43x</td>
  </tr>

</table>


<hr/>


__Input: 0080000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">107.97</td>
    <td style="white-space: nowrap; text-align: right">9.26 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.49%</td>
    <td style="white-space: nowrap; text-align: right">9.24 ms</td>
    <td style="white-space: nowrap; text-align: right">9.55 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">106.34</td>
    <td style="white-space: nowrap; text-align: right">9.40 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.80%</td>
    <td style="white-space: nowrap; text-align: right">9.33 ms</td>
    <td style="white-space: nowrap; text-align: right">9.89 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">102.57</td>
    <td style="white-space: nowrap; text-align: right">9.75 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.86%</td>
    <td style="white-space: nowrap; text-align: right">9.57 ms</td>
    <td style="white-space: nowrap; text-align: right">10.60 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">96.76</td>
    <td style="white-space: nowrap; text-align: right">10.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.67%</td>
    <td style="white-space: nowrap; text-align: right">10.35 ms</td>
    <td style="white-space: nowrap; text-align: right">10.90 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">90.42</td>
    <td style="white-space: nowrap; text-align: right">11.06 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.81%</td>
    <td style="white-space: nowrap; text-align: right">11.04 ms</td>
    <td style="white-space: nowrap; text-align: right">11.45 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">107.97</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">106.34</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">102.57</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">96.76</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">90.42</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">6.77 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">4.31 MB</td>
    <td>0.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">6.40 MB</td>
    <td>0.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">6.74 MB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">5.84 MB</td>
    <td>0.86x</td>
  </tr>

</table>


<hr/>


__Input: 0090000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">95.23</td>
    <td style="white-space: nowrap; text-align: right">10.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.46%</td>
    <td style="white-space: nowrap; text-align: right">10.43 ms</td>
    <td style="white-space: nowrap; text-align: right">10.73 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">95.14</td>
    <td style="white-space: nowrap; text-align: right">10.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.44%</td>
    <td style="white-space: nowrap; text-align: right">10.46 ms</td>
    <td style="white-space: nowrap; text-align: right">11.03 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">92.78</td>
    <td style="white-space: nowrap; text-align: right">10.78 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.72%</td>
    <td style="white-space: nowrap; text-align: right">10.73 ms</td>
    <td style="white-space: nowrap; text-align: right">11.10 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">86.71</td>
    <td style="white-space: nowrap; text-align: right">11.53 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.85%</td>
    <td style="white-space: nowrap; text-align: right">11.19 ms</td>
    <td style="white-space: nowrap; text-align: right">14.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">78.66</td>
    <td style="white-space: nowrap; text-align: right">12.71 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.77%</td>
    <td style="white-space: nowrap; text-align: right">12.64 ms</td>
    <td style="white-space: nowrap; text-align: right">13.15 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">95.23</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">95.14</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">92.78</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">86.71</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">78.66</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">6.52 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">5.15 MB</td>
    <td>0.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">6.51 MB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">6.52 MB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">7.07 MB</td>
    <td>1.08x</td>
  </tr>

</table>


<hr/>


__Input: 0100000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">85.46</td>
    <td style="white-space: nowrap; text-align: right">11.70 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.25%</td>
    <td style="white-space: nowrap; text-align: right">11.62 ms</td>
    <td style="white-space: nowrap; text-align: right">12.28 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">85.34</td>
    <td style="white-space: nowrap; text-align: right">11.72 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.67%</td>
    <td style="white-space: nowrap; text-align: right">11.76 ms</td>
    <td style="white-space: nowrap; text-align: right">12.04 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">80.87</td>
    <td style="white-space: nowrap; text-align: right">12.37 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.68%</td>
    <td style="white-space: nowrap; text-align: right">11.92 ms</td>
    <td style="white-space: nowrap; text-align: right">17.72 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">77.96</td>
    <td style="white-space: nowrap; text-align: right">12.83 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.26%</td>
    <td style="white-space: nowrap; text-align: right">12.75 ms</td>
    <td style="white-space: nowrap; text-align: right">13.63 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">70.43</td>
    <td style="white-space: nowrap; text-align: right">14.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.82%</td>
    <td style="white-space: nowrap; text-align: right">14.20 ms</td>
    <td style="white-space: nowrap; text-align: right">14.86 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">85.46</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">85.34</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">80.87</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">77.96</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">70.43</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">8.40 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">6.29 MB</td>
    <td>0.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">7.72 MB</td>
    <td>0.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">7.72 MB</td>
    <td>0.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">8.08 MB</td>
    <td>0.96x</td>
  </tr>

</table>


<hr/>


__Input: 0200000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">41.75</td>
    <td style="white-space: nowrap; text-align: right">23.95 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.56%</td>
    <td style="white-space: nowrap; text-align: right">23.94 ms</td>
    <td style="white-space: nowrap; text-align: right">25.19 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">41.20</td>
    <td style="white-space: nowrap; text-align: right">24.27 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.70%</td>
    <td style="white-space: nowrap; text-align: right">24.24 ms</td>
    <td style="white-space: nowrap; text-align: right">25.10 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">38.31</td>
    <td style="white-space: nowrap; text-align: right">26.10 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.59%</td>
    <td style="white-space: nowrap; text-align: right">26.21 ms</td>
    <td style="white-space: nowrap; text-align: right">26.80 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">37.75</td>
    <td style="white-space: nowrap; text-align: right">26.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±22.21%</td>
    <td style="white-space: nowrap; text-align: right">24.84 ms</td>
    <td style="white-space: nowrap; text-align: right">45.13 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">34.74</td>
    <td style="white-space: nowrap; text-align: right">28.79 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.90%</td>
    <td style="white-space: nowrap; text-align: right">28.73 ms</td>
    <td style="white-space: nowrap; text-align: right">29.23 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">41.75</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">41.20</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">38.31</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">37.75</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">34.74</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">9.96 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">14.60 MB</td>
    <td>1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">16.56 MB</td>
    <td>1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">16.68 MB</td>
    <td>1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">16.17 MB</td>
    <td>1.62x</td>
  </tr>

</table>


<hr/>


__Input: 0300000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">26.90</td>
    <td style="white-space: nowrap; text-align: right">37.18 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.18%</td>
    <td style="white-space: nowrap; text-align: right">36.31 ms</td>
    <td style="white-space: nowrap; text-align: right">45.43 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">26.05</td>
    <td style="white-space: nowrap; text-align: right">38.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.33%</td>
    <td style="white-space: nowrap; text-align: right">36.95 ms</td>
    <td style="white-space: nowrap; text-align: right">46.45 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">25.49</td>
    <td style="white-space: nowrap; text-align: right">39.23 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.95%</td>
    <td style="white-space: nowrap; text-align: right">37.00 ms</td>
    <td style="white-space: nowrap; text-align: right">46.47 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">24.48</td>
    <td style="white-space: nowrap; text-align: right">40.85 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.06%</td>
    <td style="white-space: nowrap; text-align: right">39.37 ms</td>
    <td style="white-space: nowrap; text-align: right">48.39 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">23.10</td>
    <td style="white-space: nowrap; text-align: right">43.29 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.22%</td>
    <td style="white-space: nowrap; text-align: right">43.18 ms</td>
    <td style="white-space: nowrap; text-align: right">44.18 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">26.90</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">26.05</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">25.49</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">24.48</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">23.10</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">15.94 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">24.87 MB</td>
    <td>1.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">24.80 MB</td>
    <td>1.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">23.53 MB</td>
    <td>1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">20.37 MB</td>
    <td>1.28x</td>
  </tr>

</table>


<hr/>


__Input: 0400000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">19.46</td>
    <td style="white-space: nowrap; text-align: right">51.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.76%</td>
    <td style="white-space: nowrap; text-align: right">49.96 ms</td>
    <td style="white-space: nowrap; text-align: right">60.62 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">19.42</td>
    <td style="white-space: nowrap; text-align: right">51.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.67%</td>
    <td style="white-space: nowrap; text-align: right">49.99 ms</td>
    <td style="white-space: nowrap; text-align: right">61.91 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">19.11</td>
    <td style="white-space: nowrap; text-align: right">52.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.56%</td>
    <td style="white-space: nowrap; text-align: right">49.19 ms</td>
    <td style="white-space: nowrap; text-align: right">67.21 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">18.03</td>
    <td style="white-space: nowrap; text-align: right">55.47 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.73%</td>
    <td style="white-space: nowrap; text-align: right">53.45 ms</td>
    <td style="white-space: nowrap; text-align: right">67.27 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">16.53</td>
    <td style="white-space: nowrap; text-align: right">60.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.75%</td>
    <td style="white-space: nowrap; text-align: right">58.13 ms</td>
    <td style="white-space: nowrap; text-align: right">70.85 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">19.46</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">19.42</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">19.11</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">18.03</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">16.53</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">20.90 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">30.70 MB</td>
    <td>1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">30.39 MB</td>
    <td>1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">30.42 MB</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">28.98 MB</td>
    <td>1.39x</td>
  </tr>

</table>


<hr/>


__Input: 0500000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">15.80</td>
    <td style="white-space: nowrap; text-align: right">63.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.03%</td>
    <td style="white-space: nowrap; text-align: right">60.82 ms</td>
    <td style="white-space: nowrap; text-align: right">72.97 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">12.70</td>
    <td style="white-space: nowrap; text-align: right">78.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±59.46%</td>
    <td style="white-space: nowrap; text-align: right">60.74 ms</td>
    <td style="white-space: nowrap; text-align: right">202.64 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.56</td>
    <td style="white-space: nowrap; text-align: right">79.61 ms</td>
    <td style="white-space: nowrap; text-align: right">±56.28%</td>
    <td style="white-space: nowrap; text-align: right">63.08 ms</td>
    <td style="white-space: nowrap; text-align: right">198.30 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">12.01</td>
    <td style="white-space: nowrap; text-align: right">83.28 ms</td>
    <td style="white-space: nowrap; text-align: right">±54.01%</td>
    <td style="white-space: nowrap; text-align: right">66.10 ms</td>
    <td style="white-space: nowrap; text-align: right">202.30 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">11.16</td>
    <td style="white-space: nowrap; text-align: right">89.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±49.88%</td>
    <td style="white-space: nowrap; text-align: right">73.33 ms</td>
    <td style="white-space: nowrap; text-align: right">207.72 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">15.80</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">12.70</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.56</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">12.01</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">11.16</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">28.53 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">37.56 MB</td>
    <td>1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">39.50 MB</td>
    <td>1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">37.60 MB</td>
    <td>1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">35.58 MB</td>
    <td>1.25x</td>
  </tr>

</table>


<hr/>


__Input: 0600000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">12.65</td>
    <td style="white-space: nowrap; text-align: right">79.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.60%</td>
    <td style="white-space: nowrap; text-align: right">75.23 ms</td>
    <td style="white-space: nowrap; text-align: right">98.09 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.39</td>
    <td style="white-space: nowrap; text-align: right">80.72 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.18%</td>
    <td style="white-space: nowrap; text-align: right">76.95 ms</td>
    <td style="white-space: nowrap; text-align: right">93.96 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">11.80</td>
    <td style="white-space: nowrap; text-align: right">84.75 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.54%</td>
    <td style="white-space: nowrap; text-align: right">81.16 ms</td>
    <td style="white-space: nowrap; text-align: right">99.90 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">10.56</td>
    <td style="white-space: nowrap; text-align: right">94.73 ms</td>
    <td style="white-space: nowrap; text-align: right">±55.29%</td>
    <td style="white-space: nowrap; text-align: right">74.82 ms</td>
    <td style="white-space: nowrap; text-align: right">223.84 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">6.86</td>
    <td style="white-space: nowrap; text-align: right">145.87 ms</td>
    <td style="white-space: nowrap; text-align: right">±55.65%</td>
    <td style="white-space: nowrap; text-align: right">106.90 ms</td>
    <td style="white-space: nowrap; text-align: right">292.63 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">12.65</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.39</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">11.80</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">10.56</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">6.86</td>
    <td style="white-space: nowrap; text-align: right">1.85x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">45.17 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">47.21 MB</td>
    <td>1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">45.11 MB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">34.90 MB</td>
    <td>0.77x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">41.36 MB</td>
    <td>0.92x</td>
  </tr>

</table>


<hr/>


__Input: 0700000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">10.94</td>
    <td style="white-space: nowrap; text-align: right">91.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.56%</td>
    <td style="white-space: nowrap; text-align: right">87.02 ms</td>
    <td style="white-space: nowrap; text-align: right">104.11 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.80</td>
    <td style="white-space: nowrap; text-align: right">263.12 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.91%</td>
    <td style="white-space: nowrap; text-align: right">239.55 ms</td>
    <td style="white-space: nowrap; text-align: right">310.32 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.74</td>
    <td style="white-space: nowrap; text-align: right">267.18 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.46%</td>
    <td style="white-space: nowrap; text-align: right">240.87 ms</td>
    <td style="white-space: nowrap; text-align: right">312.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.71</td>
    <td style="white-space: nowrap; text-align: right">269.55 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.63%</td>
    <td style="white-space: nowrap; text-align: right">246.40 ms</td>
    <td style="white-space: nowrap; text-align: right">315.51 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.59</td>
    <td style="white-space: nowrap; text-align: right">278.69 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.65%</td>
    <td style="white-space: nowrap; text-align: right">245.78 ms</td>
    <td style="white-space: nowrap; text-align: right">330.54 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">10.94</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.80</td>
    <td style="white-space: nowrap; text-align: right">2.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.74</td>
    <td style="white-space: nowrap; text-align: right">2.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.71</td>
    <td style="white-space: nowrap; text-align: right">2.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.59</td>
    <td style="white-space: nowrap; text-align: right">3.05x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">40.81 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">51.14 MB</td>
    <td>1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">56.99 MB</td>
    <td>1.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">57.00 MB</td>
    <td>1.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">48.11 MB</td>
    <td>1.18x</td>
  </tr>

</table>


<hr/>


__Input: 0800000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.44</td>
    <td style="white-space: nowrap; text-align: right">105.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.07%</td>
    <td style="white-space: nowrap; text-align: right">99.76 ms</td>
    <td style="white-space: nowrap; text-align: right">128.17 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.70</td>
    <td style="white-space: nowrap; text-align: right">270.62 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.95%</td>
    <td style="white-space: nowrap; text-align: right">253.41 ms</td>
    <td style="white-space: nowrap; text-align: right">337.87 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.66</td>
    <td style="white-space: nowrap; text-align: right">273.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.65%</td>
    <td style="white-space: nowrap; text-align: right">254.84 ms</td>
    <td style="white-space: nowrap; text-align: right">344.61 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.59</td>
    <td style="white-space: nowrap; text-align: right">278.80 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.34%</td>
    <td style="white-space: nowrap; text-align: right">261.60 ms</td>
    <td style="white-space: nowrap; text-align: right">345.09 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.49</td>
    <td style="white-space: nowrap; text-align: right">286.56 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.50%</td>
    <td style="white-space: nowrap; text-align: right">271.80 ms</td>
    <td style="white-space: nowrap; text-align: right">350.12 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">9.44</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.70</td>
    <td style="white-space: nowrap; text-align: right">2.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.66</td>
    <td style="white-space: nowrap; text-align: right">2.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.59</td>
    <td style="white-space: nowrap; text-align: right">2.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.49</td>
    <td style="white-space: nowrap; text-align: right">2.71x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">41.51 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">58.46 MB</td>
    <td>1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">58.43 MB</td>
    <td>1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">59.41 MB</td>
    <td>1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">54.93 MB</td>
    <td>1.32x</td>
  </tr>

</table>


<hr/>


__Input: 0900000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">3.56</td>
    <td style="white-space: nowrap; text-align: right">280.66 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.08%</td>
    <td style="white-space: nowrap; text-align: right">265.28 ms</td>
    <td style="white-space: nowrap; text-align: right">345.85 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.41</td>
    <td style="white-space: nowrap; text-align: right">293.13 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.71%</td>
    <td style="white-space: nowrap; text-align: right">273.06 ms</td>
    <td style="white-space: nowrap; text-align: right">349.93 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.40</td>
    <td style="white-space: nowrap; text-align: right">294.19 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.62%</td>
    <td style="white-space: nowrap; text-align: right">273.04 ms</td>
    <td style="white-space: nowrap; text-align: right">376.00 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.34</td>
    <td style="white-space: nowrap; text-align: right">299.19 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.68%</td>
    <td style="white-space: nowrap; text-align: right">282.21 ms</td>
    <td style="white-space: nowrap; text-align: right">371.18 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.29</td>
    <td style="white-space: nowrap; text-align: right">304.07 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.64%</td>
    <td style="white-space: nowrap; text-align: right">284.36 ms</td>
    <td style="white-space: nowrap; text-align: right">365.71 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">3.56</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.41</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.40</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.34</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.29</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">48.63 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">66.96 MB</td>
    <td>1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">66.92 MB</td>
    <td>1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">69.75 MB</td>
    <td>1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">61.46 MB</td>
    <td>1.26x</td>
  </tr>

</table>


<hr/>


__Input: 1000000__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">3.22</td>
    <td style="white-space: nowrap; text-align: right">310.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.58%</td>
    <td style="white-space: nowrap; text-align: right">290.90 ms</td>
    <td style="white-space: nowrap; text-align: right">368.63 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.17</td>
    <td style="white-space: nowrap; text-align: right">315.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.98%</td>
    <td style="white-space: nowrap; text-align: right">297.98 ms</td>
    <td style="white-space: nowrap; text-align: right">371.97 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.14</td>
    <td style="white-space: nowrap; text-align: right">318.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.35%</td>
    <td style="white-space: nowrap; text-align: right">302.06 ms</td>
    <td style="white-space: nowrap; text-align: right">385.90 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.10</td>
    <td style="white-space: nowrap; text-align: right">322.16 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.60%</td>
    <td style="white-space: nowrap; text-align: right">306.86 ms</td>
    <td style="white-space: nowrap; text-align: right">386.58 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.91</td>
    <td style="white-space: nowrap; text-align: right">343.40 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.62%</td>
    <td style="white-space: nowrap; text-align: right">321.45 ms</td>
    <td style="white-space: nowrap; text-align: right">413.38 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">3.22</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.17</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.14</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.10</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.91</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">52.53 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">81.64 MB</td>
    <td>1.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">74.84 MB</td>
    <td>1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">76.60 MB</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">70.78 MB</td>
    <td>1.35x</td>
  </tr>

</table>


<hr/>

