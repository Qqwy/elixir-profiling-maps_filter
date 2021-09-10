
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
    <td style="white-space: nowrap">500 ms</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">500 ms</td>
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
    <td style="white-space: nowrap; text-align: right">471.14 K</td>
    <td style="white-space: nowrap; text-align: right">2.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.01%</td>
    <td style="white-space: nowrap; text-align: right">2.14 μs</td>
    <td style="white-space: nowrap; text-align: right">2.23 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">470.70 K</td>
    <td style="white-space: nowrap; text-align: right">2.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.74%</td>
    <td style="white-space: nowrap; text-align: right">2.11 μs</td>
    <td style="white-space: nowrap; text-align: right">2.23 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">447.83 K</td>
    <td style="white-space: nowrap; text-align: right">2.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.49%</td>
    <td style="white-space: nowrap; text-align: right">2.22 μs</td>
    <td style="white-space: nowrap; text-align: right">2.33 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">399.24 K</td>
    <td style="white-space: nowrap; text-align: right">2.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.50%</td>
    <td style="white-space: nowrap; text-align: right">2.50 μs</td>
    <td style="white-space: nowrap; text-align: right">2.61 μs</td>
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
    <td style="white-space: nowrap;text-align: right">471.14 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">470.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">447.83 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">399.24 K</td>
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
    <td style="white-space: nowrap; text-align: right">466.64 K</td>
    <td style="white-space: nowrap; text-align: right">2.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.50%</td>
    <td style="white-space: nowrap; text-align: right">2.07 μs</td>
    <td style="white-space: nowrap; text-align: right">2.46 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">419.46 K</td>
    <td style="white-space: nowrap; text-align: right">2.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.48%</td>
    <td style="white-space: nowrap; text-align: right">2.36 μs</td>
    <td style="white-space: nowrap; text-align: right">2.65 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">399.92 K</td>
    <td style="white-space: nowrap; text-align: right">2.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.80%</td>
    <td style="white-space: nowrap; text-align: right">2.48 μs</td>
    <td style="white-space: nowrap; text-align: right">2.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">167.43 K</td>
    <td style="white-space: nowrap; text-align: right">5.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±114.59%</td>
    <td style="white-space: nowrap; text-align: right">2.56 μs</td>
    <td style="white-space: nowrap; text-align: right">16.24 μs</td>
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
    <td style="white-space: nowrap;text-align: right">466.64 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">419.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">399.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">167.43 K</td>
    <td style="white-space: nowrap; text-align: right">2.79x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">216 B</td>
    <td>0.82x</td>
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
    <td style="white-space: nowrap; text-align: right">457.30 K</td>
    <td style="white-space: nowrap; text-align: right">2.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.53%</td>
    <td style="white-space: nowrap; text-align: right">2.15 μs</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">431.69 K</td>
    <td style="white-space: nowrap; text-align: right">2.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.74%</td>
    <td style="white-space: nowrap; text-align: right">2.25 μs</td>
    <td style="white-space: nowrap; text-align: right">2.58 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">377.29 K</td>
    <td style="white-space: nowrap; text-align: right">2.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.65%</td>
    <td style="white-space: nowrap; text-align: right">2.73 μs</td>
    <td style="white-space: nowrap; text-align: right">2.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">127.19 K</td>
    <td style="white-space: nowrap; text-align: right">7.86 μs</td>
    <td style="white-space: nowrap; text-align: right">±125.27%</td>
    <td style="white-space: nowrap; text-align: right">3.01 μs</td>
    <td style="white-space: nowrap; text-align: right">22.63 μs</td>
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
    <td style="white-space: nowrap;text-align: right">457.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">431.69 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">377.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">127.19 K</td>
    <td style="white-space: nowrap; text-align: right">3.6x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">320 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">376 B</td>
    <td>1.18x</td>
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
    <td style="white-space: nowrap; text-align: right">407.37 K</td>
    <td style="white-space: nowrap; text-align: right">2.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.62%</td>
    <td style="white-space: nowrap; text-align: right">2.49 μs</td>
    <td style="white-space: nowrap; text-align: right">2.63 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">405.39 K</td>
    <td style="white-space: nowrap; text-align: right">2.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.48%</td>
    <td style="white-space: nowrap; text-align: right">2.41 μs</td>
    <td style="white-space: nowrap; text-align: right">2.92 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">386.44 K</td>
    <td style="white-space: nowrap; text-align: right">2.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.70%</td>
    <td style="white-space: nowrap; text-align: right">2.62 μs</td>
    <td style="white-space: nowrap; text-align: right">2.71 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">355.59 K</td>
    <td style="white-space: nowrap; text-align: right">2.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.61%</td>
    <td style="white-space: nowrap; text-align: right">2.78 μs</td>
    <td style="white-space: nowrap; text-align: right">2.92 μs</td>
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
    <td style="white-space: nowrap;text-align: right">407.37 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">405.39 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">386.44 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">355.59 K</td>
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
    <td style="white-space: nowrap; text-align: right">412.84 K</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.66%</td>
    <td style="white-space: nowrap; text-align: right">2.46 μs</td>
    <td style="white-space: nowrap; text-align: right">2.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">387.45 K</td>
    <td style="white-space: nowrap; text-align: right">2.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.30%</td>
    <td style="white-space: nowrap; text-align: right">2.56 μs</td>
    <td style="white-space: nowrap; text-align: right">2.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">346.14 K</td>
    <td style="white-space: nowrap; text-align: right">2.89 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.86%</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
    <td style="white-space: nowrap; text-align: right">3.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">169.74 K</td>
    <td style="white-space: nowrap; text-align: right">5.89 μs</td>
    <td style="white-space: nowrap; text-align: right">±113.04%</td>
    <td style="white-space: nowrap; text-align: right">2.68 μs</td>
    <td style="white-space: nowrap; text-align: right">15.88 μs</td>
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
    <td style="white-space: nowrap;text-align: right">412.84 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">387.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">346.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">169.74 K</td>
    <td style="white-space: nowrap; text-align: right">2.43x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">544 B</td>
    <td>1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">488 B</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">430.48 K</td>
    <td style="white-space: nowrap; text-align: right">2.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.84%</td>
    <td style="white-space: nowrap; text-align: right">2.33 μs</td>
    <td style="white-space: nowrap; text-align: right">2.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">377.54 K</td>
    <td style="white-space: nowrap; text-align: right">2.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.48%</td>
    <td style="white-space: nowrap; text-align: right">2.67 μs</td>
    <td style="white-space: nowrap; text-align: right">2.83 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">356.95 K</td>
    <td style="white-space: nowrap; text-align: right">2.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.77%</td>
    <td style="white-space: nowrap; text-align: right">2.78 μs</td>
    <td style="white-space: nowrap; text-align: right">3.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">171.58 K</td>
    <td style="white-space: nowrap; text-align: right">5.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±110.84%</td>
    <td style="white-space: nowrap; text-align: right">2.68 μs</td>
    <td style="white-space: nowrap; text-align: right">15.51 μs</td>
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
    <td style="white-space: nowrap;text-align: right">430.48 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">377.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">356.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">171.58 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">656 B</td>
    <td>1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">456 B</td>
    <td>0.76x</td>
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
    <td style="white-space: nowrap; text-align: right">378.72 K</td>
    <td style="white-space: nowrap; text-align: right">2.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.30%</td>
    <td style="white-space: nowrap; text-align: right">2.52 μs</td>
    <td style="white-space: nowrap; text-align: right">3.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">364.30 K</td>
    <td style="white-space: nowrap; text-align: right">2.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.39%</td>
    <td style="white-space: nowrap; text-align: right">2.80 μs</td>
    <td style="white-space: nowrap; text-align: right">3 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">326.72 K</td>
    <td style="white-space: nowrap; text-align: right">3.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.21%</td>
    <td style="white-space: nowrap; text-align: right">2.93 μs</td>
    <td style="white-space: nowrap; text-align: right">3.60 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">164.08 K</td>
    <td style="white-space: nowrap; text-align: right">6.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±106.88%</td>
    <td style="white-space: nowrap; text-align: right">2.95 μs</td>
    <td style="white-space: nowrap; text-align: right">15.86 μs</td>
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
    <td style="white-space: nowrap;text-align: right">378.72 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">364.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">326.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">164.08 K</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">488 B</td>
<td>&nbsp;</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">656 B</td>
    <td>1.34x</td>
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
    <td style="white-space: nowrap; text-align: right">397.38 K</td>
    <td style="white-space: nowrap; text-align: right">2.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.34%</td>
    <td style="white-space: nowrap; text-align: right">2.50 μs</td>
    <td style="white-space: nowrap; text-align: right">2.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">362.02 K</td>
    <td style="white-space: nowrap; text-align: right">2.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.58%</td>
    <td style="white-space: nowrap; text-align: right">2.79 μs</td>
    <td style="white-space: nowrap; text-align: right">2.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">167.86 K</td>
    <td style="white-space: nowrap; text-align: right">5.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±112.07%</td>
    <td style="white-space: nowrap; text-align: right">2.70 μs</td>
    <td style="white-space: nowrap; text-align: right">15.97 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">152.10 K</td>
    <td style="white-space: nowrap; text-align: right">6.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±101.89%</td>
    <td style="white-space: nowrap; text-align: right">3.36 μs</td>
    <td style="white-space: nowrap; text-align: right">16.62 μs</td>
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
    <td style="white-space: nowrap;text-align: right">397.38 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">362.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">167.86 K</td>
    <td style="white-space: nowrap; text-align: right">2.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">152.10 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">768 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">768 B</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">377.18 K</td>
    <td style="white-space: nowrap; text-align: right">2.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.52%</td>
    <td style="white-space: nowrap; text-align: right">2.65 μs</td>
    <td style="white-space: nowrap; text-align: right">2.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">354.17 K</td>
    <td style="white-space: nowrap; text-align: right">2.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.65%</td>
    <td style="white-space: nowrap; text-align: right">2.74 μs</td>
    <td style="white-space: nowrap; text-align: right">3.33 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">312.62 K</td>
    <td style="white-space: nowrap; text-align: right">3.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.00%</td>
    <td style="white-space: nowrap; text-align: right">3.28 μs</td>
    <td style="white-space: nowrap; text-align: right">3.37 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">108.96 K</td>
    <td style="white-space: nowrap; text-align: right">9.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±83.79%</td>
    <td style="white-space: nowrap; text-align: right">9.27 μs</td>
    <td style="white-space: nowrap; text-align: right">15.92 μs</td>
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
    <td style="white-space: nowrap;text-align: right">377.18 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">354.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">312.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">108.96 K</td>
    <td style="white-space: nowrap; text-align: right">3.46x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">824 B</td>
    <td>1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">880 B</td>
    <td>1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">824 B</td>
    <td>1.36x</td>
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
    <td style="white-space: nowrap; text-align: right">358.62 K</td>
    <td style="white-space: nowrap; text-align: right">2.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.76%</td>
    <td style="white-space: nowrap; text-align: right">2.71 μs</td>
    <td style="white-space: nowrap; text-align: right">3.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">358.29 K</td>
    <td style="white-space: nowrap; text-align: right">2.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.20%</td>
    <td style="white-space: nowrap; text-align: right">2.78 μs</td>
    <td style="white-space: nowrap; text-align: right">2.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">349.10 K</td>
    <td style="white-space: nowrap; text-align: right">2.86 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.05%</td>
    <td style="white-space: nowrap; text-align: right">2.80 μs</td>
    <td style="white-space: nowrap; text-align: right">3.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">310.66 K</td>
    <td style="white-space: nowrap; text-align: right">3.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.77%</td>
    <td style="white-space: nowrap; text-align: right">3.18 μs</td>
    <td style="white-space: nowrap; text-align: right">3.48 μs</td>
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
    <td style="white-space: nowrap;text-align: right">358.62 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">358.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">349.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">310.66 K</td>
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
    <td style="white-space: nowrap">936 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">696 B</td>
    <td>0.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">936 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">992 B</td>
    <td>1.06x</td>
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
    <td style="white-space: nowrap; text-align: right">350.32 K</td>
    <td style="white-space: nowrap; text-align: right">2.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.32%</td>
    <td style="white-space: nowrap; text-align: right">2.81 μs</td>
    <td style="white-space: nowrap; text-align: right">3.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">334.48 K</td>
    <td style="white-space: nowrap; text-align: right">2.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.31%</td>
    <td style="white-space: nowrap; text-align: right">3.02 μs</td>
    <td style="white-space: nowrap; text-align: right">3.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">323.21 K</td>
    <td style="white-space: nowrap; text-align: right">3.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.31%</td>
    <td style="white-space: nowrap; text-align: right">3.08 μs</td>
    <td style="white-space: nowrap; text-align: right">3.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">267.00 K</td>
    <td style="white-space: nowrap; text-align: right">3.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.57%</td>
    <td style="white-space: nowrap; text-align: right">3.42 μs</td>
    <td style="white-space: nowrap; text-align: right">5.10 μs</td>
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
    <td style="white-space: nowrap;text-align: right">350.32 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">334.48 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">323.21 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">267.00 K</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">1.08 KB</td>
    <td>0.62x</td>
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
    <td style="white-space: nowrap; text-align: right">322.29 K</td>
    <td style="white-space: nowrap; text-align: right">3.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.47%</td>
    <td style="white-space: nowrap; text-align: right">3.06 μs</td>
    <td style="white-space: nowrap; text-align: right">3.43 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">311.92 K</td>
    <td style="white-space: nowrap; text-align: right">3.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±1.52%</td>
    <td style="white-space: nowrap; text-align: right">3.22 μs</td>
    <td style="white-space: nowrap; text-align: right">3.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">284.62 K</td>
    <td style="white-space: nowrap; text-align: right">3.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.37%</td>
    <td style="white-space: nowrap; text-align: right">3.48 μs</td>
    <td style="white-space: nowrap; text-align: right">3.73 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">264.43 K</td>
    <td style="white-space: nowrap; text-align: right">3.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.97%</td>
    <td style="white-space: nowrap; text-align: right">3.69 μs</td>
    <td style="white-space: nowrap; text-align: right">4.12 μs</td>
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
    <td style="white-space: nowrap;text-align: right">322.29 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">311.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">284.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">264.43 K</td>
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
    <td style="white-space: nowrap">1.59 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">2.55 KB</td>
    <td>1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">2.55 KB</td>
    <td>1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">1.67 KB</td>
    <td>1.05x</td>
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
    <td style="white-space: nowrap; text-align: right">184.39 K</td>
    <td style="white-space: nowrap; text-align: right">5.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.25%</td>
    <td style="white-space: nowrap; text-align: right">5.35 μs</td>
    <td style="white-space: nowrap; text-align: right">5.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">171.74 K</td>
    <td style="white-space: nowrap; text-align: right">5.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.96%</td>
    <td style="white-space: nowrap; text-align: right">5.95 μs</td>
    <td style="white-space: nowrap; text-align: right">6.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">157.69 K</td>
    <td style="white-space: nowrap; text-align: right">6.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.57%</td>
    <td style="white-space: nowrap; text-align: right">6.37 μs</td>
    <td style="white-space: nowrap; text-align: right">6.65 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">113.21 K</td>
    <td style="white-space: nowrap; text-align: right">8.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±72.74%</td>
    <td style="white-space: nowrap; text-align: right">5.74 μs</td>
    <td style="white-space: nowrap; text-align: right">18.47 μs</td>
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
    <td style="white-space: nowrap;text-align: right">184.39 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">171.74 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">157.69 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">113.21 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">2.14 KB</td>
    <td>1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">2.20 KB</td>
    <td>1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">2.14 KB</td>
    <td>1.47x</td>
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
    <td style="white-space: nowrap; text-align: right">163.17 K</td>
    <td style="white-space: nowrap; text-align: right">6.13 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.11%</td>
    <td style="white-space: nowrap; text-align: right">6.11 μs</td>
    <td style="white-space: nowrap; text-align: right">6.42 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">155.47 K</td>
    <td style="white-space: nowrap; text-align: right">6.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.55%</td>
    <td style="white-space: nowrap; text-align: right">6.39 μs</td>
    <td style="white-space: nowrap; text-align: right">6.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">126.40 K</td>
    <td style="white-space: nowrap; text-align: right">7.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.14%</td>
    <td style="white-space: nowrap; text-align: right">7.03 μs</td>
    <td style="white-space: nowrap; text-align: right">11.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">72.34 K</td>
    <td style="white-space: nowrap; text-align: right">13.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±56.87%</td>
    <td style="white-space: nowrap; text-align: right">13.83 μs</td>
    <td style="white-space: nowrap; text-align: right">20.69 μs</td>
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
    <td style="white-space: nowrap;text-align: right">163.17 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">155.47 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">126.40 K</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">72.34 K</td>
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
    <td style="white-space: nowrap">3.65 KB</td>
    <td>1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.70 KB</td>
    <td>1.41x</td>
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
    <td style="white-space: nowrap; text-align: right">139.93 K</td>
    <td style="white-space: nowrap; text-align: right">7.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.06%</td>
    <td style="white-space: nowrap; text-align: right">7.20 μs</td>
    <td style="white-space: nowrap; text-align: right">7.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">122.12 K</td>
    <td style="white-space: nowrap; text-align: right">8.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.92%</td>
    <td style="white-space: nowrap; text-align: right">8.24 μs</td>
    <td style="white-space: nowrap; text-align: right">8.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">93.06 K</td>
    <td style="white-space: nowrap; text-align: right">10.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±62.99%</td>
    <td style="white-space: nowrap; text-align: right">7.49 μs</td>
    <td style="white-space: nowrap; text-align: right">20.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">73.44 K</td>
    <td style="white-space: nowrap; text-align: right">13.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±55.60%</td>
    <td style="white-space: nowrap; text-align: right">13.62 μs</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap;text-align: right">139.93 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">122.12 K</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">93.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">73.44 K</td>
    <td style="white-space: nowrap; text-align: right">1.91x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.53 KB</td>
    <td>1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">3.53 KB</td>
    <td>1.35x</td>
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
    <td style="white-space: nowrap; text-align: right">65.08 K</td>
    <td style="white-space: nowrap; text-align: right">15.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.19%</td>
    <td style="white-space: nowrap; text-align: right">15.28 μs</td>
    <td style="white-space: nowrap; text-align: right">16.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">54.00 K</td>
    <td style="white-space: nowrap; text-align: right">18.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±35.48%</td>
    <td style="white-space: nowrap; text-align: right">15.32 μs</td>
    <td style="white-space: nowrap; text-align: right">28.37 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">43.12 K</td>
    <td style="white-space: nowrap; text-align: right">23.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±33.62%</td>
    <td style="white-space: nowrap; text-align: right">23.25 μs</td>
    <td style="white-space: nowrap; text-align: right">29.98 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">31.83 K</td>
    <td style="white-space: nowrap; text-align: right">31.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±35.63%</td>
    <td style="white-space: nowrap; text-align: right">34.35 μs</td>
    <td style="white-space: nowrap; text-align: right">40.25 μs</td>
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
    <td style="white-space: nowrap;text-align: right">65.08 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">54.00 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">43.12 K</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">31.83 K</td>
    <td style="white-space: nowrap; text-align: right">2.04x</td>
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
    <td style="white-space: nowrap">5.28 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">3.51 KB</td>
    <td>0.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">5.34 KB</td>
    <td>1.01x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">59.84 K</td>
    <td style="white-space: nowrap; text-align: right">16.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±1.17%</td>
    <td style="white-space: nowrap; text-align: right">16.66 μs</td>
    <td style="white-space: nowrap; text-align: right">16.98 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">59.68 K</td>
    <td style="white-space: nowrap; text-align: right">16.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.64%</td>
    <td style="white-space: nowrap; text-align: right">16.79 μs</td>
    <td style="white-space: nowrap; text-align: right">17.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">57.06 K</td>
    <td style="white-space: nowrap; text-align: right">17.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±1.52%</td>
    <td style="white-space: nowrap; text-align: right">17.54 μs</td>
    <td style="white-space: nowrap; text-align: right">17.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">44.55 K</td>
    <td style="white-space: nowrap; text-align: right">22.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±31.77%</td>
    <td style="white-space: nowrap; text-align: right">21.91 μs</td>
    <td style="white-space: nowrap; text-align: right">29.76 μs</td>
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
    <td style="white-space: nowrap;text-align: right">59.84 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">59.68 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">57.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">44.55 K</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">3.62 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">54.31 K</td>
    <td style="white-space: nowrap; text-align: right">18.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.77%</td>
    <td style="white-space: nowrap; text-align: right">17.97 μs</td>
    <td style="white-space: nowrap; text-align: right">20.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">49.58 K</td>
    <td style="white-space: nowrap; text-align: right">20.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.77%</td>
    <td style="white-space: nowrap; text-align: right">17.90 μs</td>
    <td style="white-space: nowrap; text-align: right">27.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">45.26 K</td>
    <td style="white-space: nowrap; text-align: right">22.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.62%</td>
    <td style="white-space: nowrap; text-align: right">19.08 μs</td>
    <td style="white-space: nowrap; text-align: right">32.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">43.49 K</td>
    <td style="white-space: nowrap; text-align: right">22.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±49.28%</td>
    <td style="white-space: nowrap; text-align: right">17.38 μs</td>
    <td style="white-space: nowrap; text-align: right">39.99 μs</td>
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
    <td style="white-space: nowrap;text-align: right">54.31 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">49.58 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">45.26 K</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">43.49 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">8.08 KB</td>
<td>&nbsp;</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">46.21 K</td>
    <td style="white-space: nowrap; text-align: right">21.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.51%</td>
    <td style="white-space: nowrap; text-align: right">18.66 μs</td>
    <td style="white-space: nowrap; text-align: right">31.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">45.59 K</td>
    <td style="white-space: nowrap; text-align: right">21.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±28.04%</td>
    <td style="white-space: nowrap; text-align: right">19.01 μs</td>
    <td style="white-space: nowrap; text-align: right">31.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">39.78 K</td>
    <td style="white-space: nowrap; text-align: right">25.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.95%</td>
    <td style="white-space: nowrap; text-align: right">25.08 μs</td>
    <td style="white-space: nowrap; text-align: right">32.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">37.95 K</td>
    <td style="white-space: nowrap; text-align: right">26.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±28.21%</td>
    <td style="white-space: nowrap; text-align: right">26.41 μs</td>
    <td style="white-space: nowrap; text-align: right">32.91 μs</td>
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
    <td style="white-space: nowrap;text-align: right">46.21 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">45.59 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">39.78 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">37.95 K</td>
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
    <td style="white-space: nowrap">4.48 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">8.17 KB</td>
    <td>1.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">8.17 KB</td>
    <td>1.82x</td>
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
    <td style="white-space: nowrap; text-align: right">22266.43</td>
    <td style="white-space: nowrap; text-align: right">0.0449 ms</td>
    <td style="white-space: nowrap; text-align: right">±32.42%</td>
    <td style="white-space: nowrap; text-align: right">0.0533 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0534 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">26.61</td>
    <td style="white-space: nowrap; text-align: right">37.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±172.97%</td>
    <td style="white-space: nowrap; text-align: right">0.0542 ms</td>
    <td style="white-space: nowrap; text-align: right">112.65 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">17.32</td>
    <td style="white-space: nowrap; text-align: right">57.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.32%</td>
    <td style="white-space: nowrap; text-align: right">57.74 ms</td>
    <td style="white-space: nowrap; text-align: right">115.43 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.29</td>
    <td style="white-space: nowrap; text-align: right">57.83 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.29%</td>
    <td style="white-space: nowrap; text-align: right">57.83 ms</td>
    <td style="white-space: nowrap; text-align: right">115.60 ms</td>
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
    <td style="white-space: nowrap;text-align: right">22266.43</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">26.61</td>
    <td style="white-space: nowrap; text-align: right">836.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">17.32</td>
    <td style="white-space: nowrap; text-align: right">1285.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.29</td>
    <td style="white-space: nowrap; text-align: right">1287.58x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">12.59 KB</td>
    <td>1.6x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">26.35</td>
    <td style="white-space: nowrap; text-align: right">37.95 ms</td>
    <td style="white-space: nowrap; text-align: right">±172.93%</td>
    <td style="white-space: nowrap; text-align: right">0.0658 ms</td>
    <td style="white-space: nowrap; text-align: right">113.73 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">17.20</td>
    <td style="white-space: nowrap; text-align: right">58.15 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.29%</td>
    <td style="white-space: nowrap; text-align: right">58.15 ms</td>
    <td style="white-space: nowrap; text-align: right">116.24 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">16.85</td>
    <td style="white-space: nowrap; text-align: right">59.35 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.24%</td>
    <td style="white-space: nowrap; text-align: right">59.35 ms</td>
    <td style="white-space: nowrap; text-align: right">118.63 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">16.71</td>
    <td style="white-space: nowrap; text-align: right">59.83 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.25%</td>
    <td style="white-space: nowrap; text-align: right">59.83 ms</td>
    <td style="white-space: nowrap; text-align: right">119.59 ms</td>
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
    <td style="white-space: nowrap;text-align: right">26.35</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">17.20</td>
    <td style="white-space: nowrap; text-align: right">1.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">16.85</td>
    <td style="white-space: nowrap; text-align: right">1.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">16.71</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">18.31 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">18.31 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">11.28 KB</td>
    <td>0.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">18.37 KB</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">17.61</td>
    <td style="white-space: nowrap; text-align: right">56.79 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.24%</td>
    <td style="white-space: nowrap; text-align: right">56.79 ms</td>
    <td style="white-space: nowrap; text-align: right">113.50 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.44</td>
    <td style="white-space: nowrap; text-align: right">57.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.26%</td>
    <td style="white-space: nowrap; text-align: right">57.33 ms</td>
    <td style="white-space: nowrap; text-align: right">114.58 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">17.26</td>
    <td style="white-space: nowrap; text-align: right">57.93 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.23%</td>
    <td style="white-space: nowrap; text-align: right">57.93 ms</td>
    <td style="white-space: nowrap; text-align: right">115.78 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">17.15</td>
    <td style="white-space: nowrap; text-align: right">58.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.22%</td>
    <td style="white-space: nowrap; text-align: right">58.30 ms</td>
    <td style="white-space: nowrap; text-align: right">116.52 ms</td>
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
    <td style="white-space: nowrap;text-align: right">17.61</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.44</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">17.26</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">17.15</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">30.78 KB</td>
    <td>1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">30.78 KB</td>
    <td>1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">30.76 KB</td>
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
    <td style="white-space: nowrap; text-align: right">13.88 K</td>
    <td style="white-space: nowrap; text-align: right">72.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.59%</td>
    <td style="white-space: nowrap; text-align: right">73.37 μs</td>
    <td style="white-space: nowrap; text-align: right">84.55 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">13.53 K</td>
    <td style="white-space: nowrap; text-align: right">73.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.56%</td>
    <td style="white-space: nowrap; text-align: right">75.34 μs</td>
    <td style="white-space: nowrap; text-align: right">82.73 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">13.48 K</td>
    <td style="white-space: nowrap; text-align: right">74.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.91%</td>
    <td style="white-space: nowrap; text-align: right">72.45 μs</td>
    <td style="white-space: nowrap; text-align: right">92.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.81 K</td>
    <td style="white-space: nowrap; text-align: right">78.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.75%</td>
    <td style="white-space: nowrap; text-align: right">75.37 μs</td>
    <td style="white-space: nowrap; text-align: right">91.04 μs</td>
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
    <td style="white-space: nowrap;text-align: right">13.88 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">13.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">13.48 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">12.81 K</td>
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
    <td style="white-space: nowrap">18.22 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">29.99 KB</td>
    <td>1.65x</td>
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
    <td style="white-space: nowrap; text-align: right">13.62 K</td>
    <td style="white-space: nowrap; text-align: right">73.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.70%</td>
    <td style="white-space: nowrap; text-align: right">73.32 μs</td>
    <td style="white-space: nowrap; text-align: right">80.56 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">13.02 K</td>
    <td style="white-space: nowrap; text-align: right">76.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.64%</td>
    <td style="white-space: nowrap; text-align: right">78.42 μs</td>
    <td style="white-space: nowrap; text-align: right">82.99 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">12.35 K</td>
    <td style="white-space: nowrap; text-align: right">80.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.49%</td>
    <td style="white-space: nowrap; text-align: right">76.74 μs</td>
    <td style="white-space: nowrap; text-align: right">98.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">12.17 K</td>
    <td style="white-space: nowrap; text-align: right">82.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.29%</td>
    <td style="white-space: nowrap; text-align: right">84.79 μs</td>
    <td style="white-space: nowrap; text-align: right">89.66 μs</td>
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
    <td style="white-space: nowrap;text-align: right">13.62 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">13.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">12.35 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">12.17 K</td>
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
    <td style="white-space: nowrap">21.64 KB</td>
<td>&nbsp;</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">35.70 KB</td>
    <td>1.65x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">11.94 K</td>
    <td style="white-space: nowrap; text-align: right">83.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.77%</td>
    <td style="white-space: nowrap; text-align: right">83.98 μs</td>
    <td style="white-space: nowrap; text-align: right">92.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">11.31 K</td>
    <td style="white-space: nowrap; text-align: right">88.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.21%</td>
    <td style="white-space: nowrap; text-align: right">86.09 μs</td>
    <td style="white-space: nowrap; text-align: right">102.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">11.29 K</td>
    <td style="white-space: nowrap; text-align: right">88.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.78%</td>
    <td style="white-space: nowrap; text-align: right">91.18 μs</td>
    <td style="white-space: nowrap; text-align: right">92.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.53 K</td>
    <td style="white-space: nowrap; text-align: right">94.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.28%</td>
    <td style="white-space: nowrap; text-align: right">97.10 μs</td>
    <td style="white-space: nowrap; text-align: right">98.08 μs</td>
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
    <td style="white-space: nowrap;text-align: right">11.94 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">11.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">11.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
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
    <td style="white-space: nowrap">25 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">33.66 KB</td>
    <td>1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">33.66 KB</td>
    <td>1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">33.66 KB</td>
    <td>1.35x</td>
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
    <td style="white-space: nowrap; text-align: right">10.60 K</td>
    <td style="white-space: nowrap; text-align: right">94.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.18%</td>
    <td style="white-space: nowrap; text-align: right">92.72 μs</td>
    <td style="white-space: nowrap; text-align: right">103.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.99 K</td>
    <td style="white-space: nowrap; text-align: right">100.13 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.63%</td>
    <td style="white-space: nowrap; text-align: right">100.79 μs</td>
    <td style="white-space: nowrap; text-align: right">114.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.97 K</td>
    <td style="white-space: nowrap; text-align: right">100.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.35%</td>
    <td style="white-space: nowrap; text-align: right">101.16 μs</td>
    <td style="white-space: nowrap; text-align: right">108.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">9.49 K</td>
    <td style="white-space: nowrap; text-align: right">105.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.58%</td>
    <td style="white-space: nowrap; text-align: right">105.75 μs</td>
    <td style="white-space: nowrap; text-align: right">109.77 μs</td>
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
    <td style="white-space: nowrap;text-align: right">10.60 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.97 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">9.49 K</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">28.48 KB</td>
    <td>0.6x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.70 K</td>
    <td style="white-space: nowrap; text-align: right">103.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.32%</td>
    <td style="white-space: nowrap; text-align: right">103.11 μs</td>
    <td style="white-space: nowrap; text-align: right">111.05 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.06 K</td>
    <td style="white-space: nowrap; text-align: right">110.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.73%</td>
    <td style="white-space: nowrap; text-align: right">107.92 μs</td>
    <td style="white-space: nowrap; text-align: right">121.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">8.99 K</td>
    <td style="white-space: nowrap; text-align: right">111.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.13%</td>
    <td style="white-space: nowrap; text-align: right">109.46 μs</td>
    <td style="white-space: nowrap; text-align: right">121.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">8.29 K</td>
    <td style="white-space: nowrap; text-align: right">120.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.37%</td>
    <td style="white-space: nowrap; text-align: right">113.01 μs</td>
    <td style="white-space: nowrap; text-align: right">157.78 μs</td>
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
    <td style="white-space: nowrap;text-align: right">9.70 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">8.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">8.29 K</td>
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
    <td style="white-space: nowrap">53.11 KB</td>
<td>&nbsp;</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">53.11 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">8.86 K</td>
    <td style="white-space: nowrap; text-align: right">112.89 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.45%</td>
    <td style="white-space: nowrap; text-align: right">112.66 μs</td>
    <td style="white-space: nowrap; text-align: right">119.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">8.73 K</td>
    <td style="white-space: nowrap; text-align: right">114.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.70%</td>
    <td style="white-space: nowrap; text-align: right">115.66 μs</td>
    <td style="white-space: nowrap; text-align: right">119.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">8.26 K</td>
    <td style="white-space: nowrap; text-align: right">121.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.39%</td>
    <td style="white-space: nowrap; text-align: right">121.84 μs</td>
    <td style="white-space: nowrap; text-align: right">123.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">7.63 K</td>
    <td style="white-space: nowrap; text-align: right">131.13 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.08%</td>
    <td style="white-space: nowrap; text-align: right">126.98 μs</td>
    <td style="white-space: nowrap; text-align: right">153.13 μs</td>
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
    <td style="white-space: nowrap;text-align: right">8.86 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">8.73 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">8.26 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">7.63 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.58 K</td>
    <td style="white-space: nowrap; text-align: right">218.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.49%</td>
    <td style="white-space: nowrap; text-align: right">218.24 μs</td>
    <td style="white-space: nowrap; text-align: right">224.99 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.51 K</td>
    <td style="white-space: nowrap; text-align: right">221.60 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.45%</td>
    <td style="white-space: nowrap; text-align: right">224.81 μs</td>
    <td style="white-space: nowrap; text-align: right">226.58 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">4.29 K</td>
    <td style="white-space: nowrap; text-align: right">233.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.99%</td>
    <td style="white-space: nowrap; text-align: right">209.00 μs</td>
    <td style="white-space: nowrap; text-align: right">309.74 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.06 K</td>
    <td style="white-space: nowrap; text-align: right">246.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.64%</td>
    <td style="white-space: nowrap; text-align: right">237.81 μs</td>
    <td style="white-space: nowrap; text-align: right">281.00 μs</td>
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
    <td style="white-space: nowrap;text-align: right">4.58 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.51 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">4.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
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
    <td style="white-space: nowrap">149.02 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">149.02 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">102.14 KB</td>
    <td>0.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">149.35 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.03 K</td>
    <td style="white-space: nowrap; text-align: right">330.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.36%</td>
    <td style="white-space: nowrap; text-align: right">319.78 μs</td>
    <td style="white-space: nowrap; text-align: right">366.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.88 K</td>
    <td style="white-space: nowrap; text-align: right">346.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.82%</td>
    <td style="white-space: nowrap; text-align: right">348.87 μs</td>
    <td style="white-space: nowrap; text-align: right">369.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">2.87 K</td>
    <td style="white-space: nowrap; text-align: right">347.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.13%</td>
    <td style="white-space: nowrap; text-align: right">340.36 μs</td>
    <td style="white-space: nowrap; text-align: right">379.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.84 K</td>
    <td style="white-space: nowrap; text-align: right">352.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.97%</td>
    <td style="white-space: nowrap; text-align: right">351.63 μs</td>
    <td style="white-space: nowrap; text-align: right">356.69 μs</td>
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
    <td style="white-space: nowrap;text-align: right">3.03 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.88 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">2.87 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.84 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">212.73 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">148.58 KB</td>
    <td>0.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">212.73 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">249.35 KB</td>
    <td>1.17x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.30 K</td>
    <td style="white-space: nowrap; text-align: right">434.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.21%</td>
    <td style="white-space: nowrap; text-align: right">430.25 μs</td>
    <td style="white-space: nowrap; text-align: right">470.08 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.27 K</td>
    <td style="white-space: nowrap; text-align: right">440.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.74%</td>
    <td style="white-space: nowrap; text-align: right">428.12 μs</td>
    <td style="white-space: nowrap; text-align: right">490.97 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">2.25 K</td>
    <td style="white-space: nowrap; text-align: right">444.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.75%</td>
    <td style="white-space: nowrap; text-align: right">442.38 μs</td>
    <td style="white-space: nowrap; text-align: right">478.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.13 K</td>
    <td style="white-space: nowrap; text-align: right">469.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.11%</td>
    <td style="white-space: nowrap; text-align: right">464.57 μs</td>
    <td style="white-space: nowrap; text-align: right">490.26 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.27 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">2.25 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.13 K</td>
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
    <td style="white-space: nowrap">207.52 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">302.55 KB</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">302.55 KB</td>
    <td>1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">297.12 KB</td>
    <td>1.43x</td>
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
    <td style="white-space: nowrap; text-align: right">1.81 K</td>
    <td style="white-space: nowrap; text-align: right">553.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.58%</td>
    <td style="white-space: nowrap; text-align: right">550.28 μs</td>
    <td style="white-space: nowrap; text-align: right">577.37 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.79 K</td>
    <td style="white-space: nowrap; text-align: right">558.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.84%</td>
    <td style="white-space: nowrap; text-align: right">546.13 μs</td>
    <td style="white-space: nowrap; text-align: right">598.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.76 K</td>
    <td style="white-space: nowrap; text-align: right">569.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.16%</td>
    <td style="white-space: nowrap; text-align: right">563.14 μs</td>
    <td style="white-space: nowrap; text-align: right">623.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.72 K</td>
    <td style="white-space: nowrap; text-align: right">581.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.67%</td>
    <td style="white-space: nowrap; text-align: right">579.11 μs</td>
    <td style="white-space: nowrap; text-align: right">605.08 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.81 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.79 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.76 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.72 K</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">246.98 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">406.86 KB</td>
    <td>1.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">406.86 KB</td>
    <td>1.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">393.40 KB</td>
    <td>1.59x</td>
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
    <td style="white-space: nowrap; text-align: right">1.52 K</td>
    <td style="white-space: nowrap; text-align: right">659.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.91%</td>
    <td style="white-space: nowrap; text-align: right">662.19 μs</td>
    <td style="white-space: nowrap; text-align: right">680.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.50 K</td>
    <td style="white-space: nowrap; text-align: right">668.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.33%</td>
    <td style="white-space: nowrap; text-align: right">669.55 μs</td>
    <td style="white-space: nowrap; text-align: right">684.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.48 K</td>
    <td style="white-space: nowrap; text-align: right">676.69 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.25%</td>
    <td style="white-space: nowrap; text-align: right">673.78 μs</td>
    <td style="white-space: nowrap; text-align: right">728.55 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.37 K</td>
    <td style="white-space: nowrap; text-align: right">730.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.62%</td>
    <td style="white-space: nowrap; text-align: right">740.61 μs</td>
    <td style="white-space: nowrap; text-align: right">747.45 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.52 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.50 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.48 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.37 K</td>
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
    <td style="white-space: nowrap; text-align: right">1.31 K</td>
    <td style="white-space: nowrap; text-align: right">766.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±1.65%</td>
    <td style="white-space: nowrap; text-align: right">768.74 μs</td>
    <td style="white-space: nowrap; text-align: right">778.87 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.29 K</td>
    <td style="white-space: nowrap; text-align: right">775.68 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.22%</td>
    <td style="white-space: nowrap; text-align: right">764.78 μs</td>
    <td style="white-space: nowrap; text-align: right">823.03 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.29 K</td>
    <td style="white-space: nowrap; text-align: right">775.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.60%</td>
    <td style="white-space: nowrap; text-align: right">772.23 μs</td>
    <td style="white-space: nowrap; text-align: right">821.92 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.18 K</td>
    <td style="white-space: nowrap; text-align: right">845.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.45%</td>
    <td style="white-space: nowrap; text-align: right">840.35 μs</td>
    <td style="white-space: nowrap; text-align: right">873.40 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.31 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.18 K</td>
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
    <td style="white-space: nowrap">480.71 KB</td>
    <td>1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">530.40 KB</td>
    <td>1.38x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">1.16 K</td>
    <td style="white-space: nowrap; text-align: right">861.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.26%</td>
    <td style="white-space: nowrap; text-align: right">864.09 μs</td>
    <td style="white-space: nowrap; text-align: right">891.70 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.12 K</td>
    <td style="white-space: nowrap; text-align: right">890.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.19%</td>
    <td style="white-space: nowrap; text-align: right">887.89 μs</td>
    <td style="white-space: nowrap; text-align: right">933.48 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.10 K</td>
    <td style="white-space: nowrap; text-align: right">905.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.63%</td>
    <td style="white-space: nowrap; text-align: right">913.58 μs</td>
    <td style="white-space: nowrap; text-align: right">932.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.03 K</td>
    <td style="white-space: nowrap; text-align: right">969.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.76%</td>
    <td style="white-space: nowrap; text-align: right">972.59 μs</td>
    <td style="white-space: nowrap; text-align: right">1018.69 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.16 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.12 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.03 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
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
    <td style="white-space: nowrap">407.09 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">590.18 KB</td>
    <td>1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">590.18 KB</td>
    <td>1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">571.88 KB</td>
    <td>1.4x</td>
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
    <td style="white-space: nowrap; text-align: right">1012.01</td>
    <td style="white-space: nowrap; text-align: right">0.99 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.02%</td>
    <td style="white-space: nowrap; text-align: right">0.98 ms</td>
    <td style="white-space: nowrap; text-align: right">1.05 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">997.75</td>
    <td style="white-space: nowrap; text-align: right">1.00 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.82%</td>
    <td style="white-space: nowrap; text-align: right">1.00 ms</td>
    <td style="white-space: nowrap; text-align: right">1.05 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">963.56</td>
    <td style="white-space: nowrap; text-align: right">1.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.51%</td>
    <td style="white-space: nowrap; text-align: right">1.04 ms</td>
    <td style="white-space: nowrap; text-align: right">1.08 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">907.93</td>
    <td style="white-space: nowrap; text-align: right">1.10 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.56%</td>
    <td style="white-space: nowrap; text-align: right">1.10 ms</td>
    <td style="white-space: nowrap; text-align: right">1.15 ms</td>
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
    <td style="white-space: nowrap;text-align: right">1012.01</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">997.75</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">963.56</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">907.93</td>
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
    <td style="white-space: nowrap; text-align: right">942.56</td>
    <td style="white-space: nowrap; text-align: right">1.06 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.29%</td>
    <td style="white-space: nowrap; text-align: right">1.06 ms</td>
    <td style="white-space: nowrap; text-align: right">1.08 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">902.11</td>
    <td style="white-space: nowrap; text-align: right">1.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.63%</td>
    <td style="white-space: nowrap; text-align: right">1.11 ms</td>
    <td style="white-space: nowrap; text-align: right">1.14 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">856.47</td>
    <td style="white-space: nowrap; text-align: right">1.17 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.24%</td>
    <td style="white-space: nowrap; text-align: right">1.17 ms</td>
    <td style="white-space: nowrap; text-align: right">1.22 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">812.96</td>
    <td style="white-space: nowrap; text-align: right">1.23 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.82%</td>
    <td style="white-space: nowrap; text-align: right">1.23 ms</td>
    <td style="white-space: nowrap; text-align: right">1.30 ms</td>
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
    <td style="white-space: nowrap;text-align: right">942.56</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">902.11</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">856.47</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">812.96</td>
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
    <td style="white-space: nowrap">496.49 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">834.28 KB</td>
    <td>1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">834.28 KB</td>
    <td>1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">781.02 KB</td>
    <td>1.57x</td>
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
    <td style="white-space: nowrap; text-align: right">464.65</td>
    <td style="white-space: nowrap; text-align: right">2.15 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.57%</td>
    <td style="white-space: nowrap; text-align: right">2.15 ms</td>
    <td style="white-space: nowrap; text-align: right">2.19 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">458.67</td>
    <td style="white-space: nowrap; text-align: right">2.18 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.10%</td>
    <td style="white-space: nowrap; text-align: right">2.15 ms</td>
    <td style="white-space: nowrap; text-align: right">2.34 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">419.51</td>
    <td style="white-space: nowrap; text-align: right">2.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.28%</td>
    <td style="white-space: nowrap; text-align: right">2.38 ms</td>
    <td style="white-space: nowrap; text-align: right">2.48 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">406.85</td>
    <td style="white-space: nowrap; text-align: right">2.46 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.27%</td>
    <td style="white-space: nowrap; text-align: right">2.48 ms</td>
    <td style="white-space: nowrap; text-align: right">2.56 ms</td>
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
    <td style="white-space: nowrap;text-align: right">464.65</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">458.67</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">419.51</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">406.85</td>
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
    <td style="white-space: nowrap; text-align: right">308.57</td>
    <td style="white-space: nowrap; text-align: right">3.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.69%</td>
    <td style="white-space: nowrap; text-align: right">3.23 ms</td>
    <td style="white-space: nowrap; text-align: right">3.38 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">297.08</td>
    <td style="white-space: nowrap; text-align: right">3.37 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.88%</td>
    <td style="white-space: nowrap; text-align: right">3.32 ms</td>
    <td style="white-space: nowrap; text-align: right">3.60 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">290.28</td>
    <td style="white-space: nowrap; text-align: right">3.44 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.88%</td>
    <td style="white-space: nowrap; text-align: right">3.43 ms</td>
    <td style="white-space: nowrap; text-align: right">3.57 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">269.07</td>
    <td style="white-space: nowrap; text-align: right">3.72 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.43%</td>
    <td style="white-space: nowrap; text-align: right">3.69 ms</td>
    <td style="white-space: nowrap; text-align: right">3.98 ms</td>
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
    <td style="white-space: nowrap;text-align: right">308.57</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">297.08</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">290.28</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">269.07</td>
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
    <td style="white-space: nowrap; text-align: right">230.86</td>
    <td style="white-space: nowrap; text-align: right">4.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.97%</td>
    <td style="white-space: nowrap; text-align: right">4.32 ms</td>
    <td style="white-space: nowrap; text-align: right">4.44 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">224.11</td>
    <td style="white-space: nowrap; text-align: right">4.46 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.55%</td>
    <td style="white-space: nowrap; text-align: right">4.38 ms</td>
    <td style="white-space: nowrap; text-align: right">4.88 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">222.19</td>
    <td style="white-space: nowrap; text-align: right">4.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.60%</td>
    <td style="white-space: nowrap; text-align: right">4.43 ms</td>
    <td style="white-space: nowrap; text-align: right">4.74 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">199.25</td>
    <td style="white-space: nowrap; text-align: right">5.02 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.86%</td>
    <td style="white-space: nowrap; text-align: right">5.01 ms</td>
    <td style="white-space: nowrap; text-align: right">5.25 ms</td>
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
    <td style="white-space: nowrap;text-align: right">230.86</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">224.11</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">222.19</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">199.25</td>
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
    <td style="white-space: nowrap; text-align: right">184.19</td>
    <td style="white-space: nowrap; text-align: right">5.43 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.30%</td>
    <td style="white-space: nowrap; text-align: right">5.40 ms</td>
    <td style="white-space: nowrap; text-align: right">5.59 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">182.26</td>
    <td style="white-space: nowrap; text-align: right">5.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.76%</td>
    <td style="white-space: nowrap; text-align: right">5.48 ms</td>
    <td style="white-space: nowrap; text-align: right">5.60 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">181.52</td>
    <td style="white-space: nowrap; text-align: right">5.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.71%</td>
    <td style="white-space: nowrap; text-align: right">5.41 ms</td>
    <td style="white-space: nowrap; text-align: right">5.89 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">165.95</td>
    <td style="white-space: nowrap; text-align: right">6.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.99%</td>
    <td style="white-space: nowrap; text-align: right">5.92 ms</td>
    <td style="white-space: nowrap; text-align: right">6.38 ms</td>
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
    <td style="white-space: nowrap;text-align: right">184.19</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">182.26</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">181.52</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">165.95</td>
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
    <td style="white-space: nowrap; text-align: right">152.34</td>
    <td style="white-space: nowrap; text-align: right">6.56 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.61%</td>
    <td style="white-space: nowrap; text-align: right">6.52 ms</td>
    <td style="white-space: nowrap; text-align: right">6.72 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">149.37</td>
    <td style="white-space: nowrap; text-align: right">6.69 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.79%</td>
    <td style="white-space: nowrap; text-align: right">6.71 ms</td>
    <td style="white-space: nowrap; text-align: right">6.82 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">146.71</td>
    <td style="white-space: nowrap; text-align: right">6.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.70%</td>
    <td style="white-space: nowrap; text-align: right">6.81 ms</td>
    <td style="white-space: nowrap; text-align: right">7.05 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">134.89</td>
    <td style="white-space: nowrap; text-align: right">7.41 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.39%</td>
    <td style="white-space: nowrap; text-align: right">7.37 ms</td>
    <td style="white-space: nowrap; text-align: right">7.61 ms</td>
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
    <td style="white-space: nowrap;text-align: right">152.34</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">149.37</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">146.71</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">134.89</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
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
    <td style="white-space: nowrap; text-align: right">131.54</td>
    <td style="white-space: nowrap; text-align: right">7.60 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.20%</td>
    <td style="white-space: nowrap; text-align: right">7.64 ms</td>
    <td style="white-space: nowrap; text-align: right">7.67 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">126.31</td>
    <td style="white-space: nowrap; text-align: right">7.92 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.29%</td>
    <td style="white-space: nowrap; text-align: right">7.88 ms</td>
    <td style="white-space: nowrap; text-align: right">8.27 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">125.36</td>
    <td style="white-space: nowrap; text-align: right">7.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.55%</td>
    <td style="white-space: nowrap; text-align: right">7.96 ms</td>
    <td style="white-space: nowrap; text-align: right">8.12 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">119.29</td>
    <td style="white-space: nowrap; text-align: right">8.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.76%</td>
    <td style="white-space: nowrap; text-align: right">8.35 ms</td>
    <td style="white-space: nowrap; text-align: right">8.58 ms</td>
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
    <td style="white-space: nowrap;text-align: right">131.54</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">126.31</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">125.36</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">119.29</td>
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
    <td style="white-space: nowrap">3.56 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">5.95 MB</td>
    <td>1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">5.95 MB</td>
    <td>1.67x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">113.07</td>
    <td style="white-space: nowrap; text-align: right">8.84 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.84%</td>
    <td style="white-space: nowrap; text-align: right">8.83 ms</td>
    <td style="white-space: nowrap; text-align: right">8.94 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">112.85</td>
    <td style="white-space: nowrap; text-align: right">8.86 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.04%</td>
    <td style="white-space: nowrap; text-align: right">8.78 ms</td>
    <td style="white-space: nowrap; text-align: right">9.24 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">108.37</td>
    <td style="white-space: nowrap; text-align: right">9.23 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.56%</td>
    <td style="white-space: nowrap; text-align: right">9.20 ms</td>
    <td style="white-space: nowrap; text-align: right">9.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">104.24</td>
    <td style="white-space: nowrap; text-align: right">9.59 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.63%</td>
    <td style="white-space: nowrap; text-align: right">9.60 ms</td>
    <td style="white-space: nowrap; text-align: right">9.75 ms</td>
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
    <td style="white-space: nowrap;text-align: right">113.07</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">112.85</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">108.37</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">104.24</td>
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
    <td style="white-space: nowrap; text-align: right">100.18</td>
    <td style="white-space: nowrap; text-align: right">9.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.09%</td>
    <td style="white-space: nowrap; text-align: right">9.99 ms</td>
    <td style="white-space: nowrap; text-align: right">10.11 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">99.91</td>
    <td style="white-space: nowrap; text-align: right">10.01 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.39%</td>
    <td style="white-space: nowrap; text-align: right">9.79 ms</td>
    <td style="white-space: nowrap; text-align: right">10.67 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">98.46</td>
    <td style="white-space: nowrap; text-align: right">10.16 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.97%</td>
    <td style="white-space: nowrap; text-align: right">10.17 ms</td>
    <td style="white-space: nowrap; text-align: right">10.35 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">92.23</td>
    <td style="white-space: nowrap; text-align: right">10.84 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.43%</td>
    <td style="white-space: nowrap; text-align: right">10.86 ms</td>
    <td style="white-space: nowrap; text-align: right">10.88 ms</td>
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
    <td style="white-space: nowrap;text-align: right">100.18</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">99.91</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">98.46</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">92.23</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">6.51 MB</td>
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
    <td style="white-space: nowrap; text-align: right">89.02</td>
    <td style="white-space: nowrap; text-align: right">11.23 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.32%</td>
    <td style="white-space: nowrap; text-align: right">11.11 ms</td>
    <td style="white-space: nowrap; text-align: right">11.53 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">87.73</td>
    <td style="white-space: nowrap; text-align: right">11.40 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.94%</td>
    <td style="white-space: nowrap; text-align: right">11.37 ms</td>
    <td style="white-space: nowrap; text-align: right">11.52 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">86.65</td>
    <td style="white-space: nowrap; text-align: right">11.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.98%</td>
    <td style="white-space: nowrap; text-align: right">11.48 ms</td>
    <td style="white-space: nowrap; text-align: right">11.79 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">82.74</td>
    <td style="white-space: nowrap; text-align: right">12.09 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.40%</td>
    <td style="white-space: nowrap; text-align: right">12.09 ms</td>
    <td style="white-space: nowrap; text-align: right">12.13 ms</td>
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
    <td style="white-space: nowrap;text-align: right">89.02</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">87.73</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">86.65</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">82.74</td>
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
    <td style="white-space: nowrap; text-align: right">44.30</td>
    <td style="white-space: nowrap; text-align: right">22.57 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.23%</td>
    <td style="white-space: nowrap; text-align: right">22.72 ms</td>
    <td style="white-space: nowrap; text-align: right">22.99 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">43.65</td>
    <td style="white-space: nowrap; text-align: right">22.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.34%</td>
    <td style="white-space: nowrap; text-align: right">22.81 ms</td>
    <td style="white-space: nowrap; text-align: right">23.26 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">43.52</td>
    <td style="white-space: nowrap; text-align: right">22.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.29%</td>
    <td style="white-space: nowrap; text-align: right">22.84 ms</td>
    <td style="white-space: nowrap; text-align: right">23.32 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">40.92</td>
    <td style="white-space: nowrap; text-align: right">24.44 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.15%</td>
    <td style="white-space: nowrap; text-align: right">24.34 ms</td>
    <td style="white-space: nowrap; text-align: right">25.25 ms</td>
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
    <td style="white-space: nowrap;text-align: right">44.30</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">43.65</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">43.52</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">40.92</td>
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
    <td style="white-space: nowrap; text-align: right">28.39</td>
    <td style="white-space: nowrap; text-align: right">35.22 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.42%</td>
    <td style="white-space: nowrap; text-align: right">35.62 ms</td>
    <td style="white-space: nowrap; text-align: right">36.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">23.70</td>
    <td style="white-space: nowrap; text-align: right">42.19 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.79%</td>
    <td style="white-space: nowrap; text-align: right">44.08 ms</td>
    <td style="white-space: nowrap; text-align: right">45.04 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">23.24</td>
    <td style="white-space: nowrap; text-align: right">43.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.49%</td>
    <td style="white-space: nowrap; text-align: right">43.04 ms</td>
    <td style="white-space: nowrap; text-align: right">43.18 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">23.00</td>
    <td style="white-space: nowrap; text-align: right">43.48 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.78%</td>
    <td style="white-space: nowrap; text-align: right">43.48 ms</td>
    <td style="white-space: nowrap; text-align: right">43.72 ms</td>
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
    <td style="white-space: nowrap;text-align: right">28.39</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">23.70</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">23.24</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">23.00</td>
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
    <td style="white-space: nowrap">15.94 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">23.53 MB</td>
    <td>1.48x</td>
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
    <td style="white-space: nowrap; text-align: right">18.35</td>
    <td style="white-space: nowrap; text-align: right">54.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.50%</td>
    <td style="white-space: nowrap; text-align: right">54.49 ms</td>
    <td style="white-space: nowrap; text-align: right">54.69 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">17.59</td>
    <td style="white-space: nowrap; text-align: right">56.86 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.94%</td>
    <td style="white-space: nowrap; text-align: right">56.86 ms</td>
    <td style="white-space: nowrap; text-align: right">57.64 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.15</td>
    <td style="white-space: nowrap; text-align: right">58.31 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.60%</td>
    <td style="white-space: nowrap; text-align: right">58.31 ms</td>
    <td style="white-space: nowrap; text-align: right">58.56 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">16.37</td>
    <td style="white-space: nowrap; text-align: right">61.09 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.01%</td>
    <td style="white-space: nowrap; text-align: right">61.09 ms</td>
    <td style="white-space: nowrap; text-align: right">62.39 ms</td>
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
    <td style="white-space: nowrap;text-align: right">18.35</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">17.59</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.15</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">16.37</td>
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
    <td style="white-space: nowrap; text-align: right">14.72</td>
    <td style="white-space: nowrap; text-align: right">67.93 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.05%</td>
    <td style="white-space: nowrap; text-align: right">67.93 ms</td>
    <td style="white-space: nowrap; text-align: right">68.43 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">7.34</td>
    <td style="white-space: nowrap; text-align: right">136.22 ms</td>
    <td style="white-space: nowrap; text-align: right">±63.59%</td>
    <td style="white-space: nowrap; text-align: right">136.22 ms</td>
    <td style="white-space: nowrap; text-align: right">197.47 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.97</td>
    <td style="white-space: nowrap; text-align: right">201.02 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">201.02 ms</td>
    <td style="white-space: nowrap; text-align: right">201.02 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.92</td>
    <td style="white-space: nowrap; text-align: right">203.21 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">203.21 ms</td>
    <td style="white-space: nowrap; text-align: right">203.21 ms</td>
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
    <td style="white-space: nowrap;text-align: right">14.72</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">7.34</td>
    <td style="white-space: nowrap; text-align: right">2.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.97</td>
    <td style="white-space: nowrap; text-align: right">2.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.92</td>
    <td style="white-space: nowrap; text-align: right">2.99x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">37.60 MB</td>
    <td>1.32x</td>
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
    <td style="white-space: nowrap; text-align: right">11.55</td>
    <td style="white-space: nowrap; text-align: right">86.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.36%</td>
    <td style="white-space: nowrap; text-align: right">86.58 ms</td>
    <td style="white-space: nowrap; text-align: right">88.02 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">11.32</td>
    <td style="white-space: nowrap; text-align: right">88.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.34%</td>
    <td style="white-space: nowrap; text-align: right">88.33 ms</td>
    <td style="white-space: nowrap; text-align: right">88.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.88</td>
    <td style="white-space: nowrap; text-align: right">91.88 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.29%</td>
    <td style="white-space: nowrap; text-align: right">91.88 ms</td>
    <td style="white-space: nowrap; text-align: right">92.07 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">4.85</td>
    <td style="white-space: nowrap; text-align: right">206.32 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">206.32 ms</td>
    <td style="white-space: nowrap; text-align: right">206.32 ms</td>
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
    <td style="white-space: nowrap;text-align: right">11.55</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">11.32</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.88</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">4.85</td>
    <td style="white-space: nowrap; text-align: right">2.38x</td>
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
    <td style="white-space: nowrap; text-align: right">10.32</td>
    <td style="white-space: nowrap; text-align: right">96.88 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.80%</td>
    <td style="white-space: nowrap; text-align: right">96.88 ms</td>
    <td style="white-space: nowrap; text-align: right">97.43 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.47</td>
    <td style="white-space: nowrap; text-align: right">223.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">223.50 ms</td>
    <td style="white-space: nowrap; text-align: right">223.50 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.45</td>
    <td style="white-space: nowrap; text-align: right">224.72 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">224.72 ms</td>
    <td style="white-space: nowrap; text-align: right">224.72 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.43</td>
    <td style="white-space: nowrap; text-align: right">225.68 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">225.68 ms</td>
    <td style="white-space: nowrap; text-align: right">225.68 ms</td>
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
    <td style="white-space: nowrap;text-align: right">10.32</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.47</td>
    <td style="white-space: nowrap; text-align: right">2.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.45</td>
    <td style="white-space: nowrap; text-align: right">2.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.43</td>
    <td style="white-space: nowrap; text-align: right">2.33x</td>
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
    <td style="white-space: nowrap; text-align: right">8.96</td>
    <td style="white-space: nowrap; text-align: right">111.60 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.01%</td>
    <td style="white-space: nowrap; text-align: right">111.60 ms</td>
    <td style="white-space: nowrap; text-align: right">113.19 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.20</td>
    <td style="white-space: nowrap; text-align: right">312.40 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">312.40 ms</td>
    <td style="white-space: nowrap; text-align: right">312.40 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.20</td>
    <td style="white-space: nowrap; text-align: right">312.48 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">312.48 ms</td>
    <td style="white-space: nowrap; text-align: right">312.48 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.12</td>
    <td style="white-space: nowrap; text-align: right">320.88 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">320.88 ms</td>
    <td style="white-space: nowrap; text-align: right">320.88 ms</td>
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
    <td style="white-space: nowrap;text-align: right">8.96</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.20</td>
    <td style="white-space: nowrap; text-align: right">2.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.20</td>
    <td style="white-space: nowrap; text-align: right">2.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.12</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">59.41 MB</td>
    <td>1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">58.43 MB</td>
    <td>1.41x</td>
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
    <td style="white-space: nowrap; text-align: right">3.99</td>
    <td style="white-space: nowrap; text-align: right">250.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">250.38 ms</td>
    <td style="white-space: nowrap; text-align: right">250.38 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.76</td>
    <td style="white-space: nowrap; text-align: right">265.87 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">265.87 ms</td>
    <td style="white-space: nowrap; text-align: right">265.87 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.67</td>
    <td style="white-space: nowrap; text-align: right">272.29 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">272.29 ms</td>
    <td style="white-space: nowrap; text-align: right">272.29 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.55</td>
    <td style="white-space: nowrap; text-align: right">281.92 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">281.92 ms</td>
    <td style="white-space: nowrap; text-align: right">281.92 ms</td>
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
    <td style="white-space: nowrap;text-align: right">3.99</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.76</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.67</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.55</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">69.75 MB</td>
    <td>1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">66.92 MB</td>
    <td>1.38x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.58</td>
    <td style="white-space: nowrap; text-align: right">278.97 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">278.97 ms</td>
    <td style="white-space: nowrap; text-align: right">278.97 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.57</td>
    <td style="white-space: nowrap; text-align: right">280.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">280.24 ms</td>
    <td style="white-space: nowrap; text-align: right">280.24 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.57</td>
    <td style="white-space: nowrap; text-align: right">280.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">280.34 ms</td>
    <td style="white-space: nowrap; text-align: right">280.34 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">3.56</td>
    <td style="white-space: nowrap; text-align: right">280.90 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">280.90 ms</td>
    <td style="white-space: nowrap; text-align: right">280.90 ms</td>
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
    <td style="white-space: nowrap;text-align: right">3.58</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.57</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.57</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">3.56</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
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
    <td style="white-space: nowrap">76.60 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">74.84 MB</td>
    <td>0.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">74.84 MB</td>
    <td>0.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">52.53 MB</td>
    <td>0.69x</td>
  </tr>

</table>


<hr/>

