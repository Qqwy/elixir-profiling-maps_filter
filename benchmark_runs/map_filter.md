
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
    <td style="white-space: nowrap; text-align: right">571.00 K</td>
    <td style="white-space: nowrap; text-align: right">1.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.17%</td>
    <td style="white-space: nowrap; text-align: right">1.80 μs</td>
    <td style="white-space: nowrap; text-align: right">2.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">563.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.78%</td>
    <td style="white-space: nowrap; text-align: right">1.73 μs</td>
    <td style="white-space: nowrap; text-align: right">2.11 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">505.23 K</td>
    <td style="white-space: nowrap; text-align: right">1.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.77%</td>
    <td style="white-space: nowrap; text-align: right">1.95 μs</td>
    <td style="white-space: nowrap; text-align: right">2.43 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">483.73 K</td>
    <td style="white-space: nowrap; text-align: right">2.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.53%</td>
    <td style="white-space: nowrap; text-align: right">1.96 μs</td>
    <td style="white-space: nowrap; text-align: right">2.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">217.93 K</td>
    <td style="white-space: nowrap; text-align: right">4.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±73.74%</td>
    <td style="white-space: nowrap; text-align: right">3.82 μs</td>
    <td style="white-space: nowrap; text-align: right">17.25 μs</td>
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
    <td style="white-space: nowrap;text-align: right">571.00 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">563.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">505.23 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">483.73 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">217.93 K</td>
    <td style="white-space: nowrap; text-align: right">2.62x</td>
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
    <td style="white-space: nowrap">152 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">128 B</td>
    <td>0.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">152 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">208 B</td>
    <td>1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">264 B</td>
    <td>1.74x</td>
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
    <td style="white-space: nowrap; text-align: right">536.59 K</td>
    <td style="white-space: nowrap; text-align: right">1.86 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.14%</td>
    <td style="white-space: nowrap; text-align: right">1.86 μs</td>
    <td style="white-space: nowrap; text-align: right">2.23 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">447.98 K</td>
    <td style="white-space: nowrap; text-align: right">2.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.23%</td>
    <td style="white-space: nowrap; text-align: right">2.24 μs</td>
    <td style="white-space: nowrap; text-align: right">2.64 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">441.70 K</td>
    <td style="white-space: nowrap; text-align: right">2.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.90%</td>
    <td style="white-space: nowrap; text-align: right">2.31 μs</td>
    <td style="white-space: nowrap; text-align: right">2.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">362.58 K</td>
    <td style="white-space: nowrap; text-align: right">2.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±109.83%</td>
    <td style="white-space: nowrap; text-align: right">2.04 μs</td>
    <td style="white-space: nowrap; text-align: right">14.10 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">252.14 K</td>
    <td style="white-space: nowrap; text-align: right">3.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.43%</td>
    <td style="white-space: nowrap; text-align: right">3.92 μs</td>
    <td style="white-space: nowrap; text-align: right">4.66 μs</td>
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
    <td style="white-space: nowrap;text-align: right">536.59 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">447.98 K</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">441.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">362.58 K</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">252.14 K</td>
    <td style="white-space: nowrap; text-align: right">2.13x</td>
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
    <td style="white-space: nowrap">264 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">264 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">320 B</td>
    <td>1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">216 B</td>
    <td>0.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">352 B</td>
    <td>1.33x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">545.16 K</td>
    <td style="white-space: nowrap; text-align: right">1.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.76%</td>
    <td style="white-space: nowrap; text-align: right">1.86 μs</td>
    <td style="white-space: nowrap; text-align: right">2.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">474.09 K</td>
    <td style="white-space: nowrap; text-align: right">2.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.83%</td>
    <td style="white-space: nowrap; text-align: right">2.10 μs</td>
    <td style="white-space: nowrap; text-align: right">2.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">410.36 K</td>
    <td style="white-space: nowrap; text-align: right">2.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.31%</td>
    <td style="white-space: nowrap; text-align: right">2.38 μs</td>
    <td style="white-space: nowrap; text-align: right">3.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">388.54 K</td>
    <td style="white-space: nowrap; text-align: right">2.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±46.42%</td>
    <td style="white-space: nowrap; text-align: right">2.27 μs</td>
    <td style="white-space: nowrap; text-align: right">7.02 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">252.70 K</td>
    <td style="white-space: nowrap; text-align: right">3.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.32%</td>
    <td style="white-space: nowrap; text-align: right">3.93 μs</td>
    <td style="white-space: nowrap; text-align: right">4.44 μs</td>
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
    <td style="white-space: nowrap;text-align: right">545.16 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">474.09 K</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">410.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">388.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">252.70 K</td>
    <td style="white-space: nowrap; text-align: right">2.16x</td>
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
    <td style="white-space: nowrap">320 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">248 B</td>
    <td>0.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">376 B</td>
    <td>1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">320 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">408 B</td>
    <td>1.27x</td>
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
    <td style="white-space: nowrap; text-align: right">525.59 K</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.95%</td>
    <td style="white-space: nowrap; text-align: right">1.88 μs</td>
    <td style="white-space: nowrap; text-align: right">2.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">485.04 K</td>
    <td style="white-space: nowrap; text-align: right">2.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.98%</td>
    <td style="white-space: nowrap; text-align: right">2.04 μs</td>
    <td style="white-space: nowrap; text-align: right">2.32 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">442.12 K</td>
    <td style="white-space: nowrap; text-align: right">2.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.66%</td>
    <td style="white-space: nowrap; text-align: right">2.27 μs</td>
    <td style="white-space: nowrap; text-align: right">2.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">373.02 K</td>
    <td style="white-space: nowrap; text-align: right">2.68 μs</td>
    <td style="white-space: nowrap; text-align: right">±43.85%</td>
    <td style="white-space: nowrap; text-align: right">2.45 μs</td>
    <td style="white-space: nowrap; text-align: right">7.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">247.81 K</td>
    <td style="white-space: nowrap; text-align: right">4.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.83%</td>
    <td style="white-space: nowrap; text-align: right">3.98 μs</td>
    <td style="white-space: nowrap; text-align: right">4.92 μs</td>
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
    <td style="white-space: nowrap;text-align: right">525.59 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">485.04 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">442.12 K</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">373.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">247.81 K</td>
    <td style="white-space: nowrap; text-align: right">2.12x</td>
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
    <td style="white-space: nowrap">432 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">336 B</td>
    <td>0.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">432 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">488 B</td>
    <td>1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">528 B</td>
    <td>1.22x</td>
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
    <td style="white-space: nowrap; text-align: right">544.22 K</td>
    <td style="white-space: nowrap; text-align: right">1.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.63%</td>
    <td style="white-space: nowrap; text-align: right">1.77 μs</td>
    <td style="white-space: nowrap; text-align: right">2.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">466.50 K</td>
    <td style="white-space: nowrap; text-align: right">2.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.47%</td>
    <td style="white-space: nowrap; text-align: right">2.03 μs</td>
    <td style="white-space: nowrap; text-align: right">3.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">318.19 K</td>
    <td style="white-space: nowrap; text-align: right">3.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±127.12%</td>
    <td style="white-space: nowrap; text-align: right">2.11 μs</td>
    <td style="white-space: nowrap; text-align: right">18.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">278.24 K</td>
    <td style="white-space: nowrap; text-align: right">3.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±128.00%</td>
    <td style="white-space: nowrap; text-align: right">2.46 μs</td>
    <td style="white-space: nowrap; text-align: right">20.82 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">192.79 K</td>
    <td style="white-space: nowrap; text-align: right">5.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±88.47%</td>
    <td style="white-space: nowrap; text-align: right">4.06 μs</td>
    <td style="white-space: nowrap; text-align: right">22.38 μs</td>
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
    <td style="white-space: nowrap;text-align: right">544.22 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">466.50 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">318.19 K</td>
    <td style="white-space: nowrap; text-align: right">1.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">278.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">192.79 K</td>
    <td style="white-space: nowrap; text-align: right">2.82x</td>
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
    <td style="white-space: nowrap">488 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">488 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">368 B</td>
    <td>0.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">544 B</td>
    <td>1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">584 B</td>
    <td>1.2x</td>
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
    <td style="white-space: nowrap; text-align: right">509.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.15%</td>
    <td style="white-space: nowrap; text-align: right">1.83 μs</td>
    <td style="white-space: nowrap; text-align: right">2.27 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">438.25 K</td>
    <td style="white-space: nowrap; text-align: right">2.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.17%</td>
    <td style="white-space: nowrap; text-align: right">2.32 μs</td>
    <td style="white-space: nowrap; text-align: right">2.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">435.49 K</td>
    <td style="white-space: nowrap; text-align: right">2.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.15%</td>
    <td style="white-space: nowrap; text-align: right">2.10 μs</td>
    <td style="white-space: nowrap; text-align: right">5.03 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">363.98 K</td>
    <td style="white-space: nowrap; text-align: right">2.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.29%</td>
    <td style="white-space: nowrap; text-align: right">2.71 μs</td>
    <td style="white-space: nowrap; text-align: right">3.83 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">216.45 K</td>
    <td style="white-space: nowrap; text-align: right">4.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.25%</td>
    <td style="white-space: nowrap; text-align: right">4.55 μs</td>
    <td style="white-space: nowrap; text-align: right">5.64 μs</td>
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
    <td style="white-space: nowrap;text-align: right">509.02 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">438.25 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">435.49 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">363.98 K</td>
    <td style="white-space: nowrap; text-align: right">1.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">216.45 K</td>
    <td style="white-space: nowrap; text-align: right">2.35x</td>
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
    <td style="white-space: nowrap">600 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">600 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">456 B</td>
    <td>0.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">656 B</td>
    <td>1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">688 B</td>
    <td>1.15x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">443.77 K</td>
    <td style="white-space: nowrap; text-align: right">2.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.81%</td>
    <td style="white-space: nowrap; text-align: right">2.21 μs</td>
    <td style="white-space: nowrap; text-align: right">2.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">371.61 K</td>
    <td style="white-space: nowrap; text-align: right">2.69 μs</td>
    <td style="white-space: nowrap; text-align: right">±37.88%</td>
    <td style="white-space: nowrap; text-align: right">2.40 μs</td>
    <td style="white-space: nowrap; text-align: right">6.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">321.61 K</td>
    <td style="white-space: nowrap; text-align: right">3.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±130.11%</td>
    <td style="white-space: nowrap; text-align: right">2.12 μs</td>
    <td style="white-space: nowrap; text-align: right">18.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">292.89 K</td>
    <td style="white-space: nowrap; text-align: right">3.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±95.12%</td>
    <td style="white-space: nowrap; text-align: right">2.60 μs</td>
    <td style="white-space: nowrap; text-align: right">15.57 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">221.34 K</td>
    <td style="white-space: nowrap; text-align: right">4.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.49%</td>
    <td style="white-space: nowrap; text-align: right">4.44 μs</td>
    <td style="white-space: nowrap; text-align: right">6.13 μs</td>
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
    <td style="white-space: nowrap;text-align: right">443.77 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">371.61 K</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">321.61 K</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">292.89 K</td>
    <td style="white-space: nowrap; text-align: right">1.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">221.34 K</td>
    <td style="white-space: nowrap; text-align: right">2.0x</td>
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
    <td style="white-space: nowrap">488 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">656 B</td>
    <td>1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">656 B</td>
    <td>1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">712 B</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">744 B</td>
    <td>1.52x</td>
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
    <td style="white-space: nowrap; text-align: right">466.69 K</td>
    <td style="white-space: nowrap; text-align: right">2.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.29%</td>
    <td style="white-space: nowrap; text-align: right">2.16 μs</td>
    <td style="white-space: nowrap; text-align: right">2.72 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">362.41 K</td>
    <td style="white-space: nowrap; text-align: right">2.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±56.33%</td>
    <td style="white-space: nowrap; text-align: right">2.25 μs</td>
    <td style="white-space: nowrap; text-align: right">7.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">359.88 K</td>
    <td style="white-space: nowrap; text-align: right">2.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.29%</td>
    <td style="white-space: nowrap; text-align: right">2.71 μs</td>
    <td style="white-space: nowrap; text-align: right">4.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">240.05 K</td>
    <td style="white-space: nowrap; text-align: right">4.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±121.88%</td>
    <td style="white-space: nowrap; text-align: right">2.47 μs</td>
    <td style="white-space: nowrap; text-align: right">22.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">162.21 K</td>
    <td style="white-space: nowrap; text-align: right">6.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±72.42%</td>
    <td style="white-space: nowrap; text-align: right">4.61 μs</td>
    <td style="white-space: nowrap; text-align: right">18.00 μs</td>
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
    <td style="white-space: nowrap;text-align: right">466.69 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">362.41 K</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">359.88 K</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">240.05 K</td>
    <td style="white-space: nowrap; text-align: right">1.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">162.21 K</td>
    <td style="white-space: nowrap; text-align: right">2.88x</td>
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
    <td style="white-space: nowrap">768 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">576 B</td>
    <td>0.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">824 B</td>
    <td>1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">768 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">848 B</td>
    <td>1.1x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">456.37 K</td>
    <td style="white-space: nowrap; text-align: right">2.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.63%</td>
    <td style="white-space: nowrap; text-align: right">2.22 μs</td>
    <td style="white-space: nowrap; text-align: right">2.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">437.40 K</td>
    <td style="white-space: nowrap; text-align: right">2.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.26%</td>
    <td style="white-space: nowrap; text-align: right">2.36 μs</td>
    <td style="white-space: nowrap; text-align: right">2.56 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">412.53 K</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.72%</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
    <td style="white-space: nowrap; text-align: right">3.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">279.65 K</td>
    <td style="white-space: nowrap; text-align: right">3.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±88.31%</td>
    <td style="white-space: nowrap; text-align: right">2.80 μs</td>
    <td style="white-space: nowrap; text-align: right">15.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">180.16 K</td>
    <td style="white-space: nowrap; text-align: right">5.55 μs</td>
    <td style="white-space: nowrap; text-align: right">±72.31%</td>
    <td style="white-space: nowrap; text-align: right">4.58 μs</td>
    <td style="white-space: nowrap; text-align: right">20.57 μs</td>
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
    <td style="white-space: nowrap;text-align: right">456.37 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">437.40 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">412.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">279.65 K</td>
    <td style="white-space: nowrap; text-align: right">1.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">180.16 K</td>
    <td style="white-space: nowrap; text-align: right">2.53x</td>
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
    <td style="white-space: nowrap">824 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">608 B</td>
    <td>0.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">824 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">880 B</td>
    <td>1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">904 B</td>
    <td>1.1x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">461.76 K</td>
    <td style="white-space: nowrap; text-align: right">2.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.89%</td>
    <td style="white-space: nowrap; text-align: right">2.22 μs</td>
    <td style="white-space: nowrap; text-align: right">2.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">374.02 K</td>
    <td style="white-space: nowrap; text-align: right">2.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.18%</td>
    <td style="white-space: nowrap; text-align: right">2.73 μs</td>
    <td style="white-space: nowrap; text-align: right">3.05 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">370.95 K</td>
    <td style="white-space: nowrap; text-align: right">2.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.36%</td>
    <td style="white-space: nowrap; text-align: right">2.80 μs</td>
    <td style="white-space: nowrap; text-align: right">3.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">294.63 K</td>
    <td style="white-space: nowrap; text-align: right">3.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±118.72%</td>
    <td style="white-space: nowrap; text-align: right">2.43 μs</td>
    <td style="white-space: nowrap; text-align: right">18.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">208.17 K</td>
    <td style="white-space: nowrap; text-align: right">4.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.45%</td>
    <td style="white-space: nowrap; text-align: right">4.53 μs</td>
    <td style="white-space: nowrap; text-align: right">6.39 μs</td>
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
    <td style="white-space: nowrap;text-align: right">461.76 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">374.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">370.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">294.63 K</td>
    <td style="white-space: nowrap; text-align: right">1.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">208.17 K</td>
    <td style="white-space: nowrap; text-align: right">2.22x</td>
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
    <td style="white-space: nowrap">936 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">696 B</td>
    <td>0.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">992 B</td>
    <td>1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">936 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">1008 B</td>
    <td>1.08x</td>
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
    <td style="white-space: nowrap; text-align: right">414.64 K</td>
    <td style="white-space: nowrap; text-align: right">2.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.08%</td>
    <td style="white-space: nowrap; text-align: right">2.39 μs</td>
    <td style="white-space: nowrap; text-align: right">2.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">355.15 K</td>
    <td style="white-space: nowrap; text-align: right">2.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.12%</td>
    <td style="white-space: nowrap; text-align: right">2.82 μs</td>
    <td style="white-space: nowrap; text-align: right">3.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">321.66 K</td>
    <td style="white-space: nowrap; text-align: right">3.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.45%</td>
    <td style="white-space: nowrap; text-align: right">3.09 μs</td>
    <td style="white-space: nowrap; text-align: right">3.43 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">269.84 K</td>
    <td style="white-space: nowrap; text-align: right">3.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±103.63%</td>
    <td style="white-space: nowrap; text-align: right">2.80 μs</td>
    <td style="white-space: nowrap; text-align: right">18.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">114.74 K</td>
    <td style="white-space: nowrap; text-align: right">8.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±163.78%</td>
    <td style="white-space: nowrap; text-align: right">5.22 μs</td>
    <td style="white-space: nowrap; text-align: right">62.22 μs</td>
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
    <td style="white-space: nowrap;text-align: right">414.64 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">355.15 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">321.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">269.84 K</td>
    <td style="white-space: nowrap; text-align: right">1.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">114.74 K</td>
    <td style="white-space: nowrap; text-align: right">3.61x</td>
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
    <td style="white-space: nowrap">1.73 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">1.73 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">1.79 KB</td>
    <td>1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">1.08 KB</td>
    <td>0.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">1.77 KB</td>
    <td>1.02x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">328.69 K</td>
    <td style="white-space: nowrap; text-align: right">3.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.32%</td>
    <td style="white-space: nowrap; text-align: right">3.00 μs</td>
    <td style="white-space: nowrap; text-align: right">3.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">295.77 K</td>
    <td style="white-space: nowrap; text-align: right">3.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±61.07%</td>
    <td style="white-space: nowrap; text-align: right">2.83 μs</td>
    <td style="white-space: nowrap; text-align: right">10.96 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">284.60 K</td>
    <td style="white-space: nowrap; text-align: right">3.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.71%</td>
    <td style="white-space: nowrap; text-align: right">3.51 μs</td>
    <td style="white-space: nowrap; text-align: right">3.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">214.06 K</td>
    <td style="white-space: nowrap; text-align: right">4.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±96.57%</td>
    <td style="white-space: nowrap; text-align: right">3.00 μs</td>
    <td style="white-space: nowrap; text-align: right">16.48 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">132.14 K</td>
    <td style="white-space: nowrap; text-align: right">7.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±81.83%</td>
    <td style="white-space: nowrap; text-align: right">5.42 μs</td>
    <td style="white-space: nowrap; text-align: right">28.04 μs</td>
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
    <td style="white-space: nowrap;text-align: right">328.69 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">295.77 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">284.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">214.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">132.14 K</td>
    <td style="white-space: nowrap; text-align: right">2.49x</td>
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
    <td style="white-space: nowrap">1.59 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">2.55 KB</td>
    <td>1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">1.67 KB</td>
    <td>1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">2.55 KB</td>
    <td>1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">1.61 KB</td>
    <td>1.01x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">171.78 K</td>
    <td style="white-space: nowrap; text-align: right">5.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.90%</td>
    <td style="white-space: nowrap; text-align: right">5.84 μs</td>
    <td style="white-space: nowrap; text-align: right">6.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">142.45 K</td>
    <td style="white-space: nowrap; text-align: right">7.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±71.26%</td>
    <td style="white-space: nowrap; text-align: right">5.32 μs</td>
    <td style="white-space: nowrap; text-align: right">24.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">139.95 K</td>
    <td style="white-space: nowrap; text-align: right">7.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±66.67%</td>
    <td style="white-space: nowrap; text-align: right">5.44 μs</td>
    <td style="white-space: nowrap; text-align: right">23.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">134.43 K</td>
    <td style="white-space: nowrap; text-align: right">7.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±70.85%</td>
    <td style="white-space: nowrap; text-align: right">5.08 μs</td>
    <td style="white-space: nowrap; text-align: right">18.48 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">106.46 K</td>
    <td style="white-space: nowrap; text-align: right">9.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±45.15%</td>
    <td style="white-space: nowrap; text-align: right">8.10 μs</td>
    <td style="white-space: nowrap; text-align: right">24.50 μs</td>
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
    <td style="white-space: nowrap;text-align: right">171.78 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">142.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">139.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">134.43 K</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">106.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.61x</td>
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
    <td style="white-space: nowrap">2.20 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">1.45 KB</td>
    <td>0.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">2.14 KB</td>
    <td>0.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">2.14 KB</td>
    <td>0.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">2.09 KB</td>
    <td>0.95x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">169.14 K</td>
    <td style="white-space: nowrap; text-align: right">5.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.10%</td>
    <td style="white-space: nowrap; text-align: right">5.84 μs</td>
    <td style="white-space: nowrap; text-align: right">6.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">137.73 K</td>
    <td style="white-space: nowrap; text-align: right">7.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±55.53%</td>
    <td style="white-space: nowrap; text-align: right">6.21 μs</td>
    <td style="white-space: nowrap; text-align: right">22.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">136.31 K</td>
    <td style="white-space: nowrap; text-align: right">7.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.20%</td>
    <td style="white-space: nowrap; text-align: right">6.08 μs</td>
    <td style="white-space: nowrap; text-align: right">22.75 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">116.58 K</td>
    <td style="white-space: nowrap; text-align: right">8.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±62.34%</td>
    <td style="white-space: nowrap; text-align: right">6.67 μs</td>
    <td style="white-space: nowrap; text-align: right">25.74 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">94.02 K</td>
    <td style="white-space: nowrap; text-align: right">10.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±40.37%</td>
    <td style="white-space: nowrap; text-align: right">9.08 μs</td>
    <td style="white-space: nowrap; text-align: right">22.49 μs</td>
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
    <td style="white-space: nowrap;text-align: right">169.14 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">137.73 K</td>
    <td style="white-space: nowrap; text-align: right">1.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">136.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">116.58 K</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">94.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.8x</td>
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
    <td style="white-space: nowrap">3.65 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.65 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">2.62 KB</td>
    <td>0.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.70 KB</td>
    <td>1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">3.13 KB</td>
    <td>0.86x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">133.44 K</td>
    <td style="white-space: nowrap; text-align: right">7.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.70%</td>
    <td style="white-space: nowrap; text-align: right">7.51 μs</td>
    <td style="white-space: nowrap; text-align: right">7.97 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">114.94 K</td>
    <td style="white-space: nowrap; text-align: right">8.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±55.45%</td>
    <td style="white-space: nowrap; text-align: right">6.71 μs</td>
    <td style="white-space: nowrap; text-align: right">20.94 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">106.61 K</td>
    <td style="white-space: nowrap; text-align: right">9.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.40%</td>
    <td style="white-space: nowrap; text-align: right">6.95 μs</td>
    <td style="white-space: nowrap; text-align: right">20.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">98.45 K</td>
    <td style="white-space: nowrap; text-align: right">10.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±67.35%</td>
    <td style="white-space: nowrap; text-align: right">6.84 μs</td>
    <td style="white-space: nowrap; text-align: right">27.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">84.65 K</td>
    <td style="white-space: nowrap; text-align: right">11.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±42.95%</td>
    <td style="white-space: nowrap; text-align: right">10.11 μs</td>
    <td style="white-space: nowrap; text-align: right">26.94 μs</td>
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
    <td style="white-space: nowrap;text-align: right">133.44 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">114.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">106.61 K</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">98.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">84.65 K</td>
    <td style="white-space: nowrap; text-align: right">1.58x</td>
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
    <td style="white-space: nowrap">3.59 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">3.53 KB</td>
    <td>0.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.53 KB</td>
    <td>0.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">2.63 KB</td>
    <td>0.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">3.41 KB</td>
    <td>0.95x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">63.92 K</td>
    <td style="white-space: nowrap; text-align: right">15.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.17%</td>
    <td style="white-space: nowrap; text-align: right">14.98 μs</td>
    <td style="white-space: nowrap; text-align: right">28.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">62.25 K</td>
    <td style="white-space: nowrap; text-align: right">16.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.03%</td>
    <td style="white-space: nowrap; text-align: right">15.53 μs</td>
    <td style="white-space: nowrap; text-align: right">27.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">58.83 K</td>
    <td style="white-space: nowrap; text-align: right">17.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±29.40%</td>
    <td style="white-space: nowrap; text-align: right">15.03 μs</td>
    <td style="white-space: nowrap; text-align: right">31.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">52.38 K</td>
    <td style="white-space: nowrap; text-align: right">19.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±39.71%</td>
    <td style="white-space: nowrap; text-align: right">16.06 μs</td>
    <td style="white-space: nowrap; text-align: right">42.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">50.87 K</td>
    <td style="white-space: nowrap; text-align: right">19.66 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.66%</td>
    <td style="white-space: nowrap; text-align: right">18.39 μs</td>
    <td style="white-space: nowrap; text-align: right">38.50 μs</td>
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
    <td style="white-space: nowrap;text-align: right">63.92 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">62.25 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">58.83 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">52.38 K</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">50.87 K</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
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
    <td style="white-space: nowrap">3.51 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">5.28 KB</td>
    <td>1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">5.28 KB</td>
    <td>1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">5.34 KB</td>
    <td>1.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">4.60 KB</td>
    <td>1.31x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">56.14 K</td>
    <td style="white-space: nowrap; text-align: right">17.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.88%</td>
    <td style="white-space: nowrap; text-align: right">17.24 μs</td>
    <td style="white-space: nowrap; text-align: right">26.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">53.43 K</td>
    <td style="white-space: nowrap; text-align: right">18.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.06%</td>
    <td style="white-space: nowrap; text-align: right">18.04 μs</td>
    <td style="white-space: nowrap; text-align: right">31.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">51.87 K</td>
    <td style="white-space: nowrap; text-align: right">19.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±33.11%</td>
    <td style="white-space: nowrap; text-align: right">17.15 μs</td>
    <td style="white-space: nowrap; text-align: right">39.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">49.63 K</td>
    <td style="white-space: nowrap; text-align: right">20.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±46.87%</td>
    <td style="white-space: nowrap; text-align: right">17.19 μs</td>
    <td style="white-space: nowrap; text-align: right">52.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">33.07 K</td>
    <td style="white-space: nowrap; text-align: right">30.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±62.25%</td>
    <td style="white-space: nowrap; text-align: right">21.12 μs</td>
    <td style="white-space: nowrap; text-align: right">86.14 μs</td>
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
    <td style="white-space: nowrap;text-align: right">56.14 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">53.43 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">51.87 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">49.63 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">33.07 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.62 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.63 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">3.55 KB</td>
    <td>0.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">3.62 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">4.48 KB</td>
    <td>1.24x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">56.37 K</td>
    <td style="white-space: nowrap; text-align: right">17.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.94%</td>
    <td style="white-space: nowrap; text-align: right">16.95 μs</td>
    <td style="white-space: nowrap; text-align: right">28.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">54.65 K</td>
    <td style="white-space: nowrap; text-align: right">18.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.56%</td>
    <td style="white-space: nowrap; text-align: right">18.11 μs</td>
    <td style="white-space: nowrap; text-align: right">20.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">53.20 K</td>
    <td style="white-space: nowrap; text-align: right">18.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.26%</td>
    <td style="white-space: nowrap; text-align: right">17.52 μs</td>
    <td style="white-space: nowrap; text-align: right">29.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">43.36 K</td>
    <td style="white-space: nowrap; text-align: right">23.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±27.46%</td>
    <td style="white-space: nowrap; text-align: right">21.05 μs</td>
    <td style="white-space: nowrap; text-align: right">44.71 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">39.43 K</td>
    <td style="white-space: nowrap; text-align: right">25.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±50.22%</td>
    <td style="white-space: nowrap; text-align: right">17.91 μs</td>
    <td style="white-space: nowrap; text-align: right">50.80 μs</td>
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
    <td style="white-space: nowrap;text-align: right">56.37 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">54.65 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">53.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">43.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">39.43 K</td>
    <td style="white-space: nowrap; text-align: right">1.43x</td>
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
    <td style="white-space: nowrap">8.08 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">8.13 KB</td>
    <td>1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">4.16 KB</td>
    <td>0.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">7.84 KB</td>
    <td>0.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">8.08 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">52.30 K</td>
    <td style="white-space: nowrap; text-align: right">19.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.25%</td>
    <td style="white-space: nowrap; text-align: right">18.11 μs</td>
    <td style="white-space: nowrap; text-align: right">35.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">49.67 K</td>
    <td style="white-space: nowrap; text-align: right">20.13 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.98%</td>
    <td style="white-space: nowrap; text-align: right">19.16 μs</td>
    <td style="white-space: nowrap; text-align: right">31.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">48.74 K</td>
    <td style="white-space: nowrap; text-align: right">20.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±34.96%</td>
    <td style="white-space: nowrap; text-align: right">17.93 μs</td>
    <td style="white-space: nowrap; text-align: right">40.46 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">48.45 K</td>
    <td style="white-space: nowrap; text-align: right">20.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±38.90%</td>
    <td style="white-space: nowrap; text-align: right">17.84 μs</td>
    <td style="white-space: nowrap; text-align: right">47.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">37.26 K</td>
    <td style="white-space: nowrap; text-align: right">26.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±39.12%</td>
    <td style="white-space: nowrap; text-align: right">21.81 μs</td>
    <td style="white-space: nowrap; text-align: right">56.23 μs</td>
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
    <td style="white-space: nowrap;text-align: right">52.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">49.67 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">48.74 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">48.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">37.26 K</td>
    <td style="white-space: nowrap; text-align: right">1.4x</td>
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
    <td style="white-space: nowrap">8.17 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">7.99 KB</td>
    <td>0.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">4.48 KB</td>
    <td>0.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">8.17 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">6.55 KB</td>
    <td>0.8x</td>
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
    <td style="white-space: nowrap; text-align: right">32315.75</td>
    <td style="white-space: nowrap; text-align: right">0.0309 ms</td>
    <td style="white-space: nowrap; text-align: right">±30.26%</td>
    <td style="white-space: nowrap; text-align: right">0.0268 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0591 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">116.51</td>
    <td style="white-space: nowrap; text-align: right">8.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.90%</td>
    <td style="white-space: nowrap; text-align: right">0.0266 ms</td>
    <td style="white-space: nowrap; text-align: right">119.79 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">116.39</td>
    <td style="white-space: nowrap; text-align: right">8.59 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.58%</td>
    <td style="white-space: nowrap; text-align: right">0.0391 ms</td>
    <td style="white-space: nowrap; text-align: right">119.81 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">115.94</td>
    <td style="white-space: nowrap; text-align: right">8.63 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.60%</td>
    <td style="white-space: nowrap; text-align: right">0.0295 ms</td>
    <td style="white-space: nowrap; text-align: right">120.28 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">115.38</td>
    <td style="white-space: nowrap; text-align: right">8.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.56%</td>
    <td style="white-space: nowrap; text-align: right">0.0331 ms</td>
    <td style="white-space: nowrap; text-align: right">120.85 ms</td>
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
    <td style="white-space: nowrap;text-align: right">32315.75</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">116.51</td>
    <td style="white-space: nowrap; text-align: right">277.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">116.39</td>
    <td style="white-space: nowrap; text-align: right">277.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">115.94</td>
    <td style="white-space: nowrap; text-align: right">278.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">115.38</td>
    <td style="white-space: nowrap; text-align: right">280.08x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">17.13 KB</td>
    <td>2.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">17.13 KB</td>
    <td>2.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">12.59 KB</td>
    <td>1.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">11.09 KB</td>
    <td>1.41x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">123.86</td>
    <td style="white-space: nowrap; text-align: right">8.07 ms</td>
    <td style="white-space: nowrap; text-align: right">±385.35%</td>
    <td style="white-space: nowrap; text-align: right">0.0392 ms</td>
    <td style="white-space: nowrap; text-align: right">120.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">123.68</td>
    <td style="white-space: nowrap; text-align: right">8.09 ms</td>
    <td style="white-space: nowrap; text-align: right">±384.70%</td>
    <td style="white-space: nowrap; text-align: right">0.0499 ms</td>
    <td style="white-space: nowrap; text-align: right">120.52 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">123.26</td>
    <td style="white-space: nowrap; text-align: right">8.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±385.30%</td>
    <td style="white-space: nowrap; text-align: right">0.0361 ms</td>
    <td style="white-space: nowrap; text-align: right">121.11 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">123.23</td>
    <td style="white-space: nowrap; text-align: right">8.12 ms</td>
    <td style="white-space: nowrap; text-align: right">±385.06%</td>
    <td style="white-space: nowrap; text-align: right">0.0379 ms</td>
    <td style="white-space: nowrap; text-align: right">121.07 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">113.08</td>
    <td style="white-space: nowrap; text-align: right">8.84 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.15%</td>
    <td style="white-space: nowrap; text-align: right">0.0414 ms</td>
    <td style="white-space: nowrap; text-align: right">123.19 ms</td>
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
    <td style="white-space: nowrap;text-align: right">123.86</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">123.68</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">123.26</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">123.23</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">113.08</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
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
    <td style="white-space: nowrap">18.37 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">13.13 KB</td>
    <td>0.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">11.28 KB</td>
    <td>0.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">18.31 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">18.31 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">124.68</td>
    <td style="white-space: nowrap; text-align: right">8.02 ms</td>
    <td style="white-space: nowrap; text-align: right">±384.50%</td>
    <td style="white-space: nowrap; text-align: right">0.0512 ms</td>
    <td style="white-space: nowrap; text-align: right">119.49 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">123.42</td>
    <td style="white-space: nowrap; text-align: right">8.10 ms</td>
    <td style="white-space: nowrap; text-align: right">±384.80%</td>
    <td style="white-space: nowrap; text-align: right">0.0473 ms</td>
    <td style="white-space: nowrap; text-align: right">120.80 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">123.04</td>
    <td style="white-space: nowrap; text-align: right">8.13 ms</td>
    <td style="white-space: nowrap; text-align: right">±381.66%</td>
    <td style="white-space: nowrap; text-align: right">0.0568 ms</td>
    <td style="white-space: nowrap; text-align: right">120.26 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">115.31</td>
    <td style="white-space: nowrap; text-align: right">8.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±371.81%</td>
    <td style="white-space: nowrap; text-align: right">0.0485 ms</td>
    <td style="white-space: nowrap; text-align: right">120.70 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">114.34</td>
    <td style="white-space: nowrap; text-align: right">8.75 ms</td>
    <td style="white-space: nowrap; text-align: right">±371.83%</td>
    <td style="white-space: nowrap; text-align: right">0.0485 ms</td>
    <td style="white-space: nowrap; text-align: right">121.73 ms</td>
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
    <td style="white-space: nowrap;text-align: right">124.68</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">123.42</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">123.04</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">115.31</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">114.34</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">30.78 KB</td>
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

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">25.16 KB</td>
    <td>0.82x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">16.30 K</td>
    <td style="white-space: nowrap; text-align: right">61.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.13%</td>
    <td style="white-space: nowrap; text-align: right">58.29 μs</td>
    <td style="white-space: nowrap; text-align: right">73.30 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">15.91 K</td>
    <td style="white-space: nowrap; text-align: right">62.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.33%</td>
    <td style="white-space: nowrap; text-align: right">57.77 μs</td>
    <td style="white-space: nowrap; text-align: right">120.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">14.81 K</td>
    <td style="white-space: nowrap; text-align: right">67.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±27.38%</td>
    <td style="white-space: nowrap; text-align: right">58.65 μs</td>
    <td style="white-space: nowrap; text-align: right">122.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">14.17 K</td>
    <td style="white-space: nowrap; text-align: right">70.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.03%</td>
    <td style="white-space: nowrap; text-align: right">67.83 μs</td>
    <td style="white-space: nowrap; text-align: right">80.71 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">14.09 K</td>
    <td style="white-space: nowrap; text-align: right">70.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.20%</td>
    <td style="white-space: nowrap; text-align: right">64.36 μs</td>
    <td style="white-space: nowrap; text-align: right">129.32 μs</td>
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
    <td style="white-space: nowrap;text-align: right">16.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">15.91 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">14.81 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">14.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">14.09 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">29.94 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">18.22 KB</td>
    <td>0.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">29.94 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">26.66 KB</td>
    <td>0.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">29.99 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">13.55 K</td>
    <td style="white-space: nowrap; text-align: right">73.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.60%</td>
    <td style="white-space: nowrap; text-align: right">66.14 μs</td>
    <td style="white-space: nowrap; text-align: right">140.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">13.22 K</td>
    <td style="white-space: nowrap; text-align: right">75.66 μs</td>
    <td style="white-space: nowrap; text-align: right">±27.82%</td>
    <td style="white-space: nowrap; text-align: right">67.81 μs</td>
    <td style="white-space: nowrap; text-align: right">151.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">13.20 K</td>
    <td style="white-space: nowrap; text-align: right">75.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.74%</td>
    <td style="white-space: nowrap; text-align: right">68.59 μs</td>
    <td style="white-space: nowrap; text-align: right">161.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">12.59 K</td>
    <td style="white-space: nowrap; text-align: right">79.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±29.18%</td>
    <td style="white-space: nowrap; text-align: right">73.35 μs</td>
    <td style="white-space: nowrap; text-align: right">165.46 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">11.13 K</td>
    <td style="white-space: nowrap; text-align: right">89.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.52%</td>
    <td style="white-space: nowrap; text-align: right">82.77 μs</td>
    <td style="white-space: nowrap; text-align: right">170.74 μs</td>
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
    <td style="white-space: nowrap;text-align: right">13.55 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">13.22 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">13.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">12.59 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">11.13 K</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">21.64 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">35.70 KB</td>
    <td>1.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">35.70 KB</td>
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
    <td style="white-space: nowrap; text-align: right">12.13 K</td>
    <td style="white-space: nowrap; text-align: right">82.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.71%</td>
    <td style="white-space: nowrap; text-align: right">78.73 μs</td>
    <td style="white-space: nowrap; text-align: right">106.84 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">11.93 K</td>
    <td style="white-space: nowrap; text-align: right">83.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.69%</td>
    <td style="white-space: nowrap; text-align: right">77.74 μs</td>
    <td style="white-space: nowrap; text-align: right">153.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">10.68 K</td>
    <td style="white-space: nowrap; text-align: right">93.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.13%</td>
    <td style="white-space: nowrap; text-align: right">89.43 μs</td>
    <td style="white-space: nowrap; text-align: right">134.98 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.33 K</td>
    <td style="white-space: nowrap; text-align: right">96.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.63%</td>
    <td style="white-space: nowrap; text-align: right">90.14 μs</td>
    <td style="white-space: nowrap; text-align: right">174.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.68 K</td>
    <td style="white-space: nowrap; text-align: right">103.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±39.09%</td>
    <td style="white-space: nowrap; text-align: right">88.92 μs</td>
    <td style="white-space: nowrap; text-align: right">207.83 μs</td>
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
    <td style="white-space: nowrap;text-align: right">12.13 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">11.93 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">10.68 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.33 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.68 K</td>
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
    <td style="white-space: nowrap">33.66 KB</td>
<td>&nbsp;</td>
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

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">33.66 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">25 KB</td>
    <td>0.74x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">10.29 K</td>
    <td style="white-space: nowrap; text-align: right">97.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.58%</td>
    <td style="white-space: nowrap; text-align: right">92.12 μs</td>
    <td style="white-space: nowrap; text-align: right">130.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.94 K</td>
    <td style="white-space: nowrap; text-align: right">100.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.67%</td>
    <td style="white-space: nowrap; text-align: right">91.84 μs</td>
    <td style="white-space: nowrap; text-align: right">146.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">9.81 K</td>
    <td style="white-space: nowrap; text-align: right">101.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.18%</td>
    <td style="white-space: nowrap; text-align: right">100.19 μs</td>
    <td style="white-space: nowrap; text-align: right">112.65 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.77 K</td>
    <td style="white-space: nowrap; text-align: right">102.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.91%</td>
    <td style="white-space: nowrap; text-align: right">96.52 μs</td>
    <td style="white-space: nowrap; text-align: right">150.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">9.18 K</td>
    <td style="white-space: nowrap; text-align: right">108.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.32%</td>
    <td style="white-space: nowrap; text-align: right">102.84 μs</td>
    <td style="white-space: nowrap; text-align: right">163.16 μs</td>
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
    <td style="white-space: nowrap;text-align: right">10.29 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">9.81 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.77 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">9.18 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">47.23 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">47.23 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">47.29 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">28.48 KB</td>
    <td>0.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">41.92 KB</td>
    <td>0.89x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">10.17 K</td>
    <td style="white-space: nowrap; text-align: right">98.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.77%</td>
    <td style="white-space: nowrap; text-align: right">98.00 μs</td>
    <td style="white-space: nowrap; text-align: right">106.64 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.65 K</td>
    <td style="white-space: nowrap; text-align: right">103.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.45%</td>
    <td style="white-space: nowrap; text-align: right">100.50 μs</td>
    <td style="white-space: nowrap; text-align: right">145.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">8.89 K</td>
    <td style="white-space: nowrap; text-align: right">112.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.26%</td>
    <td style="white-space: nowrap; text-align: right">107.92 μs</td>
    <td style="white-space: nowrap; text-align: right">159.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">8.84 K</td>
    <td style="white-space: nowrap; text-align: right">113.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.50%</td>
    <td style="white-space: nowrap; text-align: right">99.57 μs</td>
    <td style="white-space: nowrap; text-align: right">195.63 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">8.05 K</td>
    <td style="white-space: nowrap; text-align: right">124.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.55%</td>
    <td style="white-space: nowrap; text-align: right">119.33 μs</td>
    <td style="white-space: nowrap; text-align: right">184.07 μs</td>
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
    <td style="white-space: nowrap;text-align: right">10.17 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.65 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">8.89 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">8.84 K</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">8.05 K</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
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
    <td style="white-space: nowrap">32.02 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">53.11 KB</td>
    <td>1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">53.16 KB</td>
    <td>1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">53.11 KB</td>
    <td>1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">49.70 KB</td>
    <td>1.55x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">8.98 K</td>
    <td style="white-space: nowrap; text-align: right">111.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.34%</td>
    <td style="white-space: nowrap; text-align: right">109.75 μs</td>
    <td style="white-space: nowrap; text-align: right">131.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">8.59 K</td>
    <td style="white-space: nowrap; text-align: right">116.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.20%</td>
    <td style="white-space: nowrap; text-align: right">113.81 μs</td>
    <td style="white-space: nowrap; text-align: right">172.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">8.42 K</td>
    <td style="white-space: nowrap; text-align: right">118.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.82%</td>
    <td style="white-space: nowrap; text-align: right">108.05 μs</td>
    <td style="white-space: nowrap; text-align: right">252.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">7.93 K</td>
    <td style="white-space: nowrap; text-align: right">126.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.11%</td>
    <td style="white-space: nowrap; text-align: right">122.19 μs</td>
    <td style="white-space: nowrap; text-align: right">159.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">6.95 K</td>
    <td style="white-space: nowrap; text-align: right">143.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±33.36%</td>
    <td style="white-space: nowrap; text-align: right">128.44 μs</td>
    <td style="white-space: nowrap; text-align: right">310.75 μs</td>
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
    <td style="white-space: nowrap;text-align: right">8.98 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">8.59 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">8.42 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">7.93 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">6.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
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
    <td style="white-space: nowrap">58.58 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">58.58 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">37.11 KB</td>
    <td>0.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">58.87 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">55.16 KB</td>
    <td>0.94x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">4.74 K</td>
    <td style="white-space: nowrap; text-align: right">211.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.27%</td>
    <td style="white-space: nowrap; text-align: right">209.97 μs</td>
    <td style="white-space: nowrap; text-align: right">228.93 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.61 K</td>
    <td style="white-space: nowrap; text-align: right">216.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.45%</td>
    <td style="white-space: nowrap; text-align: right">209.13 μs</td>
    <td style="white-space: nowrap; text-align: right">323.99 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.08 K</td>
    <td style="white-space: nowrap; text-align: right">245.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.04%</td>
    <td style="white-space: nowrap; text-align: right">223.01 μs</td>
    <td style="white-space: nowrap; text-align: right">373.80 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.90 K</td>
    <td style="white-space: nowrap; text-align: right">256.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.25%</td>
    <td style="white-space: nowrap; text-align: right">231.86 μs</td>
    <td style="white-space: nowrap; text-align: right">464.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.82 K</td>
    <td style="white-space: nowrap; text-align: right">262.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.17%</td>
    <td style="white-space: nowrap; text-align: right">248.53 μs</td>
    <td style="white-space: nowrap; text-align: right">488.39 μs</td>
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
    <td style="white-space: nowrap;text-align: right">4.74 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.61 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.08 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.90 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.82 K</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
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
    <td style="white-space: nowrap">102.14 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">149.02 KB</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">149.02 KB</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">149.35 KB</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">139.45 KB</td>
    <td>1.37x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">2.93 K</td>
    <td style="white-space: nowrap; text-align: right">341.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.99%</td>
    <td style="white-space: nowrap; text-align: right">328.57 μs</td>
    <td style="white-space: nowrap; text-align: right">409.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.86 K</td>
    <td style="white-space: nowrap; text-align: right">349.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.75%</td>
    <td style="white-space: nowrap; text-align: right">346.02 μs</td>
    <td style="white-space: nowrap; text-align: right">379.55 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.82 K</td>
    <td style="white-space: nowrap; text-align: right">354.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.04%</td>
    <td style="white-space: nowrap; text-align: right">327.75 μs</td>
    <td style="white-space: nowrap; text-align: right">515.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.78 K</td>
    <td style="white-space: nowrap; text-align: right">360.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.94%</td>
    <td style="white-space: nowrap; text-align: right">334.30 μs</td>
    <td style="white-space: nowrap; text-align: right">607.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.62 K</td>
    <td style="white-space: nowrap; text-align: right">382.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.39%</td>
    <td style="white-space: nowrap; text-align: right">371.64 μs</td>
    <td style="white-space: nowrap; text-align: right">430.50 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2.93 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.86 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.82 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.78 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.62 K</td>
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
    <td style="white-space: nowrap">212.73 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">249.35 KB</td>
    <td>1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">212.73 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">148.58 KB</td>
    <td>0.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">230.21 KB</td>
    <td>1.08x</td>
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
    <td style="white-space: nowrap; text-align: right">2.24 K</td>
    <td style="white-space: nowrap; text-align: right">445.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.69%</td>
    <td style="white-space: nowrap; text-align: right">436.27 μs</td>
    <td style="white-space: nowrap; text-align: right">505.63 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.24 K</td>
    <td style="white-space: nowrap; text-align: right">446.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.48%</td>
    <td style="white-space: nowrap; text-align: right">429.60 μs</td>
    <td style="white-space: nowrap; text-align: right">518.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.03 K</td>
    <td style="white-space: nowrap; text-align: right">492.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.67%</td>
    <td style="white-space: nowrap; text-align: right">467.26 μs</td>
    <td style="white-space: nowrap; text-align: right">753.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.00 K</td>
    <td style="white-space: nowrap; text-align: right">499.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.81%</td>
    <td style="white-space: nowrap; text-align: right">467.04 μs</td>
    <td style="white-space: nowrap; text-align: right">812.30 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.93 K</td>
    <td style="white-space: nowrap; text-align: right">518.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.09%</td>
    <td style="white-space: nowrap; text-align: right">498.95 μs</td>
    <td style="white-space: nowrap; text-align: right">679.38 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2.24 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.03 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.00 K</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.93 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">302.55 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">302.55 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">297.12 KB</td>
    <td>0.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">207.52 KB</td>
    <td>0.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">255.30 KB</td>
    <td>0.84x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.81 K</td>
    <td style="white-space: nowrap; text-align: right">553.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.04%</td>
    <td style="white-space: nowrap; text-align: right">549.20 μs</td>
    <td style="white-space: nowrap; text-align: right">598.08 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.74 K</td>
    <td style="white-space: nowrap; text-align: right">574.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.54%</td>
    <td style="white-space: nowrap; text-align: right">543.26 μs</td>
    <td style="white-space: nowrap; text-align: right">826.87 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.69 K</td>
    <td style="white-space: nowrap; text-align: right">590.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.70%</td>
    <td style="white-space: nowrap; text-align: right">587.19 μs</td>
    <td style="white-space: nowrap; text-align: right">632.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.66 K</td>
    <td style="white-space: nowrap; text-align: right">602.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.09%</td>
    <td style="white-space: nowrap; text-align: right">574.08 μs</td>
    <td style="white-space: nowrap; text-align: right">882.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.51 K</td>
    <td style="white-space: nowrap; text-align: right">660.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.19%</td>
    <td style="white-space: nowrap; text-align: right">633.85 μs</td>
    <td style="white-space: nowrap; text-align: right">912.27 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.81 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.74 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.69 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.51 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">406.86 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">406.86 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">393.40 KB</td>
    <td>0.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">246.98 KB</td>
    <td>0.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">378.78 KB</td>
    <td>0.93x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.48 K</td>
    <td style="white-space: nowrap; text-align: right">676.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.27%</td>
    <td style="white-space: nowrap; text-align: right">648.41 μs</td>
    <td style="white-space: nowrap; text-align: right">993.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.41 K</td>
    <td style="white-space: nowrap; text-align: right">711.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.58%</td>
    <td style="white-space: nowrap; text-align: right">678.53 μs</td>
    <td style="white-space: nowrap; text-align: right">1074.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.36 K</td>
    <td style="white-space: nowrap; text-align: right">737.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.71%</td>
    <td style="white-space: nowrap; text-align: right">699.99 μs</td>
    <td style="white-space: nowrap; text-align: right">1119.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.30 K</td>
    <td style="white-space: nowrap; text-align: right">768.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.94%</td>
    <td style="white-space: nowrap; text-align: right">769.17 μs</td>
    <td style="white-space: nowrap; text-align: right">839.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.29 K</td>
    <td style="white-space: nowrap; text-align: right">772.69 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.65%</td>
    <td style="white-space: nowrap; text-align: right">722.67 μs</td>
    <td style="white-space: nowrap; text-align: right">1443.42 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.48 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.41 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
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
    <td style="white-space: nowrap">275.60 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">438.98 KB</td>
    <td>1.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">438.98 KB</td>
    <td>1.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">486.52 KB</td>
    <td>1.77x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">435.90 KB</td>
    <td>1.58x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.25 K</td>
    <td style="white-space: nowrap; text-align: right">799.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.99%</td>
    <td style="white-space: nowrap; text-align: right">782.50 μs</td>
    <td style="white-space: nowrap; text-align: right">957.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.24 K</td>
    <td style="white-space: nowrap; text-align: right">804.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.91%</td>
    <td style="white-space: nowrap; text-align: right">794.47 μs</td>
    <td style="white-space: nowrap; text-align: right">1126.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.16 K</td>
    <td style="white-space: nowrap; text-align: right">862.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.42%</td>
    <td style="white-space: nowrap; text-align: right">782.24 μs</td>
    <td style="white-space: nowrap; text-align: right">1198.73 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.10 K</td>
    <td style="white-space: nowrap; text-align: right">913.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.63%</td>
    <td style="white-space: nowrap; text-align: right">831.77 μs</td>
    <td style="white-space: nowrap; text-align: right">1553.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.08 K</td>
    <td style="white-space: nowrap; text-align: right">923.69 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.66%</td>
    <td style="white-space: nowrap; text-align: right">890.05 μs</td>
    <td style="white-space: nowrap; text-align: right">1276.88 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.25 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.16 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.08 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">480.71 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">384.67 KB</td>
    <td>0.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">480.71 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">530.40 KB</td>
    <td>1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">511.23 KB</td>
    <td>1.06x</td>
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
    <td style="white-space: nowrap; text-align: right">1.12 K</td>
    <td style="white-space: nowrap; text-align: right">896.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.78%</td>
    <td style="white-space: nowrap; text-align: right">888.20 μs</td>
    <td style="white-space: nowrap; text-align: right">993.46 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.10 K</td>
    <td style="white-space: nowrap; text-align: right">909.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.29%</td>
    <td style="white-space: nowrap; text-align: right">909.51 μs</td>
    <td style="white-space: nowrap; text-align: right">1109.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.03 K</td>
    <td style="white-space: nowrap; text-align: right">972.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.93%</td>
    <td style="white-space: nowrap; text-align: right">891.50 μs</td>
    <td style="white-space: nowrap; text-align: right">1308.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.02 K</td>
    <td style="white-space: nowrap; text-align: right">977.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.00%</td>
    <td style="white-space: nowrap; text-align: right">963.73 μs</td>
    <td style="white-space: nowrap; text-align: right">1238.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">0.95 K</td>
    <td style="white-space: nowrap; text-align: right">1055.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.24%</td>
    <td style="white-space: nowrap; text-align: right">1039.39 μs</td>
    <td style="white-space: nowrap; text-align: right">1363.86 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.12 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.03 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">0.95 K</td>
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
    <td style="white-space: nowrap">590.18 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">407.09 KB</td>
    <td>0.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">590.18 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">571.88 KB</td>
    <td>0.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">543.66 KB</td>
    <td>0.92x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1008.37</td>
    <td style="white-space: nowrap; text-align: right">0.99 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.05%</td>
    <td style="white-space: nowrap; text-align: right">0.99 ms</td>
    <td style="white-space: nowrap; text-align: right">1.06 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">993.86</td>
    <td style="white-space: nowrap; text-align: right">1.01 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.71%</td>
    <td style="white-space: nowrap; text-align: right">1.00 ms</td>
    <td style="white-space: nowrap; text-align: right">1.11 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">945.39</td>
    <td style="white-space: nowrap; text-align: right">1.06 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.08%</td>
    <td style="white-space: nowrap; text-align: right">1.02 ms</td>
    <td style="white-space: nowrap; text-align: right">1.29 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">900.09</td>
    <td style="white-space: nowrap; text-align: right">1.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.63%</td>
    <td style="white-space: nowrap; text-align: right">1.09 ms</td>
    <td style="white-space: nowrap; text-align: right">1.30 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">807.01</td>
    <td style="white-space: nowrap; text-align: right">1.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.89%</td>
    <td style="white-space: nowrap; text-align: right">1.23 ms</td>
    <td style="white-space: nowrap; text-align: right">1.47 ms</td>
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
    <td style="white-space: nowrap;text-align: right">1008.37</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">993.86</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">945.39</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">900.09</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">807.01</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">477.29 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">622.17 KB</td>
    <td>1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">622.17 KB</td>
    <td>1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">630.59 KB</td>
    <td>1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">726.45 KB</td>
    <td>1.52x</td>
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
    <td style="white-space: nowrap; text-align: right">898.83</td>
    <td style="white-space: nowrap; text-align: right">1.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.75%</td>
    <td style="white-space: nowrap; text-align: right">1.09 ms</td>
    <td style="white-space: nowrap; text-align: right">1.36 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">876.77</td>
    <td style="white-space: nowrap; text-align: right">1.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.82%</td>
    <td style="white-space: nowrap; text-align: right">1.12 ms</td>
    <td style="white-space: nowrap; text-align: right">1.50 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">837.92</td>
    <td style="white-space: nowrap; text-align: right">1.19 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.02%</td>
    <td style="white-space: nowrap; text-align: right">1.15 ms</td>
    <td style="white-space: nowrap; text-align: right">1.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">766.92</td>
    <td style="white-space: nowrap; text-align: right">1.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.59%</td>
    <td style="white-space: nowrap; text-align: right">1.28 ms</td>
    <td style="white-space: nowrap; text-align: right">1.51 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">758.06</td>
    <td style="white-space: nowrap; text-align: right">1.32 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.49%</td>
    <td style="white-space: nowrap; text-align: right">1.32 ms</td>
    <td style="white-space: nowrap; text-align: right">1.45 ms</td>
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
    <td style="white-space: nowrap;text-align: right">898.83</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">876.77</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">837.92</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">766.92</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">758.06</td>
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
    <td style="white-space: nowrap">496.49 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">834.28 KB</td>
    <td>1.68x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">437.39</td>
    <td style="white-space: nowrap; text-align: right">2.29 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.53%</td>
    <td style="white-space: nowrap; text-align: right">2.21 ms</td>
    <td style="white-space: nowrap; text-align: right">2.63 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">435.33</td>
    <td style="white-space: nowrap; text-align: right">2.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.37%</td>
    <td style="white-space: nowrap; text-align: right">2.24 ms</td>
    <td style="white-space: nowrap; text-align: right">2.59 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">434.93</td>
    <td style="white-space: nowrap; text-align: right">2.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.38%</td>
    <td style="white-space: nowrap; text-align: right">2.26 ms</td>
    <td style="white-space: nowrap; text-align: right">2.74 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">393.19</td>
    <td style="white-space: nowrap; text-align: right">2.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.86%</td>
    <td style="white-space: nowrap; text-align: right">2.48 ms</td>
    <td style="white-space: nowrap; text-align: right">2.86 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">376.54</td>
    <td style="white-space: nowrap; text-align: right">2.66 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.29%</td>
    <td style="white-space: nowrap; text-align: right">2.60 ms</td>
    <td style="white-space: nowrap; text-align: right">3.04 ms</td>
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
    <td style="white-space: nowrap;text-align: right">437.39</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">435.33</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">434.93</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">393.19</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">376.54</td>
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
    <td style="white-space: nowrap">1.01 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">1.50 MB</td>
    <td>1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">1.50 MB</td>
    <td>1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">1.63 MB</td>
    <td>1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">1.50 MB</td>
    <td>1.49x</td>
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
    <td style="white-space: nowrap; text-align: right">289.62</td>
    <td style="white-space: nowrap; text-align: right">3.45 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.42%</td>
    <td style="white-space: nowrap; text-align: right">3.43 ms</td>
    <td style="white-space: nowrap; text-align: right">3.81 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">284.74</td>
    <td style="white-space: nowrap; text-align: right">3.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.19%</td>
    <td style="white-space: nowrap; text-align: right">3.47 ms</td>
    <td style="white-space: nowrap; text-align: right">4.09 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">278.19</td>
    <td style="white-space: nowrap; text-align: right">3.59 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.00%</td>
    <td style="white-space: nowrap; text-align: right">3.45 ms</td>
    <td style="white-space: nowrap; text-align: right">5.71 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">265.01</td>
    <td style="white-space: nowrap; text-align: right">3.77 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.56%</td>
    <td style="white-space: nowrap; text-align: right">3.80 ms</td>
    <td style="white-space: nowrap; text-align: right">4.14 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">248.91</td>
    <td style="white-space: nowrap; text-align: right">4.02 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.41%</td>
    <td style="white-space: nowrap; text-align: right">4.00 ms</td>
    <td style="white-space: nowrap; text-align: right">4.33 ms</td>
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
    <td style="white-space: nowrap;text-align: right">289.62</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">284.74</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">278.19</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">265.01</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">248.91</td>
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
    <td style="white-space: nowrap">1.42 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">2.46 MB</td>
    <td>1.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap; text-align: right">223.67</td>
    <td style="white-space: nowrap; text-align: right">4.47 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.90%</td>
    <td style="white-space: nowrap; text-align: right">4.42 ms</td>
    <td style="white-space: nowrap; text-align: right">4.90 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">217.54</td>
    <td style="white-space: nowrap; text-align: right">4.60 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.85%</td>
    <td style="white-space: nowrap; text-align: right">4.54 ms</td>
    <td style="white-space: nowrap; text-align: right">4.97 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">210.26</td>
    <td style="white-space: nowrap; text-align: right">4.76 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.66%</td>
    <td style="white-space: nowrap; text-align: right">4.73 ms</td>
    <td style="white-space: nowrap; text-align: right">5.10 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">200.26</td>
    <td style="white-space: nowrap; text-align: right">4.99 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.46%</td>
    <td style="white-space: nowrap; text-align: right">5.04 ms</td>
    <td style="white-space: nowrap; text-align: right">5.41 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">188.81</td>
    <td style="white-space: nowrap; text-align: right">5.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.72%</td>
    <td style="white-space: nowrap; text-align: right">5.22 ms</td>
    <td style="white-space: nowrap; text-align: right">5.66 ms</td>
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
    <td style="white-space: nowrap;text-align: right">223.67</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">217.54</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">210.26</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">200.26</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">188.81</td>
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
    <td style="white-space: nowrap">2.10 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.27 MB</td>
    <td>1.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">178.32</td>
    <td style="white-space: nowrap; text-align: right">5.61 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.37%</td>
    <td style="white-space: nowrap; text-align: right">5.59 ms</td>
    <td style="white-space: nowrap; text-align: right">5.89 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">168.91</td>
    <td style="white-space: nowrap; text-align: right">5.92 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.94%</td>
    <td style="white-space: nowrap; text-align: right">5.86 ms</td>
    <td style="white-space: nowrap; text-align: right">6.23 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">168.79</td>
    <td style="white-space: nowrap; text-align: right">5.92 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.20%</td>
    <td style="white-space: nowrap; text-align: right">5.95 ms</td>
    <td style="white-space: nowrap; text-align: right">6.27 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">159.64</td>
    <td style="white-space: nowrap; text-align: right">6.26 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.05%</td>
    <td style="white-space: nowrap; text-align: right">6.31 ms</td>
    <td style="white-space: nowrap; text-align: right">6.79 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">148.09</td>
    <td style="white-space: nowrap; text-align: right">6.75 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.22%</td>
    <td style="white-space: nowrap; text-align: right">6.74 ms</td>
    <td style="white-space: nowrap; text-align: right">6.95 ms</td>
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
    <td style="white-space: nowrap;text-align: right">178.32</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">168.91</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">168.79</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">159.64</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">148.09</td>
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
    <td style="white-space: nowrap">2.78 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">3.66 MB</td>
    <td>1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.66 MB</td>
    <td>1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.87 MB</td>
    <td>1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">3.33 MB</td>
    <td>1.2x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">143.20</td>
    <td style="white-space: nowrap; text-align: right">6.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.74%</td>
    <td style="white-space: nowrap; text-align: right">7.04 ms</td>
    <td style="white-space: nowrap; text-align: right">7.46 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">142.25</td>
    <td style="white-space: nowrap; text-align: right">7.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.70%</td>
    <td style="white-space: nowrap; text-align: right">7.04 ms</td>
    <td style="white-space: nowrap; text-align: right">7.24 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">138.69</td>
    <td style="white-space: nowrap; text-align: right">7.21 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.06%</td>
    <td style="white-space: nowrap; text-align: right">7.16 ms</td>
    <td style="white-space: nowrap; text-align: right">7.68 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">131.61</td>
    <td style="white-space: nowrap; text-align: right">7.60 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.73%</td>
    <td style="white-space: nowrap; text-align: right">7.51 ms</td>
    <td style="white-space: nowrap; text-align: right">9.86 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">122.64</td>
    <td style="white-space: nowrap; text-align: right">8.15 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.35%</td>
    <td style="white-space: nowrap; text-align: right">8.21 ms</td>
    <td style="white-space: nowrap; text-align: right">8.40 ms</td>
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
    <td style="white-space: nowrap;text-align: right">143.20</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">142.25</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">138.69</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">131.61</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">122.64</td>
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
    <td style="white-space: nowrap">3.29 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">4.31 MB</td>
    <td>1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">4.31 MB</td>
    <td>1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">4.67 MB</td>
    <td>1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">4.11 MB</td>
    <td>1.25x</td>
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
    <td style="white-space: nowrap; text-align: right">123.24</td>
    <td style="white-space: nowrap; text-align: right">8.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.43%</td>
    <td style="white-space: nowrap; text-align: right">8.14 ms</td>
    <td style="white-space: nowrap; text-align: right">8.36 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">121.96</td>
    <td style="white-space: nowrap; text-align: right">8.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.45%</td>
    <td style="white-space: nowrap; text-align: right">8.19 ms</td>
    <td style="white-space: nowrap; text-align: right">8.46 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">120.49</td>
    <td style="white-space: nowrap; text-align: right">8.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.47%</td>
    <td style="white-space: nowrap; text-align: right">8.29 ms</td>
    <td style="white-space: nowrap; text-align: right">8.67 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">113.71</td>
    <td style="white-space: nowrap; text-align: right">8.79 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.38%</td>
    <td style="white-space: nowrap; text-align: right">8.82 ms</td>
    <td style="white-space: nowrap; text-align: right">8.96 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">103.88</td>
    <td style="white-space: nowrap; text-align: right">9.63 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.02%</td>
    <td style="white-space: nowrap; text-align: right">9.57 ms</td>
    <td style="white-space: nowrap; text-align: right">10.41 ms</td>
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
    <td style="white-space: nowrap;text-align: right">123.24</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">121.96</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">120.49</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">113.71</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">103.88</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">5.95 MB</td>
    <td>1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">5.95 MB</td>
    <td>1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">5.09 MB</td>
    <td>1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">5.04 MB</td>
    <td>1.42x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">108.73</td>
    <td style="white-space: nowrap; text-align: right">9.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.54%</td>
    <td style="white-space: nowrap; text-align: right">9.23 ms</td>
    <td style="white-space: nowrap; text-align: right">9.40 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">106.30</td>
    <td style="white-space: nowrap; text-align: right">9.41 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.52%</td>
    <td style="white-space: nowrap; text-align: right">9.40 ms</td>
    <td style="white-space: nowrap; text-align: right">9.63 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">103.71</td>
    <td style="white-space: nowrap; text-align: right">9.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.57%</td>
    <td style="white-space: nowrap; text-align: right">9.60 ms</td>
    <td style="white-space: nowrap; text-align: right">10.42 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">93.84</td>
    <td style="white-space: nowrap; text-align: right">10.66 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.90%</td>
    <td style="white-space: nowrap; text-align: right">10.13 ms</td>
    <td style="white-space: nowrap; text-align: right">16.86 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">90.70</td>
    <td style="white-space: nowrap; text-align: right">11.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.74%</td>
    <td style="white-space: nowrap; text-align: right">10.92 ms</td>
    <td style="white-space: nowrap; text-align: right">11.70 ms</td>
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
    <td style="white-space: nowrap;text-align: right">108.73</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">106.30</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">103.71</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">93.84</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">90.70</td>
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
    <td style="white-space: nowrap">4.31 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">6.40 MB</td>
    <td>1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">6.40 MB</td>
    <td>1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">6.74 MB</td>
    <td>1.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">5.84 MB</td>
    <td>1.36x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">94.16</td>
    <td style="white-space: nowrap; text-align: right">10.62 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.70%</td>
    <td style="white-space: nowrap; text-align: right">10.52 ms</td>
    <td style="white-space: nowrap; text-align: right">11.21 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">92.87</td>
    <td style="white-space: nowrap; text-align: right">10.77 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.41%</td>
    <td style="white-space: nowrap; text-align: right">10.71 ms</td>
    <td style="white-space: nowrap; text-align: right">11.29 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">92.11</td>
    <td style="white-space: nowrap; text-align: right">10.86 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.79%</td>
    <td style="white-space: nowrap; text-align: right">10.82 ms</td>
    <td style="white-space: nowrap; text-align: right">11.22 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">85.96</td>
    <td style="white-space: nowrap; text-align: right">11.63 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.86%</td>
    <td style="white-space: nowrap; text-align: right">11.56 ms</td>
    <td style="white-space: nowrap; text-align: right">11.95 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">80.20</td>
    <td style="white-space: nowrap; text-align: right">12.47 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.87%</td>
    <td style="white-space: nowrap; text-align: right">12.45 ms</td>
    <td style="white-space: nowrap; text-align: right">13.24 ms</td>
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
    <td style="white-space: nowrap;text-align: right">94.16</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">92.87</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">92.11</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">85.96</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">80.20</td>
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
    <td style="white-space: nowrap">5.15 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">6.51 MB</td>
    <td>1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">6.51 MB</td>
    <td>1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">6.52 MB</td>
    <td>1.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">7.07 MB</td>
    <td>1.37x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">85.19</td>
    <td style="white-space: nowrap; text-align: right">11.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.73%</td>
    <td style="white-space: nowrap; text-align: right">11.71 ms</td>
    <td style="white-space: nowrap; text-align: right">12.48 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">82.79</td>
    <td style="white-space: nowrap; text-align: right">12.08 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.97%</td>
    <td style="white-space: nowrap; text-align: right">12.11 ms</td>
    <td style="white-space: nowrap; text-align: right">12.43 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">81.28</td>
    <td style="white-space: nowrap; text-align: right">12.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.14%</td>
    <td style="white-space: nowrap; text-align: right">11.82 ms</td>
    <td style="white-space: nowrap; text-align: right">18.31 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">78.11</td>
    <td style="white-space: nowrap; text-align: right">12.80 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.99%</td>
    <td style="white-space: nowrap; text-align: right">12.74 ms</td>
    <td style="white-space: nowrap; text-align: right">13.64 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">71.77</td>
    <td style="white-space: nowrap; text-align: right">13.93 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.82%</td>
    <td style="white-space: nowrap; text-align: right">13.99 ms</td>
    <td style="white-space: nowrap; text-align: right">14.28 ms</td>
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
    <td style="white-space: nowrap;text-align: right">85.19</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">82.79</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">81.28</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">78.11</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">71.77</td>
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
    <td style="white-space: nowrap">6.29 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">7.72 MB</td>
    <td>1.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">7.72 MB</td>
    <td>1.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">7.72 MB</td>
    <td>1.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">8.08 MB</td>
    <td>1.29x</td>
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
    <td style="white-space: nowrap; text-align: right">41.76</td>
    <td style="white-space: nowrap; text-align: right">23.95 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.76%</td>
    <td style="white-space: nowrap; text-align: right">23.91 ms</td>
    <td style="white-space: nowrap; text-align: right">24.68 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">41.25</td>
    <td style="white-space: nowrap; text-align: right">24.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.44%</td>
    <td style="white-space: nowrap; text-align: right">24.31 ms</td>
    <td style="white-space: nowrap; text-align: right">25.52 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">40.28</td>
    <td style="white-space: nowrap; text-align: right">24.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.03%</td>
    <td style="white-space: nowrap; text-align: right">24.96 ms</td>
    <td style="white-space: nowrap; text-align: right">25.48 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">38.21</td>
    <td style="white-space: nowrap; text-align: right">26.17 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.75%</td>
    <td style="white-space: nowrap; text-align: right">26.22 ms</td>
    <td style="white-space: nowrap; text-align: right">26.45 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">35.74</td>
    <td style="white-space: nowrap; text-align: right">27.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.44%</td>
    <td style="white-space: nowrap; text-align: right">27.89 ms</td>
    <td style="white-space: nowrap; text-align: right">28.77 ms</td>
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
    <td style="white-space: nowrap;text-align: right">41.76</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">41.25</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">40.28</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">38.21</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">35.74</td>
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
    <td style="white-space: nowrap">9.96 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">16.68 MB</td>
    <td>1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">16.68 MB</td>
    <td>1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">16.56 MB</td>
    <td>1.66x</td>
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
    <td style="white-space: nowrap; text-align: right">27.40</td>
    <td style="white-space: nowrap; text-align: right">36.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.44%</td>
    <td style="white-space: nowrap; text-align: right">36.33 ms</td>
    <td style="white-space: nowrap; text-align: right">37.66 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">26.00</td>
    <td style="white-space: nowrap; text-align: right">38.47 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.36%</td>
    <td style="white-space: nowrap; text-align: right">36.95 ms</td>
    <td style="white-space: nowrap; text-align: right">46.47 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">25.59</td>
    <td style="white-space: nowrap; text-align: right">39.08 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.75%</td>
    <td style="white-space: nowrap; text-align: right">37.75 ms</td>
    <td style="white-space: nowrap; text-align: right">47.26 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">23.96</td>
    <td style="white-space: nowrap; text-align: right">41.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.73%</td>
    <td style="white-space: nowrap; text-align: right">40.09 ms</td>
    <td style="white-space: nowrap; text-align: right">48.25 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">23.57</td>
    <td style="white-space: nowrap; text-align: right">42.42 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.92%</td>
    <td style="white-space: nowrap; text-align: right">42.13 ms</td>
    <td style="white-space: nowrap; text-align: right">43.86 ms</td>
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
    <td style="white-space: nowrap;text-align: right">27.40</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">26.00</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">25.59</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">23.96</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">23.57</td>
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
    <td style="white-space: nowrap">24.80 MB</td>
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
    <td style="white-space: nowrap; text-align: right">19.92</td>
    <td style="white-space: nowrap; text-align: right">50.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.04%</td>
    <td style="white-space: nowrap; text-align: right">48.59 ms</td>
    <td style="white-space: nowrap; text-align: right">59.19 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">19.22</td>
    <td style="white-space: nowrap; text-align: right">52.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.21%</td>
    <td style="white-space: nowrap; text-align: right">49.52 ms</td>
    <td style="white-space: nowrap; text-align: right">62.24 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">18.98</td>
    <td style="white-space: nowrap; text-align: right">52.70 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.30%</td>
    <td style="white-space: nowrap; text-align: right">50.63 ms</td>
    <td style="white-space: nowrap; text-align: right">62.48 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">18.07</td>
    <td style="white-space: nowrap; text-align: right">55.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.41%</td>
    <td style="white-space: nowrap; text-align: right">53.16 ms</td>
    <td style="white-space: nowrap; text-align: right">65.30 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">16.92</td>
    <td style="white-space: nowrap; text-align: right">59.10 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.48%</td>
    <td style="white-space: nowrap; text-align: right">57.22 ms</td>
    <td style="white-space: nowrap; text-align: right">69.13 ms</td>
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
    <td style="white-space: nowrap;text-align: right">19.92</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">19.22</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">18.98</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">18.07</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">16.92</td>
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
    <td style="white-space: nowrap">30.39 MB</td>
    <td>1.45x</td>
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
    <td style="white-space: nowrap; text-align: right">15.73</td>
    <td style="white-space: nowrap; text-align: right">63.56 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.53%</td>
    <td style="white-space: nowrap; text-align: right">60.53 ms</td>
    <td style="white-space: nowrap; text-align: right">73.75 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.69</td>
    <td style="white-space: nowrap; text-align: right">78.81 ms</td>
    <td style="white-space: nowrap; text-align: right">±55.50%</td>
    <td style="white-space: nowrap; text-align: right">61.83 ms</td>
    <td style="white-space: nowrap; text-align: right">194.11 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">12.53</td>
    <td style="white-space: nowrap; text-align: right">79.78 ms</td>
    <td style="white-space: nowrap; text-align: right">±54.66%</td>
    <td style="white-space: nowrap; text-align: right">62.91 ms</td>
    <td style="white-space: nowrap; text-align: right">195.15 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">12.04</td>
    <td style="white-space: nowrap; text-align: right">83.08 ms</td>
    <td style="white-space: nowrap; text-align: right">±52.13%</td>
    <td style="white-space: nowrap; text-align: right">67.21 ms</td>
    <td style="white-space: nowrap; text-align: right">197.57 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">11.35</td>
    <td style="white-space: nowrap; text-align: right">88.09 ms</td>
    <td style="white-space: nowrap; text-align: right">±50.72%</td>
    <td style="white-space: nowrap; text-align: right">71.47 ms</td>
    <td style="white-space: nowrap; text-align: right">206.51 ms</td>
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
    <td style="white-space: nowrap;text-align: right">15.73</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.69</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">12.53</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">12.04</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">11.35</td>
    <td style="white-space: nowrap; text-align: right">1.39x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">39.50 MB</td>
    <td>1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.63</td>
    <td style="white-space: nowrap; text-align: right">79.21 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.17%</td>
    <td style="white-space: nowrap; text-align: right">75.14 ms</td>
    <td style="white-space: nowrap; text-align: right">93.55 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">12.52</td>
    <td style="white-space: nowrap; text-align: right">79.85 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.17%</td>
    <td style="white-space: nowrap; text-align: right">74.89 ms</td>
    <td style="white-space: nowrap; text-align: right">101.23 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">11.68</td>
    <td style="white-space: nowrap; text-align: right">85.63 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.62%</td>
    <td style="white-space: nowrap; text-align: right">81.11 ms</td>
    <td style="white-space: nowrap; text-align: right">103.27 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">10.78</td>
    <td style="white-space: nowrap; text-align: right">92.77 ms</td>
    <td style="white-space: nowrap; text-align: right">±52.05%</td>
    <td style="white-space: nowrap; text-align: right">73.10 ms</td>
    <td style="white-space: nowrap; text-align: right">211.06 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">7.05</td>
    <td style="white-space: nowrap; text-align: right">141.93 ms</td>
    <td style="white-space: nowrap; text-align: right">±58.60%</td>
    <td style="white-space: nowrap; text-align: right">104.97 ms</td>
    <td style="white-space: nowrap; text-align: right">290.90 ms</td>
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
    <td style="white-space: nowrap;text-align: right">12.63</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">12.52</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">11.68</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">10.78</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">7.05</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">47.21 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">47.21 MB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">45.11 MB</td>
    <td>0.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">34.90 MB</td>
    <td>0.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">41.36 MB</td>
    <td>0.88x</td>
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
    <td style="white-space: nowrap; text-align: right">11.05</td>
    <td style="white-space: nowrap; text-align: right">90.48 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.89%</td>
    <td style="white-space: nowrap; text-align: right">86.96 ms</td>
    <td style="white-space: nowrap; text-align: right">104.75 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.78</td>
    <td style="white-space: nowrap; text-align: right">264.52 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.78%</td>
    <td style="white-space: nowrap; text-align: right">236.17 ms</td>
    <td style="white-space: nowrap; text-align: right">313.06 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.75</td>
    <td style="white-space: nowrap; text-align: right">266.42 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.28%</td>
    <td style="white-space: nowrap; text-align: right">240.97 ms</td>
    <td style="white-space: nowrap; text-align: right">316.19 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.74</td>
    <td style="white-space: nowrap; text-align: right">267.63 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.11%</td>
    <td style="white-space: nowrap; text-align: right">243.73 ms</td>
    <td style="white-space: nowrap; text-align: right">316.35 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.59</td>
    <td style="white-space: nowrap; text-align: right">278.32 ms</td>
    <td style="white-space: nowrap; text-align: right">±17.02%</td>
    <td style="white-space: nowrap; text-align: right">244.32 ms</td>
    <td style="white-space: nowrap; text-align: right">331.47 ms</td>
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
    <td style="white-space: nowrap;text-align: right">11.05</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.78</td>
    <td style="white-space: nowrap; text-align: right">2.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.75</td>
    <td style="white-space: nowrap; text-align: right">2.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.74</td>
    <td style="white-space: nowrap; text-align: right">2.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.59</td>
    <td style="white-space: nowrap; text-align: right">3.08x</td>
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
    <td style="white-space: nowrap">56.99 MB</td>
    <td>1.4x</td>
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
    <td style="white-space: nowrap; text-align: right">9.28</td>
    <td style="white-space: nowrap; text-align: right">107.81 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.65%</td>
    <td style="white-space: nowrap; text-align: right">103.21 ms</td>
    <td style="white-space: nowrap; text-align: right">125.58 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.70</td>
    <td style="white-space: nowrap; text-align: right">270.37 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.40%</td>
    <td style="white-space: nowrap; text-align: right">253.23 ms</td>
    <td style="white-space: nowrap; text-align: right">339.94 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.69</td>
    <td style="white-space: nowrap; text-align: right">271.00 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.02%</td>
    <td style="white-space: nowrap; text-align: right">254.14 ms</td>
    <td style="white-space: nowrap; text-align: right">338.86 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.63</td>
    <td style="white-space: nowrap; text-align: right">275.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.14%</td>
    <td style="white-space: nowrap; text-align: right">260.48 ms</td>
    <td style="white-space: nowrap; text-align: right">340.21 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.56</td>
    <td style="white-space: nowrap; text-align: right">280.89 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.06%</td>
    <td style="white-space: nowrap; text-align: right">261.69 ms</td>
    <td style="white-space: nowrap; text-align: right">351.22 ms</td>
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
    <td style="white-space: nowrap;text-align: right">9.28</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.70</td>
    <td style="white-space: nowrap; text-align: right">2.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.69</td>
    <td style="white-space: nowrap; text-align: right">2.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.63</td>
    <td style="white-space: nowrap; text-align: right">2.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.56</td>
    <td style="white-space: nowrap; text-align: right">2.61x</td>
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
    <td style="white-space: nowrap">58.43 MB</td>
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
    <td style="white-space: nowrap; text-align: right">3.58</td>
    <td style="white-space: nowrap; text-align: right">279.36 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.68%</td>
    <td style="white-space: nowrap; text-align: right">263.03 ms</td>
    <td style="white-space: nowrap; text-align: right">347.67 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.48</td>
    <td style="white-space: nowrap; text-align: right">287.02 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.01%</td>
    <td style="white-space: nowrap; text-align: right">270.73 ms</td>
    <td style="white-space: nowrap; text-align: right">353.55 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.47</td>
    <td style="white-space: nowrap; text-align: right">288.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.87%</td>
    <td style="white-space: nowrap; text-align: right">276.00 ms</td>
    <td style="white-space: nowrap; text-align: right">354.13 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.37</td>
    <td style="white-space: nowrap; text-align: right">296.66 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.31%</td>
    <td style="white-space: nowrap; text-align: right">281.08 ms</td>
    <td style="white-space: nowrap; text-align: right">361.30 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.29</td>
    <td style="white-space: nowrap; text-align: right">303.56 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.55%</td>
    <td style="white-space: nowrap; text-align: right">284.96 ms</td>
    <td style="white-space: nowrap; text-align: right">371.29 ms</td>
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
    <td style="white-space: nowrap;text-align: right">3.58</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.48</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.47</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.37</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.29</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">66.92 MB</td>
    <td>1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap; text-align: right">3.17</td>
    <td style="white-space: nowrap; text-align: right">315.10 ms</td>
    <td style="white-space: nowrap; text-align: right">±17.19%</td>
    <td style="white-space: nowrap; text-align: right">290.25 ms</td>
    <td style="white-space: nowrap; text-align: right">396.21 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.17</td>
    <td style="white-space: nowrap; text-align: right">315.55 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.87%</td>
    <td style="white-space: nowrap; text-align: right">296.69 ms</td>
    <td style="white-space: nowrap; text-align: right">389.62 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.16</td>
    <td style="white-space: nowrap; text-align: right">316.45 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.73%</td>
    <td style="white-space: nowrap; text-align: right">299.98 ms</td>
    <td style="white-space: nowrap; text-align: right">385.03 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.09</td>
    <td style="white-space: nowrap; text-align: right">323.99 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.07%</td>
    <td style="white-space: nowrap; text-align: right">308.99 ms</td>
    <td style="white-space: nowrap; text-align: right">386.31 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.95</td>
    <td style="white-space: nowrap; text-align: right">338.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.94%</td>
    <td style="white-space: nowrap; text-align: right">318.41 ms</td>
    <td style="white-space: nowrap; text-align: right">409.09 ms</td>
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
    <td style="white-space: nowrap;text-align: right">3.17</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.17</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.16</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.09</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.95</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">74.84 MB</td>
    <td>1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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

