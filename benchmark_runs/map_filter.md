
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">504.11 K</td>
    <td style="white-space: nowrap; text-align: right">1.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.81%</td>
    <td style="white-space: nowrap; text-align: right">1.89 μs</td>
    <td style="white-space: nowrap; text-align: right">2.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">470.01 K</td>
    <td style="white-space: nowrap; text-align: right">2.13 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.34%</td>
    <td style="white-space: nowrap; text-align: right">2.15 μs</td>
    <td style="white-space: nowrap; text-align: right">2.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">317.04 K</td>
    <td style="white-space: nowrap; text-align: right">3.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±98.75%</td>
    <td style="white-space: nowrap; text-align: right">2.38 μs</td>
    <td style="white-space: nowrap; text-align: right">14.82 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">300.85 K</td>
    <td style="white-space: nowrap; text-align: right">3.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±135.44%</td>
    <td style="white-space: nowrap; text-align: right">2.01 μs</td>
    <td style="white-space: nowrap; text-align: right">19.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">205.33 K</td>
    <td style="white-space: nowrap; text-align: right">4.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±72.99%</td>
    <td style="white-space: nowrap; text-align: right">3.90 μs</td>
    <td style="white-space: nowrap; text-align: right">18.14 μs</td>
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
    <td style="white-space: nowrap;text-align: right">504.11 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">470.01 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">317.04 K</td>
    <td style="white-space: nowrap; text-align: right">1.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">300.85 K</td>
    <td style="white-space: nowrap; text-align: right">1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">205.33 K</td>
    <td style="white-space: nowrap; text-align: right">2.46x</td>
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
    <td style="white-space: nowrap">128 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">152 B</td>
    <td>1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">208 B</td>
    <td>1.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">152 B</td>
    <td>1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">264 B</td>
    <td>2.06x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">437.03 K</td>
    <td style="white-space: nowrap; text-align: right">2.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.97%</td>
    <td style="white-space: nowrap; text-align: right">2.31 μs</td>
    <td style="white-space: nowrap; text-align: right">2.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">423.80 K</td>
    <td style="white-space: nowrap; text-align: right">2.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.58%</td>
    <td style="white-space: nowrap; text-align: right">2.39 μs</td>
    <td style="white-space: nowrap; text-align: right">3.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">326.23 K</td>
    <td style="white-space: nowrap; text-align: right">3.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±33.11%</td>
    <td style="white-space: nowrap; text-align: right">2.68 μs</td>
    <td style="white-space: nowrap; text-align: right">6.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">291.86 K</td>
    <td style="white-space: nowrap; text-align: right">3.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±118.23%</td>
    <td style="white-space: nowrap; text-align: right">2.16 μs</td>
    <td style="white-space: nowrap; text-align: right">17.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">247.46 K</td>
    <td style="white-space: nowrap; text-align: right">4.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.59%</td>
    <td style="white-space: nowrap; text-align: right">4.06 μs</td>
    <td style="white-space: nowrap; text-align: right">4.38 μs</td>
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
    <td style="white-space: nowrap;text-align: right">437.03 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">423.80 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">326.23 K</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">291.86 K</td>
    <td style="white-space: nowrap; text-align: right">1.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">247.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.77x</td>
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
    <td style="white-space: nowrap">216 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">264 B</td>
    <td>1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">320 B</td>
    <td>1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">264 B</td>
    <td>1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">352 B</td>
    <td>1.63x</td>
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
    <td style="white-space: nowrap; text-align: right">448.08 K</td>
    <td style="white-space: nowrap; text-align: right">2.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.98%</td>
    <td style="white-space: nowrap; text-align: right">2.23 μs</td>
    <td style="white-space: nowrap; text-align: right">2.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">424.12 K</td>
    <td style="white-space: nowrap; text-align: right">2.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.74%</td>
    <td style="white-space: nowrap; text-align: right">2.34 μs</td>
    <td style="white-space: nowrap; text-align: right">3.60 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">367.58 K</td>
    <td style="white-space: nowrap; text-align: right">2.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.50%</td>
    <td style="white-space: nowrap; text-align: right">2.70 μs</td>
    <td style="white-space: nowrap; text-align: right">3.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">303.15 K</td>
    <td style="white-space: nowrap; text-align: right">3.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±102.88%</td>
    <td style="white-space: nowrap; text-align: right">2.45 μs</td>
    <td style="white-space: nowrap; text-align: right">16.02 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">246.53 K</td>
    <td style="white-space: nowrap; text-align: right">4.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.87%</td>
    <td style="white-space: nowrap; text-align: right">4.04 μs</td>
    <td style="white-space: nowrap; text-align: right">4.41 μs</td>
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
    <td style="white-space: nowrap;text-align: right">448.08 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">424.12 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">367.58 K</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">303.15 K</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">246.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.82x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">359.44 K</td>
    <td style="white-space: nowrap; text-align: right">2.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.07%</td>
    <td style="white-space: nowrap; text-align: right">2.70 μs</td>
    <td style="white-space: nowrap; text-align: right">3.93 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">321.13 K</td>
    <td style="white-space: nowrap; text-align: right">3.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±107.57%</td>
    <td style="white-space: nowrap; text-align: right">2.29 μs</td>
    <td style="white-space: nowrap; text-align: right">15.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">281.69 K</td>
    <td style="white-space: nowrap; text-align: right">3.55 μs</td>
    <td style="white-space: nowrap; text-align: right">±127.15%</td>
    <td style="white-space: nowrap; text-align: right">2.44 μs</td>
    <td style="white-space: nowrap; text-align: right">20.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">242.47 K</td>
    <td style="white-space: nowrap; text-align: right">4.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±148.65%</td>
    <td style="white-space: nowrap; text-align: right">2.21 μs</td>
    <td style="white-space: nowrap; text-align: right">26.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">181.93 K</td>
    <td style="white-space: nowrap; text-align: right">5.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±62.72%</td>
    <td style="white-space: nowrap; text-align: right">4.39 μs</td>
    <td style="white-space: nowrap; text-align: right">17.18 μs</td>
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
    <td style="white-space: nowrap;text-align: right">359.44 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">321.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">281.69 K</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">242.47 K</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">181.93 K</td>
    <td style="white-space: nowrap; text-align: right">1.98x</td>
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
    <td style="white-space: nowrap">488 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">336 B</td>
    <td>0.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">432 B</td>
    <td>0.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">432 B</td>
    <td>0.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">528 B</td>
    <td>1.08x</td>
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
    <td style="white-space: nowrap; text-align: right">431.65 K</td>
    <td style="white-space: nowrap; text-align: right">2.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.38%</td>
    <td style="white-space: nowrap; text-align: right">2.27 μs</td>
    <td style="white-space: nowrap; text-align: right">3.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">416.05 K</td>
    <td style="white-space: nowrap; text-align: right">2.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.00%</td>
    <td style="white-space: nowrap; text-align: right">2.41 μs</td>
    <td style="white-space: nowrap; text-align: right">2.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">319.00 K</td>
    <td style="white-space: nowrap; text-align: right">3.13 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.44%</td>
    <td style="white-space: nowrap; text-align: right">2.58 μs</td>
    <td style="white-space: nowrap; text-align: right">12.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">248.79 K</td>
    <td style="white-space: nowrap; text-align: right">4.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±119.86%</td>
    <td style="white-space: nowrap; text-align: right">2.84 μs</td>
    <td style="white-space: nowrap; text-align: right">22.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">197.18 K</td>
    <td style="white-space: nowrap; text-align: right">5.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±64.91%</td>
    <td style="white-space: nowrap; text-align: right">4.27 μs</td>
    <td style="white-space: nowrap; text-align: right">17.39 μs</td>
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
    <td style="white-space: nowrap;text-align: right">431.65 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">416.05 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">319.00 K</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">248.79 K</td>
    <td style="white-space: nowrap; text-align: right">1.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">197.18 K</td>
    <td style="white-space: nowrap; text-align: right">2.19x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">368 B</td>
    <td>0.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">488 B</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">435.14 K</td>
    <td style="white-space: nowrap; text-align: right">2.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.97%</td>
    <td style="white-space: nowrap; text-align: right">2.24 μs</td>
    <td style="white-space: nowrap; text-align: right">3.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">381.05 K</td>
    <td style="white-space: nowrap; text-align: right">2.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.39%</td>
    <td style="white-space: nowrap; text-align: right">2.54 μs</td>
    <td style="white-space: nowrap; text-align: right">3.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">260.28 K</td>
    <td style="white-space: nowrap; text-align: right">3.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±93.10%</td>
    <td style="white-space: nowrap; text-align: right">2.46 μs</td>
    <td style="white-space: nowrap; text-align: right">15.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">259.13 K</td>
    <td style="white-space: nowrap; text-align: right">3.86 μs</td>
    <td style="white-space: nowrap; text-align: right">±85.35%</td>
    <td style="white-space: nowrap; text-align: right">3.05 μs</td>
    <td style="white-space: nowrap; text-align: right">16.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">173.55 K</td>
    <td style="white-space: nowrap; text-align: right">5.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±62.00%</td>
    <td style="white-space: nowrap; text-align: right">4.58 μs</td>
    <td style="white-space: nowrap; text-align: right">17.62 μs</td>
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
    <td style="white-space: nowrap;text-align: right">435.14 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">381.05 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">260.28 K</td>
    <td style="white-space: nowrap; text-align: right">1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">259.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">173.55 K</td>
    <td style="white-space: nowrap; text-align: right">2.51x</td>
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
    <td style="white-space: nowrap; text-align: right">383.51 K</td>
    <td style="white-space: nowrap; text-align: right">2.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±37.70%</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
    <td style="white-space: nowrap; text-align: right">6.11 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">338.44 K</td>
    <td style="white-space: nowrap; text-align: right">2.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.75%</td>
    <td style="white-space: nowrap; text-align: right">2.94 μs</td>
    <td style="white-space: nowrap; text-align: right">3.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">280.77 K</td>
    <td style="white-space: nowrap; text-align: right">3.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±133.03%</td>
    <td style="white-space: nowrap; text-align: right">2.38 μs</td>
    <td style="white-space: nowrap; text-align: right">20.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">247.76 K</td>
    <td style="white-space: nowrap; text-align: right">4.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±100.34%</td>
    <td style="white-space: nowrap; text-align: right">2.60 μs</td>
    <td style="white-space: nowrap; text-align: right">14.84 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">216.62 K</td>
    <td style="white-space: nowrap; text-align: right">4.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.78%</td>
    <td style="white-space: nowrap; text-align: right">4.54 μs</td>
    <td style="white-space: nowrap; text-align: right">5.17 μs</td>
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
    <td style="white-space: nowrap;text-align: right">383.51 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">338.44 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">280.77 K</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">247.76 K</td>
    <td style="white-space: nowrap; text-align: right">1.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">216.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.77x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">712 B</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">656 B</td>
    <td>1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">656 B</td>
    <td>1.34x</td>
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
    <td style="white-space: nowrap; text-align: right">404.78 K</td>
    <td style="white-space: nowrap; text-align: right">2.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.32%</td>
    <td style="white-space: nowrap; text-align: right">2.43 μs</td>
    <td style="white-space: nowrap; text-align: right">3.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">404.45 K</td>
    <td style="white-space: nowrap; text-align: right">2.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.71%</td>
    <td style="white-space: nowrap; text-align: right">2.49 μs</td>
    <td style="white-space: nowrap; text-align: right">2.72 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">287.32 K</td>
    <td style="white-space: nowrap; text-align: right">3.48 μs</td>
    <td style="white-space: nowrap; text-align: right">±91.52%</td>
    <td style="white-space: nowrap; text-align: right">2.65 μs</td>
    <td style="white-space: nowrap; text-align: right">15.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">244.52 K</td>
    <td style="white-space: nowrap; text-align: right">4.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±94.50%</td>
    <td style="white-space: nowrap; text-align: right">3.11 μs</td>
    <td style="white-space: nowrap; text-align: right">18.55 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">179.45 K</td>
    <td style="white-space: nowrap; text-align: right">5.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±59.22%</td>
    <td style="white-space: nowrap; text-align: right">4.74 μs</td>
    <td style="white-space: nowrap; text-align: right">17.91 μs</td>
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
    <td style="white-space: nowrap;text-align: right">404.78 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">404.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">287.32 K</td>
    <td style="white-space: nowrap; text-align: right">1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">244.52 K</td>
    <td style="white-space: nowrap; text-align: right">1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">179.45 K</td>
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
    <td style="white-space: nowrap">768 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">576 B</td>
    <td>0.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">768 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">824 B</td>
    <td>1.07x</td>
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
    <td style="white-space: nowrap; text-align: right">414.95 K</td>
    <td style="white-space: nowrap; text-align: right">2.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.32%</td>
    <td style="white-space: nowrap; text-align: right">2.49 μs</td>
    <td style="white-space: nowrap; text-align: right">2.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">400.47 K</td>
    <td style="white-space: nowrap; text-align: right">2.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.17%</td>
    <td style="white-space: nowrap; text-align: right">2.48 μs</td>
    <td style="white-space: nowrap; text-align: right">3.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">375.37 K</td>
    <td style="white-space: nowrap; text-align: right">2.66 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.99%</td>
    <td style="white-space: nowrap; text-align: right">2.67 μs</td>
    <td style="white-space: nowrap; text-align: right">3.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">238.51 K</td>
    <td style="white-space: nowrap; text-align: right">4.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±118.88%</td>
    <td style="white-space: nowrap; text-align: right">3.04 μs</td>
    <td style="white-space: nowrap; text-align: right">22.87 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">199.83 K</td>
    <td style="white-space: nowrap; text-align: right">5.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.48%</td>
    <td style="white-space: nowrap; text-align: right">4.76 μs</td>
    <td style="white-space: nowrap; text-align: right">8.52 μs</td>
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
    <td style="white-space: nowrap;text-align: right">414.95 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">400.47 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">375.37 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">238.51 K</td>
    <td style="white-space: nowrap; text-align: right">1.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">199.83 K</td>
    <td style="white-space: nowrap; text-align: right">2.08x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">399.62 K</td>
    <td style="white-space: nowrap; text-align: right">2.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.80%</td>
    <td style="white-space: nowrap; text-align: right">2.52 μs</td>
    <td style="white-space: nowrap; text-align: right">2.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">386.22 K</td>
    <td style="white-space: nowrap; text-align: right">2.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.20%</td>
    <td style="white-space: nowrap; text-align: right">2.57 μs</td>
    <td style="white-space: nowrap; text-align: right">3.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">283.32 K</td>
    <td style="white-space: nowrap; text-align: right">3.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±44.42%</td>
    <td style="white-space: nowrap; text-align: right">3.11 μs</td>
    <td style="white-space: nowrap; text-align: right">9.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">219.69 K</td>
    <td style="white-space: nowrap; text-align: right">4.55 μs</td>
    <td style="white-space: nowrap; text-align: right">±110.47%</td>
    <td style="white-space: nowrap; text-align: right">2.74 μs</td>
    <td style="white-space: nowrap; text-align: right">19.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">170.72 K</td>
    <td style="white-space: nowrap; text-align: right">5.86 μs</td>
    <td style="white-space: nowrap; text-align: right">±66.16%</td>
    <td style="white-space: nowrap; text-align: right">4.88 μs</td>
    <td style="white-space: nowrap; text-align: right">20.36 μs</td>
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
    <td style="white-space: nowrap;text-align: right">399.62 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">386.22 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">283.32 K</td>
    <td style="white-space: nowrap; text-align: right">1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">219.69 K</td>
    <td style="white-space: nowrap; text-align: right">1.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">170.72 K</td>
    <td style="white-space: nowrap; text-align: right">2.34x</td>
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
    <td style="white-space: nowrap">936 B</td>
    <td>1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">992 B</td>
    <td>1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">936 B</td>
    <td>1.34x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">363.60 K</td>
    <td style="white-space: nowrap; text-align: right">2.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.87%</td>
    <td style="white-space: nowrap; text-align: right">2.72 μs</td>
    <td style="white-space: nowrap; text-align: right">3.57 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">344.58 K</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.63%</td>
    <td style="white-space: nowrap; text-align: right">2.88 μs</td>
    <td style="white-space: nowrap; text-align: right">3.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">278.69 K</td>
    <td style="white-space: nowrap; text-align: right">3.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.57%</td>
    <td style="white-space: nowrap; text-align: right">3.59 μs</td>
    <td style="white-space: nowrap; text-align: right">3.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">262.12 K</td>
    <td style="white-space: nowrap; text-align: right">3.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±84.72%</td>
    <td style="white-space: nowrap; text-align: right">3.04 μs</td>
    <td style="white-space: nowrap; text-align: right">15.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">161.44 K</td>
    <td style="white-space: nowrap; text-align: right">6.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±51.18%</td>
    <td style="white-space: nowrap; text-align: right">5.34 μs</td>
    <td style="white-space: nowrap; text-align: right">18.05 μs</td>
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
    <td style="white-space: nowrap;text-align: right">363.60 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">344.58 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">278.69 K</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">262.12 K</td>
    <td style="white-space: nowrap; text-align: right">1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">161.44 K</td>
    <td style="white-space: nowrap; text-align: right">2.25x</td>
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
    <td style="white-space: nowrap">1.08 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">1.73 KB</td>
    <td>1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">1.79 KB</td>
    <td>1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">1.73 KB</td>
    <td>1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">1.77 KB</td>
    <td>1.64x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">296.54 K</td>
    <td style="white-space: nowrap; text-align: right">3.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.07%</td>
    <td style="white-space: nowrap; text-align: right">3.30 μs</td>
    <td style="white-space: nowrap; text-align: right">3.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">290.17 K</td>
    <td style="white-space: nowrap; text-align: right">3.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±40.58%</td>
    <td style="white-space: nowrap; text-align: right">3.12 μs</td>
    <td style="white-space: nowrap; text-align: right">8.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">240.38 K</td>
    <td style="white-space: nowrap; text-align: right">4.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±77.72%</td>
    <td style="white-space: nowrap; text-align: right">3.24 μs</td>
    <td style="white-space: nowrap; text-align: right">16.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">173.85 K</td>
    <td style="white-space: nowrap; text-align: right">5.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±90.38%</td>
    <td style="white-space: nowrap; text-align: right">3.93 μs</td>
    <td style="white-space: nowrap; text-align: right">21.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">167.76 K</td>
    <td style="white-space: nowrap; text-align: right">5.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.04%</td>
    <td style="white-space: nowrap; text-align: right">6.03 μs</td>
    <td style="white-space: nowrap; text-align: right">6.44 μs</td>
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
    <td style="white-space: nowrap;text-align: right">296.54 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">290.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">240.38 K</td>
    <td style="white-space: nowrap; text-align: right">1.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">173.85 K</td>
    <td style="white-space: nowrap; text-align: right">1.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">167.76 K</td>
    <td style="white-space: nowrap; text-align: right">1.77x</td>
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
    <td style="white-space: nowrap">2.55 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">1.59 KB</td>
    <td>0.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">2.55 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">1.67 KB</td>
    <td>0.65x</td>
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
    <td style="white-space: nowrap; text-align: right">182.21 K</td>
    <td style="white-space: nowrap; text-align: right">5.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.86%</td>
    <td style="white-space: nowrap; text-align: right">5.46 μs</td>
    <td style="white-space: nowrap; text-align: right">5.86 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">159.16 K</td>
    <td style="white-space: nowrap; text-align: right">6.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±48.35%</td>
    <td style="white-space: nowrap; text-align: right">5.57 μs</td>
    <td style="white-space: nowrap; text-align: right">17.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">138.04 K</td>
    <td style="white-space: nowrap; text-align: right">7.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±61.15%</td>
    <td style="white-space: nowrap; text-align: right">6.16 μs</td>
    <td style="white-space: nowrap; text-align: right">23.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">123.85 K</td>
    <td style="white-space: nowrap; text-align: right">8.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±75.47%</td>
    <td style="white-space: nowrap; text-align: right">5.70 μs</td>
    <td style="white-space: nowrap; text-align: right">27.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">111.45 K</td>
    <td style="white-space: nowrap; text-align: right">8.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±31.90%</td>
    <td style="white-space: nowrap; text-align: right">8.30 μs</td>
    <td style="white-space: nowrap; text-align: right">19.69 μs</td>
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
    <td style="white-space: nowrap;text-align: right">182.21 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">159.16 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">138.04 K</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">123.85 K</td>
    <td style="white-space: nowrap; text-align: right">1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">111.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.63x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">2.14 KB</td>
    <td>1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">2.20 KB</td>
    <td>1.51x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">153.70 K</td>
    <td style="white-space: nowrap; text-align: right">6.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.89%</td>
    <td style="white-space: nowrap; text-align: right">6.40 μs</td>
    <td style="white-space: nowrap; text-align: right">8.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">143.91 K</td>
    <td style="white-space: nowrap; text-align: right">6.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±47.52%</td>
    <td style="white-space: nowrap; text-align: right">6.21 μs</td>
    <td style="white-space: nowrap; text-align: right">19.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">142.73 K</td>
    <td style="white-space: nowrap; text-align: right">7.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±47.63%</td>
    <td style="white-space: nowrap; text-align: right">6.16 μs</td>
    <td style="white-space: nowrap; text-align: right">19.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">118.06 K</td>
    <td style="white-space: nowrap; text-align: right">8.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±41.86%</td>
    <td style="white-space: nowrap; text-align: right">7.26 μs</td>
    <td style="white-space: nowrap; text-align: right">20.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">94.60 K</td>
    <td style="white-space: nowrap; text-align: right">10.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±43.41%</td>
    <td style="white-space: nowrap; text-align: right">9.35 μs</td>
    <td style="white-space: nowrap; text-align: right">27.71 μs</td>
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
    <td style="white-space: nowrap;text-align: right">153.70 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">143.91 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">142.73 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">118.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">94.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.62x</td>
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
    <td style="white-space: nowrap">3.65 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">140.23 K</td>
    <td style="white-space: nowrap; text-align: right">7.13 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.78%</td>
    <td style="white-space: nowrap; text-align: right">6.99 μs</td>
    <td style="white-space: nowrap; text-align: right">8.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">135.52 K</td>
    <td style="white-space: nowrap; text-align: right">7.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.98%</td>
    <td style="white-space: nowrap; text-align: right">7.34 μs</td>
    <td style="white-space: nowrap; text-align: right">9.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">131.92 K</td>
    <td style="white-space: nowrap; text-align: right">7.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.28%</td>
    <td style="white-space: nowrap; text-align: right">6.95 μs</td>
    <td style="white-space: nowrap; text-align: right">12.64 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">112.14 K</td>
    <td style="white-space: nowrap; text-align: right">8.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±47.94%</td>
    <td style="white-space: nowrap; text-align: right">7.82 μs</td>
    <td style="white-space: nowrap; text-align: right">24.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">89.36 K</td>
    <td style="white-space: nowrap; text-align: right">11.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±31.24%</td>
    <td style="white-space: nowrap; text-align: right">10.43 μs</td>
    <td style="white-space: nowrap; text-align: right">24.26 μs</td>
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
    <td style="white-space: nowrap;text-align: right">140.23 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">135.52 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">131.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">112.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">89.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.57x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.53 KB</td>
    <td>1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">3.53 KB</td>
    <td>1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.59 KB</td>
    <td>1.37x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">59.40 K</td>
    <td style="white-space: nowrap; text-align: right">16.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.11%</td>
    <td style="white-space: nowrap; text-align: right">16.75 μs</td>
    <td style="white-space: nowrap; text-align: right">20.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">54.63 K</td>
    <td style="white-space: nowrap; text-align: right">18.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±34.70%</td>
    <td style="white-space: nowrap; text-align: right">15.94 μs</td>
    <td style="white-space: nowrap; text-align: right">34.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">54.16 K</td>
    <td style="white-space: nowrap; text-align: right">18.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±41.13%</td>
    <td style="white-space: nowrap; text-align: right">15.85 μs</td>
    <td style="white-space: nowrap; text-align: right">44.60 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">47.71 K</td>
    <td style="white-space: nowrap; text-align: right">20.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±29.16%</td>
    <td style="white-space: nowrap; text-align: right">19.42 μs</td>
    <td style="white-space: nowrap; text-align: right">43.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">45.14 K</td>
    <td style="white-space: nowrap; text-align: right">22.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.97%</td>
    <td style="white-space: nowrap; text-align: right">15.84 μs</td>
    <td style="white-space: nowrap; text-align: right">63.47 μs</td>
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
    <td style="white-space: nowrap;text-align: right">59.40 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">54.63 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">54.16 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">47.71 K</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">45.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
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
    <td style="white-space: nowrap">5.34 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">3.51 KB</td>
    <td>0.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">5.28 KB</td>
    <td>0.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">4.60 KB</td>
    <td>0.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">5.28 KB</td>
    <td>0.99x</td>
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
    <td style="white-space: nowrap; text-align: right">51.94 K</td>
    <td style="white-space: nowrap; text-align: right">19.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.36%</td>
    <td style="white-space: nowrap; text-align: right">16.97 μs</td>
    <td style="white-space: nowrap; text-align: right">36.40 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">50.45 K</td>
    <td style="white-space: nowrap; text-align: right">19.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±27.84%</td>
    <td style="white-space: nowrap; text-align: right">18.09 μs</td>
    <td style="white-space: nowrap; text-align: right">39.93 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">49.45 K</td>
    <td style="white-space: nowrap; text-align: right">20.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±34.19%</td>
    <td style="white-space: nowrap; text-align: right">17.22 μs</td>
    <td style="white-space: nowrap; text-align: right">36.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">49.29 K</td>
    <td style="white-space: nowrap; text-align: right">20.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±41.58%</td>
    <td style="white-space: nowrap; text-align: right">16.79 μs</td>
    <td style="white-space: nowrap; text-align: right">46.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">39.14 K</td>
    <td style="white-space: nowrap; text-align: right">25.55 μs</td>
    <td style="white-space: nowrap; text-align: right">±35.54%</td>
    <td style="white-space: nowrap; text-align: right">20.86 μs</td>
    <td style="white-space: nowrap; text-align: right">51.12 μs</td>
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
    <td style="white-space: nowrap;text-align: right">51.94 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">50.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">49.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">49.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">39.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.63 KB</td>
    <td>1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.62 KB</td>
    <td>1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">3.62 KB</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">53.13 K</td>
    <td style="white-space: nowrap; text-align: right">18.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.55%</td>
    <td style="white-space: nowrap; text-align: right">17.38 μs</td>
    <td style="white-space: nowrap; text-align: right">32.74 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">48.62 K</td>
    <td style="white-space: nowrap; text-align: right">20.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±34.31%</td>
    <td style="white-space: nowrap; text-align: right">17.63 μs</td>
    <td style="white-space: nowrap; text-align: right">42.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">46.97 K</td>
    <td style="white-space: nowrap; text-align: right">21.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±35.27%</td>
    <td style="white-space: nowrap; text-align: right">18.01 μs</td>
    <td style="white-space: nowrap; text-align: right">43.58 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">44.94 K</td>
    <td style="white-space: nowrap; text-align: right">22.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.05%</td>
    <td style="white-space: nowrap; text-align: right">21.50 μs</td>
    <td style="white-space: nowrap; text-align: right">34.70 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">44.36 K</td>
    <td style="white-space: nowrap; text-align: right">22.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.93%</td>
    <td style="white-space: nowrap; text-align: right">19.06 μs</td>
    <td style="white-space: nowrap; text-align: right">40.88 μs</td>
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
    <td style="white-space: nowrap;text-align: right">53.13 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">48.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">46.97 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">44.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">44.36 K</td>
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
    <td style="white-space: nowrap">4.16 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">8.08 KB</td>
    <td>1.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">8.08 KB</td>
    <td>1.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">7.84 KB</td>
    <td>1.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">8.13 KB</td>
    <td>1.96x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">51.98 K</td>
    <td style="white-space: nowrap; text-align: right">19.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.04%</td>
    <td style="white-space: nowrap; text-align: right">18.09 μs</td>
    <td style="white-space: nowrap; text-align: right">31.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">46.79 K</td>
    <td style="white-space: nowrap; text-align: right">21.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.48%</td>
    <td style="white-space: nowrap; text-align: right">18.86 μs</td>
    <td style="white-space: nowrap; text-align: right">41.99 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">43.90 K</td>
    <td style="white-space: nowrap; text-align: right">22.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.85%</td>
    <td style="white-space: nowrap; text-align: right">18.70 μs</td>
    <td style="white-space: nowrap; text-align: right">41.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">43.78 K</td>
    <td style="white-space: nowrap; text-align: right">22.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.94%</td>
    <td style="white-space: nowrap; text-align: right">22.05 μs</td>
    <td style="white-space: nowrap; text-align: right">34.70 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">39.52 K</td>
    <td style="white-space: nowrap; text-align: right">25.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±45.11%</td>
    <td style="white-space: nowrap; text-align: right">19.54 μs</td>
    <td style="white-space: nowrap; text-align: right">54.76 μs</td>
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
    <td style="white-space: nowrap;text-align: right">51.98 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">46.79 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">43.90 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">43.78 K</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">39.52 K</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
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
    <td style="white-space: nowrap">4.48 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">8.17 KB</td>
    <td>1.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">8.17 KB</td>
    <td>1.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">6.55 KB</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">7.99 KB</td>
    <td>1.78x</td>
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
    <td style="white-space: nowrap; text-align: right">26323.41</td>
    <td style="white-space: nowrap; text-align: right">0.0380 ms</td>
    <td style="white-space: nowrap; text-align: right">±40.66%</td>
    <td style="white-space: nowrap; text-align: right">0.0312 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0759 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">117.21</td>
    <td style="white-space: nowrap; text-align: right">8.53 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.59%</td>
    <td style="white-space: nowrap; text-align: right">0.0377 ms</td>
    <td style="white-space: nowrap; text-align: right">118.98 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">115.20</td>
    <td style="white-space: nowrap; text-align: right">8.68 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.38%</td>
    <td style="white-space: nowrap; text-align: right">0.0328 ms</td>
    <td style="white-space: nowrap; text-align: right">120.99 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">114.58</td>
    <td style="white-space: nowrap; text-align: right">8.73 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.74%</td>
    <td style="white-space: nowrap; text-align: right">0.0269 ms</td>
    <td style="white-space: nowrap; text-align: right">121.75 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">112.71</td>
    <td style="white-space: nowrap; text-align: right">8.87 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.77%</td>
    <td style="white-space: nowrap; text-align: right">0.0328 ms</td>
    <td style="white-space: nowrap; text-align: right">123.78 ms</td>
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
    <td style="white-space: nowrap;text-align: right">26323.41</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">117.21</td>
    <td style="white-space: nowrap; text-align: right">224.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">115.20</td>
    <td style="white-space: nowrap; text-align: right">228.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">114.58</td>
    <td style="white-space: nowrap; text-align: right">229.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">112.71</td>
    <td style="white-space: nowrap; text-align: right">233.54x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">12.59 KB</td>
    <td>1.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">11.09 KB</td>
    <td>1.41x</td>
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
    <td style="white-space: nowrap; text-align: right">125.21</td>
    <td style="white-space: nowrap; text-align: right">7.99 ms</td>
    <td style="white-space: nowrap; text-align: right">±385.23%</td>
    <td style="white-space: nowrap; text-align: right">0.0364 ms</td>
    <td style="white-space: nowrap; text-align: right">119.21 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">122.79</td>
    <td style="white-space: nowrap; text-align: right">8.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±385.10%</td>
    <td style="white-space: nowrap; text-align: right">0.0500 ms</td>
    <td style="white-space: nowrap; text-align: right">121.51 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">121.90</td>
    <td style="white-space: nowrap; text-align: right">8.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±385.32%</td>
    <td style="white-space: nowrap; text-align: right">0.0374 ms</td>
    <td style="white-space: nowrap; text-align: right">122.46 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">115.42</td>
    <td style="white-space: nowrap; text-align: right">8.66 ms</td>
    <td style="white-space: nowrap; text-align: right">±371.81%</td>
    <td style="white-space: nowrap; text-align: right">0.0529 ms</td>
    <td style="white-space: nowrap; text-align: right">120.59 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">113.73</td>
    <td style="white-space: nowrap; text-align: right">8.79 ms</td>
    <td style="white-space: nowrap; text-align: right">±372.28%</td>
    <td style="white-space: nowrap; text-align: right">0.0400 ms</td>
    <td style="white-space: nowrap; text-align: right">122.52 ms</td>
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
    <td style="white-space: nowrap;text-align: right">125.21</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">122.79</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">121.90</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">115.42</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">113.73</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">11.28 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">18.31 KB</td>
    <td>1.62x</td>
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

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">18.37 KB</td>
    <td>1.63x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">125.39</td>
    <td style="white-space: nowrap; text-align: right">7.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±384.44%</td>
    <td style="white-space: nowrap; text-align: right">0.0580 ms</td>
    <td style="white-space: nowrap; text-align: right">118.80 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">125.22</td>
    <td style="white-space: nowrap; text-align: right">7.99 ms</td>
    <td style="white-space: nowrap; text-align: right">±383.98%</td>
    <td style="white-space: nowrap; text-align: right">0.0583 ms</td>
    <td style="white-space: nowrap; text-align: right">118.83 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">122.81</td>
    <td style="white-space: nowrap; text-align: right">8.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±384.62%</td>
    <td style="white-space: nowrap; text-align: right">0.0516 ms</td>
    <td style="white-space: nowrap; text-align: right">121.35 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">122.81</td>
    <td style="white-space: nowrap; text-align: right">8.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±384.64%</td>
    <td style="white-space: nowrap; text-align: right">0.0477 ms</td>
    <td style="white-space: nowrap; text-align: right">121.36 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">121.82</td>
    <td style="white-space: nowrap; text-align: right">8.21 ms</td>
    <td style="white-space: nowrap; text-align: right">±384.74%</td>
    <td style="white-space: nowrap; text-align: right">0.0502 ms</td>
    <td style="white-space: nowrap; text-align: right">122.38 ms</td>
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
    <td style="white-space: nowrap;text-align: right">125.39</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">125.22</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">122.81</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">122.81</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">121.82</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
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
    <td style="white-space: nowrap">25.16 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">29.51 KB</td>
    <td>1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">30.76 KB</td>
    <td>1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">30.78 KB</td>
    <td>1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">30.78 KB</td>
    <td>1.22x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">15.12 K</td>
    <td style="white-space: nowrap; text-align: right">66.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.65%</td>
    <td style="white-space: nowrap; text-align: right">58.88 μs</td>
    <td style="white-space: nowrap; text-align: right">114.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">14.56 K</td>
    <td style="white-space: nowrap; text-align: right">68.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±27.83%</td>
    <td style="white-space: nowrap; text-align: right">63.93 μs</td>
    <td style="white-space: nowrap; text-align: right">135.72 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">14.14 K</td>
    <td style="white-space: nowrap; text-align: right">70.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.51%</td>
    <td style="white-space: nowrap; text-align: right">71.35 μs</td>
    <td style="white-space: nowrap; text-align: right">115.58 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">13.83 K</td>
    <td style="white-space: nowrap; text-align: right">72.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.77%</td>
    <td style="white-space: nowrap; text-align: right">70.57 μs</td>
    <td style="white-space: nowrap; text-align: right">86.46 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">13.15 K</td>
    <td style="white-space: nowrap; text-align: right">76.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±31.07%</td>
    <td style="white-space: nowrap; text-align: right">65.28 μs</td>
    <td style="white-space: nowrap; text-align: right">146.40 μs</td>
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
    <td style="white-space: nowrap;text-align: right">15.12 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">14.56 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">14.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">13.83 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">13.15 K</td>
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
    <td style="white-space: nowrap">18.22 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">29.94 KB</td>
    <td>1.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">29.94 KB</td>
    <td>1.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">26.66 KB</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">29.99 KB</td>
    <td>1.65x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">13.42 K</td>
    <td style="white-space: nowrap; text-align: right">74.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.44%</td>
    <td style="white-space: nowrap; text-align: right">70.43 μs</td>
    <td style="white-space: nowrap; text-align: right">94.52 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">13.37 K</td>
    <td style="white-space: nowrap; text-align: right">74.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.74%</td>
    <td style="white-space: nowrap; text-align: right">70.01 μs</td>
    <td style="white-space: nowrap; text-align: right">112.56 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.64 K</td>
    <td style="white-space: nowrap; text-align: right">79.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.55%</td>
    <td style="white-space: nowrap; text-align: right">71.42 μs</td>
    <td style="white-space: nowrap; text-align: right">142.30 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">11.79 K</td>
    <td style="white-space: nowrap; text-align: right">84.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±28.76%</td>
    <td style="white-space: nowrap; text-align: right">73.31 μs</td>
    <td style="white-space: nowrap; text-align: right">146.79 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">10.47 K</td>
    <td style="white-space: nowrap; text-align: right">95.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.58%</td>
    <td style="white-space: nowrap; text-align: right">83.95 μs</td>
    <td style="white-space: nowrap; text-align: right">174.41 μs</td>
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
    <td style="white-space: nowrap;text-align: right">13.42 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">13.37 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.64 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">11.79 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">10.47 K</td>
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
    <td style="white-space: nowrap">35.70 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">21.64 KB</td>
    <td>0.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">35.70 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">53.51 KB</td>
    <td>1.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">33.47 KB</td>
    <td>0.94x</td>
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
    <td style="white-space: nowrap; text-align: right">12.41 K</td>
    <td style="white-space: nowrap; text-align: right">80.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.45%</td>
    <td style="white-space: nowrap; text-align: right">77.27 μs</td>
    <td style="white-space: nowrap; text-align: right">103.42 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">11.74 K</td>
    <td style="white-space: nowrap; text-align: right">85.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.53%</td>
    <td style="white-space: nowrap; text-align: right">76.81 μs</td>
    <td style="white-space: nowrap; text-align: right">166.97 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">11.09 K</td>
    <td style="white-space: nowrap; text-align: right">90.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.20%</td>
    <td style="white-space: nowrap; text-align: right">86.96 μs</td>
    <td style="white-space: nowrap; text-align: right">99.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">9.96 K</td>
    <td style="white-space: nowrap; text-align: right">100.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±28.29%</td>
    <td style="white-space: nowrap; text-align: right">93.72 μs</td>
    <td style="white-space: nowrap; text-align: right">171.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">9.66 K</td>
    <td style="white-space: nowrap; text-align: right">103.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.83%</td>
    <td style="white-space: nowrap; text-align: right">101.98 μs</td>
    <td style="white-space: nowrap; text-align: right">143.30 μs</td>
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
    <td style="white-space: nowrap;text-align: right">12.41 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">11.74 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">11.09 K</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">9.96 K</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">9.66 K</td>
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
    <td style="white-space: nowrap">33.66 KB</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">10.57 K</td>
    <td style="white-space: nowrap; text-align: right">94.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.84%</td>
    <td style="white-space: nowrap; text-align: right">93.82 μs</td>
    <td style="white-space: nowrap; text-align: right">104.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">10.07 K</td>
    <td style="white-space: nowrap; text-align: right">99.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.99%</td>
    <td style="white-space: nowrap; text-align: right">89.91 μs</td>
    <td style="white-space: nowrap; text-align: right">139.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">10.02 K</td>
    <td style="white-space: nowrap; text-align: right">99.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.77%</td>
    <td style="white-space: nowrap; text-align: right">95.61 μs</td>
    <td style="white-space: nowrap; text-align: right">136.80 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">9.55 K</td>
    <td style="white-space: nowrap; text-align: right">104.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.50%</td>
    <td style="white-space: nowrap; text-align: right">102.09 μs</td>
    <td style="white-space: nowrap; text-align: right">120.86 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">8.38 K</td>
    <td style="white-space: nowrap; text-align: right">119.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.75%</td>
    <td style="white-space: nowrap; text-align: right">102.40 μs</td>
    <td style="white-space: nowrap; text-align: right">214.29 μs</td>
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
    <td style="white-space: nowrap;text-align: right">10.57 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">10.07 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">10.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">9.55 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">8.38 K</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">28.48 KB</td>
    <td>0.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">41.92 KB</td>
    <td>0.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">47.29 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">9.45 K</td>
    <td style="white-space: nowrap; text-align: right">105.86 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.07%</td>
    <td style="white-space: nowrap; text-align: right">106.28 μs</td>
    <td style="white-space: nowrap; text-align: right">118.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.44 K</td>
    <td style="white-space: nowrap; text-align: right">105.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.80%</td>
    <td style="white-space: nowrap; text-align: right">105.62 μs</td>
    <td style="white-space: nowrap; text-align: right">121.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.29 K</td>
    <td style="white-space: nowrap; text-align: right">107.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.20%</td>
    <td style="white-space: nowrap; text-align: right">108.96 μs</td>
    <td style="white-space: nowrap; text-align: right">122.40 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">8.79 K</td>
    <td style="white-space: nowrap; text-align: right">113.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.37%</td>
    <td style="white-space: nowrap; text-align: right">106.38 μs</td>
    <td style="white-space: nowrap; text-align: right">204.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">7.95 K</td>
    <td style="white-space: nowrap; text-align: right">125.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.62%</td>
    <td style="white-space: nowrap; text-align: right">121.31 μs</td>
    <td style="white-space: nowrap; text-align: right">146.46 μs</td>
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
    <td style="white-space: nowrap;text-align: right">9.45 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.44 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">8.79 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">7.95 K</td>
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
    <td style="white-space: nowrap">53.11 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">32.02 KB</td>
    <td>0.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">53.11 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">8.31 K</td>
    <td style="white-space: nowrap; text-align: right">120.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.08%</td>
    <td style="white-space: nowrap; text-align: right">108.72 μs</td>
    <td style="white-space: nowrap; text-align: right">225.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">8.07 K</td>
    <td style="white-space: nowrap; text-align: right">123.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±27.46%</td>
    <td style="white-space: nowrap; text-align: right">111.40 μs</td>
    <td style="white-space: nowrap; text-align: right">231.96 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">7.98 K</td>
    <td style="white-space: nowrap; text-align: right">125.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.12%</td>
    <td style="white-space: nowrap; text-align: right">111.08 μs</td>
    <td style="white-space: nowrap; text-align: right">269.99 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">7.24 K</td>
    <td style="white-space: nowrap; text-align: right">138.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.98%</td>
    <td style="white-space: nowrap; text-align: right">130.45 μs</td>
    <td style="white-space: nowrap; text-align: right">230.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">7.19 K</td>
    <td style="white-space: nowrap; text-align: right">139.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.01%</td>
    <td style="white-space: nowrap; text-align: right">121.28 μs</td>
    <td style="white-space: nowrap; text-align: right">267.17 μs</td>
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
    <td style="white-space: nowrap;text-align: right">8.31 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">8.07 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">7.98 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">7.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">7.19 K</td>
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
    <td style="white-space: nowrap">37.11 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">58.58 KB</td>
    <td>1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">58.58 KB</td>
    <td>1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">55.16 KB</td>
    <td>1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">58.87 KB</td>
    <td>1.59x</td>
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
    <td style="white-space: nowrap; text-align: right">4.54 K</td>
    <td style="white-space: nowrap; text-align: right">220.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.98%</td>
    <td style="white-space: nowrap; text-align: right">214.66 μs</td>
    <td style="white-space: nowrap; text-align: right">294.03 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.41 K</td>
    <td style="white-space: nowrap; text-align: right">226.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.78%</td>
    <td style="white-space: nowrap; text-align: right">214.11 μs</td>
    <td style="white-space: nowrap; text-align: right">296.43 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.31 K</td>
    <td style="white-space: nowrap; text-align: right">232.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.06%</td>
    <td style="white-space: nowrap; text-align: right">231.99 μs</td>
    <td style="white-space: nowrap; text-align: right">258.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.23 K</td>
    <td style="white-space: nowrap; text-align: right">236.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.40%</td>
    <td style="white-space: nowrap; text-align: right">221.69 μs</td>
    <td style="white-space: nowrap; text-align: right">399.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.96 K</td>
    <td style="white-space: nowrap; text-align: right">252.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.14%</td>
    <td style="white-space: nowrap; text-align: right">243.86 μs</td>
    <td style="white-space: nowrap; text-align: right">322.31 μs</td>
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
    <td style="white-space: nowrap;text-align: right">4.54 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.41 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.23 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.96 K</td>
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
    <td style="white-space: nowrap">102.14 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">149.02 KB</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">149.35 KB</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">149.02 KB</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">3.10 K</td>
    <td style="white-space: nowrap; text-align: right">322.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.98%</td>
    <td style="white-space: nowrap; text-align: right">318.25 μs</td>
    <td style="white-space: nowrap; text-align: right">376.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.95 K</td>
    <td style="white-space: nowrap; text-align: right">339.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.41%</td>
    <td style="white-space: nowrap; text-align: right">334.89 μs</td>
    <td style="white-space: nowrap; text-align: right">392.75 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.75 K</td>
    <td style="white-space: nowrap; text-align: right">364.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.53%</td>
    <td style="white-space: nowrap; text-align: right">345.38 μs</td>
    <td style="white-space: nowrap; text-align: right">628.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">2.62 K</td>
    <td style="white-space: nowrap; text-align: right">381.03 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.21%</td>
    <td style="white-space: nowrap; text-align: right">338.94 μs</td>
    <td style="white-space: nowrap; text-align: right">605.96 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.49 K</td>
    <td style="white-space: nowrap; text-align: right">401.63 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.78%</td>
    <td style="white-space: nowrap; text-align: right">386.11 μs</td>
    <td style="white-space: nowrap; text-align: right">638.90 μs</td>
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
    <td style="white-space: nowrap;text-align: right">3.10 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.75 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">2.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.49 K</td>
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
    <td style="white-space: nowrap">148.58 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">212.73 KB</td>
    <td>1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">249.35 KB</td>
    <td>1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap; text-align: right">2.24 K</td>
    <td style="white-space: nowrap; text-align: right">447.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.92%</td>
    <td style="white-space: nowrap; text-align: right">434.37 μs</td>
    <td style="white-space: nowrap; text-align: right">621.12 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.20 K</td>
    <td style="white-space: nowrap; text-align: right">453.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.54%</td>
    <td style="white-space: nowrap; text-align: right">429.87 μs</td>
    <td style="white-space: nowrap; text-align: right">685.42 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.09 K</td>
    <td style="white-space: nowrap; text-align: right">478.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.53%</td>
    <td style="white-space: nowrap; text-align: right">443.73 μs</td>
    <td style="white-space: nowrap; text-align: right">723.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.06 K</td>
    <td style="white-space: nowrap; text-align: right">486.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.79%</td>
    <td style="white-space: nowrap; text-align: right">473.23 μs</td>
    <td style="white-space: nowrap; text-align: right">636.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.80 K</td>
    <td style="white-space: nowrap; text-align: right">555.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.54%</td>
    <td style="white-space: nowrap; text-align: right">530.71 μs</td>
    <td style="white-space: nowrap; text-align: right">815.79 μs</td>
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
    <td style="white-space: nowrap; text-align: right">2.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.09 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.80 K</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">207.52 KB</td>
    <td>0.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">297.12 KB</td>
    <td>0.98x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.80 K</td>
    <td style="white-space: nowrap; text-align: right">557.03 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.35%</td>
    <td style="white-space: nowrap; text-align: right">554.41 μs</td>
    <td style="white-space: nowrap; text-align: right">616.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.70 K</td>
    <td style="white-space: nowrap; text-align: right">588.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.59%</td>
    <td style="white-space: nowrap; text-align: right">560.91 μs</td>
    <td style="white-space: nowrap; text-align: right">818.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.66 K</td>
    <td style="white-space: nowrap; text-align: right">601.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±33.49%</td>
    <td style="white-space: nowrap; text-align: right">551.07 μs</td>
    <td style="white-space: nowrap; text-align: right">1324.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.51 K</td>
    <td style="white-space: nowrap; text-align: right">661.60 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.31%</td>
    <td style="white-space: nowrap; text-align: right">613.65 μs</td>
    <td style="white-space: nowrap; text-align: right">986.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.48 K</td>
    <td style="white-space: nowrap; text-align: right">676.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.60%</td>
    <td style="white-space: nowrap; text-align: right">644.79 μs</td>
    <td style="white-space: nowrap; text-align: right">900.62 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.80 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.51 K</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.48 K</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">246.98 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">406.86 KB</td>
    <td>1.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">406.86 KB</td>
    <td>1.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">393.40 KB</td>
    <td>1.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">378.78 KB</td>
    <td>1.53x</td>
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
    <td style="white-space: nowrap; text-align: right">1.46 K</td>
    <td style="white-space: nowrap; text-align: right">684.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.09%</td>
    <td style="white-space: nowrap; text-align: right">671.65 μs</td>
    <td style="white-space: nowrap; text-align: right">885.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.43 K</td>
    <td style="white-space: nowrap; text-align: right">698.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.08%</td>
    <td style="white-space: nowrap; text-align: right">671.23 μs</td>
    <td style="white-space: nowrap; text-align: right">968.27 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.42 K</td>
    <td style="white-space: nowrap; text-align: right">704.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.19%</td>
    <td style="white-space: nowrap; text-align: right">673.45 μs</td>
    <td style="white-space: nowrap; text-align: right">972.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.34 K</td>
    <td style="white-space: nowrap; text-align: right">747.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.24%</td>
    <td style="white-space: nowrap; text-align: right">706.49 μs</td>
    <td style="white-space: nowrap; text-align: right">1049.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.32 K</td>
    <td style="white-space: nowrap; text-align: right">758.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.59%</td>
    <td style="white-space: nowrap; text-align: right">740.79 μs</td>
    <td style="white-space: nowrap; text-align: right">869.83 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.46 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.43 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.42 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.34 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.32 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">435.90 KB</td>
    <td>1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">486.52 KB</td>
    <td>1.77x</td>
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
    <td style="white-space: nowrap; text-align: right">1.27 K</td>
    <td style="white-space: nowrap; text-align: right">785.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.64%</td>
    <td style="white-space: nowrap; text-align: right">772.92 μs</td>
    <td style="white-space: nowrap; text-align: right">1005.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.23 K</td>
    <td style="white-space: nowrap; text-align: right">811.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.64%</td>
    <td style="white-space: nowrap; text-align: right">783.48 μs</td>
    <td style="white-space: nowrap; text-align: right">1110.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.20 K</td>
    <td style="white-space: nowrap; text-align: right">833.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.60%</td>
    <td style="white-space: nowrap; text-align: right">820.17 μs</td>
    <td style="white-space: nowrap; text-align: right">1027.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.19 K</td>
    <td style="white-space: nowrap; text-align: right">842.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.03%</td>
    <td style="white-space: nowrap; text-align: right">817.84 μs</td>
    <td style="white-space: nowrap; text-align: right">986.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.08 K</td>
    <td style="white-space: nowrap; text-align: right">928.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.45%</td>
    <td style="white-space: nowrap; text-align: right">902.89 μs</td>
    <td style="white-space: nowrap; text-align: right">1096.55 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.27 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.23 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.19 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">1.08 K</td>
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
    <td style="white-space: nowrap">384.67 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">480.71 KB</td>
    <td>1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">480.71 KB</td>
    <td>1.25x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.12 K</td>
    <td style="white-space: nowrap; text-align: right">893.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.98%</td>
    <td style="white-space: nowrap; text-align: right">887.10 μs</td>
    <td style="white-space: nowrap; text-align: right">1069.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.09 K</td>
    <td style="white-space: nowrap; text-align: right">915.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.75%</td>
    <td style="white-space: nowrap; text-align: right">903.65 μs</td>
    <td style="white-space: nowrap; text-align: right">1138.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.09 K</td>
    <td style="white-space: nowrap; text-align: right">920.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.44%</td>
    <td style="white-space: nowrap; text-align: right">877.77 μs</td>
    <td style="white-space: nowrap; text-align: right">1225.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">0.99 K</td>
    <td style="white-space: nowrap; text-align: right">1015.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.29%</td>
    <td style="white-space: nowrap; text-align: right">983.36 μs</td>
    <td style="white-space: nowrap; text-align: right">1247.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">0.96 K</td>
    <td style="white-space: nowrap; text-align: right">1036.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.06%</td>
    <td style="white-space: nowrap; text-align: right">1014.44 μs</td>
    <td style="white-space: nowrap; text-align: right">1329.04 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.12 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.09 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.09 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">0.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">0.96 K</td>
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
    <td style="white-space: nowrap">590.18 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">407.09 KB</td>
    <td>0.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap; text-align: right">1015.36</td>
    <td style="white-space: nowrap; text-align: right">0.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.53%</td>
    <td style="white-space: nowrap; text-align: right">0.98 ms</td>
    <td style="white-space: nowrap; text-align: right">1.07 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">970.20</td>
    <td style="white-space: nowrap; text-align: right">1.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.84%</td>
    <td style="white-space: nowrap; text-align: right">1.01 ms</td>
    <td style="white-space: nowrap; text-align: right">1.29 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">923.34</td>
    <td style="white-space: nowrap; text-align: right">1.08 ms</td>
    <td style="white-space: nowrap; text-align: right">±17.06%</td>
    <td style="white-space: nowrap; text-align: right">1.01 ms</td>
    <td style="white-space: nowrap; text-align: right">1.67 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">842.01</td>
    <td style="white-space: nowrap; text-align: right">1.19 ms</td>
    <td style="white-space: nowrap; text-align: right">±17.16%</td>
    <td style="white-space: nowrap; text-align: right">1.10 ms</td>
    <td style="white-space: nowrap; text-align: right">1.61 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">822.84</td>
    <td style="white-space: nowrap; text-align: right">1.22 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.33%</td>
    <td style="white-space: nowrap; text-align: right">1.17 ms</td>
    <td style="white-space: nowrap; text-align: right">1.52 ms</td>
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
    <td style="white-space: nowrap;text-align: right">1015.36</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">970.20</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">923.34</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">842.01</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">822.84</td>
    <td style="white-space: nowrap; text-align: right">1.23x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">622.17 KB</td>
    <td>1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
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
    <td style="white-space: nowrap; text-align: right">887.50</td>
    <td style="white-space: nowrap; text-align: right">1.13 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.01%</td>
    <td style="white-space: nowrap; text-align: right">1.11 ms</td>
    <td style="white-space: nowrap; text-align: right">1.28 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">886.52</td>
    <td style="white-space: nowrap; text-align: right">1.13 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.68%</td>
    <td style="white-space: nowrap; text-align: right">1.11 ms</td>
    <td style="white-space: nowrap; text-align: right">1.38 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">839.45</td>
    <td style="white-space: nowrap; text-align: right">1.19 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.95%</td>
    <td style="white-space: nowrap; text-align: right">1.13 ms</td>
    <td style="white-space: nowrap; text-align: right">1.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">816.98</td>
    <td style="white-space: nowrap; text-align: right">1.22 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.67%</td>
    <td style="white-space: nowrap; text-align: right">1.22 ms</td>
    <td style="white-space: nowrap; text-align: right">1.31 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">773.50</td>
    <td style="white-space: nowrap; text-align: right">1.29 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.20%</td>
    <td style="white-space: nowrap; text-align: right">1.25 ms</td>
    <td style="white-space: nowrap; text-align: right">1.56 ms</td>
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
    <td style="white-space: nowrap;text-align: right">887.50</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">886.52</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">839.45</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">816.98</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">773.50</td>
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
    <td style="white-space: nowrap; text-align: right">445.19</td>
    <td style="white-space: nowrap; text-align: right">2.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.22%</td>
    <td style="white-space: nowrap; text-align: right">2.23 ms</td>
    <td style="white-space: nowrap; text-align: right">2.45 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">435.71</td>
    <td style="white-space: nowrap; text-align: right">2.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.18%</td>
    <td style="white-space: nowrap; text-align: right">2.27 ms</td>
    <td style="white-space: nowrap; text-align: right">2.63 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">426.87</td>
    <td style="white-space: nowrap; text-align: right">2.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.77%</td>
    <td style="white-space: nowrap; text-align: right">2.29 ms</td>
    <td style="white-space: nowrap; text-align: right">2.73 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">374.65</td>
    <td style="white-space: nowrap; text-align: right">2.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.74%</td>
    <td style="white-space: nowrap; text-align: right">2.66 ms</td>
    <td style="white-space: nowrap; text-align: right">2.96 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">324.20</td>
    <td style="white-space: nowrap; text-align: right">3.08 ms</td>
    <td style="white-space: nowrap; text-align: right">±73.87%</td>
    <td style="white-space: nowrap; text-align: right">2.44 ms</td>
    <td style="white-space: nowrap; text-align: right">11.27 ms</td>
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
    <td style="white-space: nowrap;text-align: right">445.19</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">435.71</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">426.87</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">374.65</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">324.20</td>
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
    <td style="white-space: nowrap">1.01 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">1.50 MB</td>
    <td>1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">1.50 MB</td>
    <td>1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">1.50 MB</td>
    <td>1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">1.63 MB</td>
    <td>1.61x</td>
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
    <td style="white-space: nowrap; text-align: right">294.23</td>
    <td style="white-space: nowrap; text-align: right">3.40 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.61%</td>
    <td style="white-space: nowrap; text-align: right">3.40 ms</td>
    <td style="white-space: nowrap; text-align: right">3.75 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">292.93</td>
    <td style="white-space: nowrap; text-align: right">3.41 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.68%</td>
    <td style="white-space: nowrap; text-align: right">3.36 ms</td>
    <td style="white-space: nowrap; text-align: right">3.81 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">285.95</td>
    <td style="white-space: nowrap; text-align: right">3.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.93%</td>
    <td style="white-space: nowrap; text-align: right">3.46 ms</td>
    <td style="white-space: nowrap; text-align: right">3.87 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">265.46</td>
    <td style="white-space: nowrap; text-align: right">3.77 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.03%</td>
    <td style="white-space: nowrap; text-align: right">3.78 ms</td>
    <td style="white-space: nowrap; text-align: right">4.07 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">251.15</td>
    <td style="white-space: nowrap; text-align: right">3.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.48%</td>
    <td style="white-space: nowrap; text-align: right">4.00 ms</td>
    <td style="white-space: nowrap; text-align: right">4.39 ms</td>
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
    <td style="white-space: nowrap;text-align: right">294.23</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">292.93</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">285.95</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">265.46</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">251.15</td>
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
    <td style="white-space: nowrap; text-align: right">218.07</td>
    <td style="white-space: nowrap; text-align: right">4.59 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.36%</td>
    <td style="white-space: nowrap; text-align: right">4.61 ms</td>
    <td style="white-space: nowrap; text-align: right">4.83 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">215.28</td>
    <td style="white-space: nowrap; text-align: right">4.65 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.28%</td>
    <td style="white-space: nowrap; text-align: right">4.64 ms</td>
    <td style="white-space: nowrap; text-align: right">4.97 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">212.46</td>
    <td style="white-space: nowrap; text-align: right">4.71 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.74%</td>
    <td style="white-space: nowrap; text-align: right">4.69 ms</td>
    <td style="white-space: nowrap; text-align: right">5.05 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">199.90</td>
    <td style="white-space: nowrap; text-align: right">5.00 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.52%</td>
    <td style="white-space: nowrap; text-align: right">4.96 ms</td>
    <td style="white-space: nowrap; text-align: right">5.44 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">185.85</td>
    <td style="white-space: nowrap; text-align: right">5.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.45%</td>
    <td style="white-space: nowrap; text-align: right">5.41 ms</td>
    <td style="white-space: nowrap; text-align: right">5.73 ms</td>
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
    <td style="white-space: nowrap;text-align: right">218.07</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">215.28</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">212.46</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">199.90</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">185.85</td>
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
    <td style="white-space: nowrap; text-align: right">176.29</td>
    <td style="white-space: nowrap; text-align: right">5.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.20%</td>
    <td style="white-space: nowrap; text-align: right">5.71 ms</td>
    <td style="white-space: nowrap; text-align: right">5.94 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">170.94</td>
    <td style="white-space: nowrap; text-align: right">5.85 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.89%</td>
    <td style="white-space: nowrap; text-align: right">5.85 ms</td>
    <td style="white-space: nowrap; text-align: right">6.42 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">168.23</td>
    <td style="white-space: nowrap; text-align: right">5.94 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.32%</td>
    <td style="white-space: nowrap; text-align: right">5.90 ms</td>
    <td style="white-space: nowrap; text-align: right">6.61 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">157.62</td>
    <td style="white-space: nowrap; text-align: right">6.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.88%</td>
    <td style="white-space: nowrap; text-align: right">6.35 ms</td>
    <td style="white-space: nowrap; text-align: right">6.73 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">148.87</td>
    <td style="white-space: nowrap; text-align: right">6.72 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.19%</td>
    <td style="white-space: nowrap; text-align: right">6.72 ms</td>
    <td style="white-space: nowrap; text-align: right">7.05 ms</td>
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
    <td style="white-space: nowrap;text-align: right">176.29</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">170.94</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">168.23</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">157.62</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">148.87</td>
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
    <td style="white-space: nowrap; text-align: right">143.55</td>
    <td style="white-space: nowrap; text-align: right">6.97 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.63%</td>
    <td style="white-space: nowrap; text-align: right">7.00 ms</td>
    <td style="white-space: nowrap; text-align: right">7.24 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">141.93</td>
    <td style="white-space: nowrap; text-align: right">7.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.67%</td>
    <td style="white-space: nowrap; text-align: right">7.03 ms</td>
    <td style="white-space: nowrap; text-align: right">7.38 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">136.87</td>
    <td style="white-space: nowrap; text-align: right">7.31 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.28%</td>
    <td style="white-space: nowrap; text-align: right">7.18 ms</td>
    <td style="white-space: nowrap; text-align: right">8.64 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">132.65</td>
    <td style="white-space: nowrap; text-align: right">7.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.82%</td>
    <td style="white-space: nowrap; text-align: right">7.50 ms</td>
    <td style="white-space: nowrap; text-align: right">8.69 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">123.13</td>
    <td style="white-space: nowrap; text-align: right">8.12 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.95%</td>
    <td style="white-space: nowrap; text-align: right">8.06 ms</td>
    <td style="white-space: nowrap; text-align: right">8.44 ms</td>
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
    <td style="white-space: nowrap;text-align: right">143.55</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">141.93</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">136.87</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">132.65</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">123.13</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">121.30</td>
    <td style="white-space: nowrap; text-align: right">8.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.52%</td>
    <td style="white-space: nowrap; text-align: right">8.22 ms</td>
    <td style="white-space: nowrap; text-align: right">8.42 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">120.61</td>
    <td style="white-space: nowrap; text-align: right">8.29 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.34%</td>
    <td style="white-space: nowrap; text-align: right">8.29 ms</td>
    <td style="white-space: nowrap; text-align: right">8.65 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">117.14</td>
    <td style="white-space: nowrap; text-align: right">8.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±20.11%</td>
    <td style="white-space: nowrap; text-align: right">8.07 ms</td>
    <td style="white-space: nowrap; text-align: right">14.47 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">113.43</td>
    <td style="white-space: nowrap; text-align: right">8.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.09%</td>
    <td style="white-space: nowrap; text-align: right">8.81 ms</td>
    <td style="white-space: nowrap; text-align: right">9.27 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">103.62</td>
    <td style="white-space: nowrap; text-align: right">9.65 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.42%</td>
    <td style="white-space: nowrap; text-align: right">9.53 ms</td>
    <td style="white-space: nowrap; text-align: right">11.15 ms</td>
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
    <td style="white-space: nowrap;text-align: right">121.30</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">120.61</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">117.14</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">113.43</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">103.62</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">5.95 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">5.95 MB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">3.56 MB</td>
    <td>0.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">5.09 MB</td>
    <td>0.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">5.04 MB</td>
    <td>0.85x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">106.55</td>
    <td style="white-space: nowrap; text-align: right">9.39 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.36%</td>
    <td style="white-space: nowrap; text-align: right">9.40 ms</td>
    <td style="white-space: nowrap; text-align: right">9.76 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">105.67</td>
    <td style="white-space: nowrap; text-align: right">9.46 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.31%</td>
    <td style="white-space: nowrap; text-align: right">9.33 ms</td>
    <td style="white-space: nowrap; text-align: right">11.39 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">104.31</td>
    <td style="white-space: nowrap; text-align: right">9.59 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.13%</td>
    <td style="white-space: nowrap; text-align: right">9.46 ms</td>
    <td style="white-space: nowrap; text-align: right">10.39 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">97.40</td>
    <td style="white-space: nowrap; text-align: right">10.27 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.78%</td>
    <td style="white-space: nowrap; text-align: right">10.21 ms</td>
    <td style="white-space: nowrap; text-align: right">11.22 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">91.41</td>
    <td style="white-space: nowrap; text-align: right">10.94 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.33%</td>
    <td style="white-space: nowrap; text-align: right">10.97 ms</td>
    <td style="white-space: nowrap; text-align: right">11.35 ms</td>
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
    <td style="white-space: nowrap;text-align: right">106.55</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">105.67</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">104.31</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">97.40</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">91.41</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">6.40 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">4.31 MB</td>
    <td>0.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">6.40 MB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">6.74 MB</td>
    <td>1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">5.84 MB</td>
    <td>0.91x</td>
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
    <td style="white-space: nowrap; text-align: right">97.62</td>
    <td style="white-space: nowrap; text-align: right">10.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.32%</td>
    <td style="white-space: nowrap; text-align: right">10.21 ms</td>
    <td style="white-space: nowrap; text-align: right">10.78 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">93.10</td>
    <td style="white-space: nowrap; text-align: right">10.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.80%</td>
    <td style="white-space: nowrap; text-align: right">10.83 ms</td>
    <td style="white-space: nowrap; text-align: right">11.18 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">92.99</td>
    <td style="white-space: nowrap; text-align: right">10.75 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.32%</td>
    <td style="white-space: nowrap; text-align: right">10.84 ms</td>
    <td style="white-space: nowrap; text-align: right">11.05 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">86.99</td>
    <td style="white-space: nowrap; text-align: right">11.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.33%</td>
    <td style="white-space: nowrap; text-align: right">11.43 ms</td>
    <td style="white-space: nowrap; text-align: right">11.89 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">80.88</td>
    <td style="white-space: nowrap; text-align: right">12.36 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.74%</td>
    <td style="white-space: nowrap; text-align: right">12.29 ms</td>
    <td style="white-space: nowrap; text-align: right">12.79 ms</td>
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
    <td style="white-space: nowrap;text-align: right">97.62</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">93.10</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">92.99</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">86.99</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">80.88</td>
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
    <td style="white-space: nowrap; text-align: right">86.16</td>
    <td style="white-space: nowrap; text-align: right">11.61 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.53%</td>
    <td style="white-space: nowrap; text-align: right">11.63 ms</td>
    <td style="white-space: nowrap; text-align: right">11.87 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">83.93</td>
    <td style="white-space: nowrap; text-align: right">11.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.82%</td>
    <td style="white-space: nowrap; text-align: right">11.99 ms</td>
    <td style="white-space: nowrap; text-align: right">12.68 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">81.40</td>
    <td style="white-space: nowrap; text-align: right">12.28 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.98%</td>
    <td style="white-space: nowrap; text-align: right">11.87 ms</td>
    <td style="white-space: nowrap; text-align: right">17.77 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">77.44</td>
    <td style="white-space: nowrap; text-align: right">12.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.70%</td>
    <td style="white-space: nowrap; text-align: right">12.86 ms</td>
    <td style="white-space: nowrap; text-align: right">13.52 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">71.76</td>
    <td style="white-space: nowrap; text-align: right">13.94 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.66%</td>
    <td style="white-space: nowrap; text-align: right">14.02 ms</td>
    <td style="white-space: nowrap; text-align: right">14.25 ms</td>
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
    <td style="white-space: nowrap;text-align: right">86.16</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">83.93</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">81.40</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">77.44</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">71.76</td>
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
    <td style="white-space: nowrap">6.29 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">7.72 MB</td>
    <td>1.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">41.24</td>
    <td style="white-space: nowrap; text-align: right">24.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.16%</td>
    <td style="white-space: nowrap; text-align: right">24.23 ms</td>
    <td style="white-space: nowrap; text-align: right">25.16 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">41.24</td>
    <td style="white-space: nowrap; text-align: right">24.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.99%</td>
    <td style="white-space: nowrap; text-align: right">23.85 ms</td>
    <td style="white-space: nowrap; text-align: right">29.76 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">40.96</td>
    <td style="white-space: nowrap; text-align: right">24.42 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.48%</td>
    <td style="white-space: nowrap; text-align: right">24.40 ms</td>
    <td style="white-space: nowrap; text-align: right">25.27 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">38.08</td>
    <td style="white-space: nowrap; text-align: right">26.26 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.17%</td>
    <td style="white-space: nowrap; text-align: right">26.25 ms</td>
    <td style="white-space: nowrap; text-align: right">26.99 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">33.35</td>
    <td style="white-space: nowrap; text-align: right">29.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.72%</td>
    <td style="white-space: nowrap; text-align: right">28.66 ms</td>
    <td style="white-space: nowrap; text-align: right">42.95 ms</td>
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
    <td style="white-space: nowrap;text-align: right">41.24</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">41.24</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">40.96</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">38.08</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">33.35</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">16.68 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">9.96 MB</td>
    <td>0.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">16.68 MB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">16.56 MB</td>
    <td>0.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">16.17 MB</td>
    <td>0.97x</td>
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
    <td style="white-space: nowrap; text-align: right">27.67</td>
    <td style="white-space: nowrap; text-align: right">36.15 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.47%</td>
    <td style="white-space: nowrap; text-align: right">35.75 ms</td>
    <td style="white-space: nowrap; text-align: right">41.98 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">25.88</td>
    <td style="white-space: nowrap; text-align: right">38.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.55%</td>
    <td style="white-space: nowrap; text-align: right">37.21 ms</td>
    <td style="white-space: nowrap; text-align: right">46.17 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">25.55</td>
    <td style="white-space: nowrap; text-align: right">39.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.56%</td>
    <td style="white-space: nowrap; text-align: right">37.49 ms</td>
    <td style="white-space: nowrap; text-align: right">47.09 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">24.28</td>
    <td style="white-space: nowrap; text-align: right">41.19 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.57%</td>
    <td style="white-space: nowrap; text-align: right">39.18 ms</td>
    <td style="white-space: nowrap; text-align: right">49.43 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">23.24</td>
    <td style="white-space: nowrap; text-align: right">43.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.19%</td>
    <td style="white-space: nowrap; text-align: right">42.89 ms</td>
    <td style="white-space: nowrap; text-align: right">44.34 ms</td>
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
    <td style="white-space: nowrap;text-align: right">27.67</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">25.88</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">25.55</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">24.28</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">23.24</td>
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
    <td style="white-space: nowrap">15.94 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">24.80 MB</td>
    <td>1.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap; text-align: right">19.49</td>
    <td style="white-space: nowrap; text-align: right">51.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.43%</td>
    <td style="white-space: nowrap; text-align: right">48.94 ms</td>
    <td style="white-space: nowrap; text-align: right">68.27 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">19.28</td>
    <td style="white-space: nowrap; text-align: right">51.87 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.86%</td>
    <td style="white-space: nowrap; text-align: right">49.83 ms</td>
    <td style="white-space: nowrap; text-align: right">62.08 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">18.06</td>
    <td style="white-space: nowrap; text-align: right">55.37 ms</td>
    <td style="white-space: nowrap; text-align: right">±24.80%</td>
    <td style="white-space: nowrap; text-align: right">49.99 ms</td>
    <td style="white-space: nowrap; text-align: right">92.63 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">17.85</td>
    <td style="white-space: nowrap; text-align: right">56.01 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.97%</td>
    <td style="white-space: nowrap; text-align: right">52.93 ms</td>
    <td style="white-space: nowrap; text-align: right">67.38 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">16.23</td>
    <td style="white-space: nowrap; text-align: right">61.62 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.94%</td>
    <td style="white-space: nowrap; text-align: right">58.78 ms</td>
    <td style="white-space: nowrap; text-align: right">70.06 ms</td>
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
    <td style="white-space: nowrap;text-align: right">19.49</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">19.28</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">18.06</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">17.85</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">16.23</td>
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
    <td style="white-space: nowrap">20.90 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">30.39 MB</td>
    <td>1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap; text-align: right">15.20</td>
    <td style="white-space: nowrap; text-align: right">65.78 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.38%</td>
    <td style="white-space: nowrap; text-align: right">61.20 ms</td>
    <td style="white-space: nowrap; text-align: right">91.50 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">12.65</td>
    <td style="white-space: nowrap; text-align: right">79.06 ms</td>
    <td style="white-space: nowrap; text-align: right">±57.18%</td>
    <td style="white-space: nowrap; text-align: right">62.59 ms</td>
    <td style="white-space: nowrap; text-align: right">198.79 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.61</td>
    <td style="white-space: nowrap; text-align: right">79.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±56.48%</td>
    <td style="white-space: nowrap; text-align: right">63.04 ms</td>
    <td style="white-space: nowrap; text-align: right">197.94 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">11.87</td>
    <td style="white-space: nowrap; text-align: right">84.22 ms</td>
    <td style="white-space: nowrap; text-align: right">±52.48%</td>
    <td style="white-space: nowrap; text-align: right">68.29 ms</td>
    <td style="white-space: nowrap; text-align: right">201.38 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">11.11</td>
    <td style="white-space: nowrap; text-align: right">90.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±48.89%</td>
    <td style="white-space: nowrap; text-align: right">74.33 ms</td>
    <td style="white-space: nowrap; text-align: right">206.84 ms</td>
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
    <td style="white-space: nowrap;text-align: right">15.20</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">12.65</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.61</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">11.87</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">11.11</td>
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
    <td style="white-space: nowrap">28.53 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">39.50 MB</td>
    <td>1.38x</td>
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
    <td style="white-space: nowrap; text-align: right">12.57</td>
    <td style="white-space: nowrap; text-align: right">79.55 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.13%</td>
    <td style="white-space: nowrap; text-align: right">75.88 ms</td>
    <td style="white-space: nowrap; text-align: right">96.50 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.32</td>
    <td style="white-space: nowrap; text-align: right">81.17 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.95%</td>
    <td style="white-space: nowrap; text-align: right">77.06 ms</td>
    <td style="white-space: nowrap; text-align: right">95.12 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">11.81</td>
    <td style="white-space: nowrap; text-align: right">84.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.58%</td>
    <td style="white-space: nowrap; text-align: right">80.85 ms</td>
    <td style="white-space: nowrap; text-align: right">99.64 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">11.01</td>
    <td style="white-space: nowrap; text-align: right">90.81 ms</td>
    <td style="white-space: nowrap; text-align: right">±49.23%</td>
    <td style="white-space: nowrap; text-align: right">73.75 ms</td>
    <td style="white-space: nowrap; text-align: right">209.20 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">7.06</td>
    <td style="white-space: nowrap; text-align: right">141.69 ms</td>
    <td style="white-space: nowrap; text-align: right">±57.42%</td>
    <td style="white-space: nowrap; text-align: right">106.93 ms</td>
    <td style="white-space: nowrap; text-align: right">283.35 ms</td>
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
    <td style="white-space: nowrap;text-align: right">12.57</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.32</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">11.81</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">11.01</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">7.06</td>
    <td style="white-space: nowrap; text-align: right">1.78x</td>
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
    <td style="white-space: nowrap">47.21 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
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
    <td style="white-space: nowrap; text-align: right">10.92</td>
    <td style="white-space: nowrap; text-align: right">91.57 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.82%</td>
    <td style="white-space: nowrap; text-align: right">87.46 ms</td>
    <td style="white-space: nowrap; text-align: right">106.93 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.81</td>
    <td style="white-space: nowrap; text-align: right">262.68 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.28%</td>
    <td style="white-space: nowrap; text-align: right">239.78 ms</td>
    <td style="white-space: nowrap; text-align: right">308.76 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.80</td>
    <td style="white-space: nowrap; text-align: right">263.26 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.75%</td>
    <td style="white-space: nowrap; text-align: right">240.30 ms</td>
    <td style="white-space: nowrap; text-align: right">306.61 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.71</td>
    <td style="white-space: nowrap; text-align: right">269.53 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.42%</td>
    <td style="white-space: nowrap; text-align: right">245.57 ms</td>
    <td style="white-space: nowrap; text-align: right">317.00 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.57</td>
    <td style="white-space: nowrap; text-align: right">279.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.63%</td>
    <td style="white-space: nowrap; text-align: right">249.34 ms</td>
    <td style="white-space: nowrap; text-align: right">333.60 ms</td>
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
    <td style="white-space: nowrap;text-align: right">10.92</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.81</td>
    <td style="white-space: nowrap; text-align: right">2.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.80</td>
    <td style="white-space: nowrap; text-align: right">2.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.71</td>
    <td style="white-space: nowrap; text-align: right">2.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.57</td>
    <td style="white-space: nowrap; text-align: right">3.06x</td>
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
    <td style="white-space: nowrap; text-align: right">9.65</td>
    <td style="white-space: nowrap; text-align: right">103.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.51%</td>
    <td style="white-space: nowrap; text-align: right">99.67 ms</td>
    <td style="white-space: nowrap; text-align: right">118.87 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.70</td>
    <td style="white-space: nowrap; text-align: right">270.62 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.40%</td>
    <td style="white-space: nowrap; text-align: right">251.85 ms</td>
    <td style="white-space: nowrap; text-align: right">345.04 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.69</td>
    <td style="white-space: nowrap; text-align: right">271.29 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.03%</td>
    <td style="white-space: nowrap; text-align: right">256.30 ms</td>
    <td style="white-space: nowrap; text-align: right">339.26 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.65</td>
    <td style="white-space: nowrap; text-align: right">273.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.62%</td>
    <td style="white-space: nowrap; text-align: right">256.71 ms</td>
    <td style="white-space: nowrap; text-align: right">340.60 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.54</td>
    <td style="white-space: nowrap; text-align: right">282.40 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.97%</td>
    <td style="white-space: nowrap; text-align: right">268.95 ms</td>
    <td style="white-space: nowrap; text-align: right">347.44 ms</td>
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
    <td style="white-space: nowrap;text-align: right">9.65</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.70</td>
    <td style="white-space: nowrap; text-align: right">2.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.69</td>
    <td style="white-space: nowrap; text-align: right">2.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.65</td>
    <td style="white-space: nowrap; text-align: right">2.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.54</td>
    <td style="white-space: nowrap; text-align: right">2.72x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">58.43 MB</td>
    <td>1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.50</td>
    <td style="white-space: nowrap; text-align: right">285.65 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.64%</td>
    <td style="white-space: nowrap; text-align: right">273.97 ms</td>
    <td style="white-space: nowrap; text-align: right">344.66 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">3.50</td>
    <td style="white-space: nowrap; text-align: right">285.84 ms</td>
    <td style="white-space: nowrap; text-align: right">±20.15%</td>
    <td style="white-space: nowrap; text-align: right">259.98 ms</td>
    <td style="white-space: nowrap; text-align: right">388.81 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.47</td>
    <td style="white-space: nowrap; text-align: right">288.57 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.76%</td>
    <td style="white-space: nowrap; text-align: right">270.95 ms</td>
    <td style="white-space: nowrap; text-align: right">354.12 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.38</td>
    <td style="white-space: nowrap; text-align: right">295.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.10%</td>
    <td style="white-space: nowrap; text-align: right">281.10 ms</td>
    <td style="white-space: nowrap; text-align: right">359.21 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.33</td>
    <td style="white-space: nowrap; text-align: right">300.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.92%</td>
    <td style="white-space: nowrap; text-align: right">283.09 ms</td>
    <td style="white-space: nowrap; text-align: right">369.37 ms</td>
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
    <td style="white-space: nowrap;text-align: right">3.50</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">3.50</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.47</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.38</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">3.33</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
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
    <td style="white-space: nowrap">66.92 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">48.63 MB</td>
    <td>0.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">66.92 MB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">69.75 MB</td>
    <td>1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap">61.46 MB</td>
    <td>0.92x</td>
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
    <td style="white-space: nowrap; text-align: right">3.25</td>
    <td style="white-space: nowrap; text-align: right">307.23 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.38%</td>
    <td style="white-space: nowrap; text-align: right">289.85 ms</td>
    <td style="white-space: nowrap; text-align: right">364.04 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.18</td>
    <td style="white-space: nowrap; text-align: right">314.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.60%</td>
    <td style="white-space: nowrap; text-align: right">299.08 ms</td>
    <td style="white-space: nowrap; text-align: right">377.22 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.16</td>
    <td style="white-space: nowrap; text-align: right">316.43 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.76%</td>
    <td style="white-space: nowrap; text-align: right">301.78 ms</td>
    <td style="white-space: nowrap; text-align: right">375.97 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.11</td>
    <td style="white-space: nowrap; text-align: right">321.65 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.03%</td>
    <td style="white-space: nowrap; text-align: right">306.77 ms</td>
    <td style="white-space: nowrap; text-align: right">383.32 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.95</td>
    <td style="white-space: nowrap; text-align: right">339.29 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.81%</td>
    <td style="white-space: nowrap; text-align: right">318.88 ms</td>
    <td style="white-space: nowrap; text-align: right">404.45 ms</td>
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
    <td style="white-space: nowrap;text-align: right">3.25</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.18</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.16</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.11</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.into</td>
    <td style="white-space: nowrap; text-align: right">2.95</td>
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

