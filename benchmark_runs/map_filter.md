
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
    <td style="white-space: nowrap; text-align: right">618.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.24%</td>
    <td style="white-space: nowrap; text-align: right">1.53 μs</td>
    <td style="white-space: nowrap; text-align: right">1.93 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">541.49 K</td>
    <td style="white-space: nowrap; text-align: right">1.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.24%</td>
    <td style="white-space: nowrap; text-align: right">1.85 μs</td>
    <td style="white-space: nowrap; text-align: right">2.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">480.02 K</td>
    <td style="white-space: nowrap; text-align: right">2.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.54%</td>
    <td style="white-space: nowrap; text-align: right">1.97 μs</td>
    <td style="white-space: nowrap; text-align: right">2.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">470.15 K</td>
    <td style="white-space: nowrap; text-align: right">2.13 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.18%</td>
    <td style="white-space: nowrap; text-align: right">2.13 μs</td>
    <td style="white-space: nowrap; text-align: right">2.28 μs</td>
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
    <td style="white-space: nowrap;text-align: right">618.24 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">541.49 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">480.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">470.15 K</td>
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
    <td style="white-space: nowrap; text-align: right">538.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.86 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.99%</td>
    <td style="white-space: nowrap; text-align: right">1.83 μs</td>
    <td style="white-space: nowrap; text-align: right">2.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">518.00 K</td>
    <td style="white-space: nowrap; text-align: right">1.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.90%</td>
    <td style="white-space: nowrap; text-align: right">1.88 μs</td>
    <td style="white-space: nowrap; text-align: right">2.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">455.68 K</td>
    <td style="white-space: nowrap; text-align: right">2.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.94%</td>
    <td style="white-space: nowrap; text-align: right">2.23 μs</td>
    <td style="white-space: nowrap; text-align: right">2.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">420.39 K</td>
    <td style="white-space: nowrap; text-align: right">2.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.28%</td>
    <td style="white-space: nowrap; text-align: right">2.41 μs</td>
    <td style="white-space: nowrap; text-align: right">2.54 μs</td>
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
    <td style="white-space: nowrap;text-align: right">538.29 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">518.00 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">455.68 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">420.39 K</td>
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
    <td style="white-space: nowrap">264 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">264 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">216 B</td>
    <td>0.82x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">498.57 K</td>
    <td style="white-space: nowrap; text-align: right">2.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.55%</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
    <td style="white-space: nowrap; text-align: right">2.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">412.54 K</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.09%</td>
    <td style="white-space: nowrap; text-align: right">2.32 μs</td>
    <td style="white-space: nowrap; text-align: right">2.79 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">296.19 K</td>
    <td style="white-space: nowrap; text-align: right">3.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±92.55%</td>
    <td style="white-space: nowrap; text-align: right">1.86 μs</td>
    <td style="white-space: nowrap; text-align: right">8.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">193.04 K</td>
    <td style="white-space: nowrap; text-align: right">5.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±129.91%</td>
    <td style="white-space: nowrap; text-align: right">1.85 μs</td>
    <td style="white-space: nowrap; text-align: right">15.27 μs</td>
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
    <td style="white-space: nowrap;text-align: right">498.57 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">412.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">296.19 K</td>
    <td style="white-space: nowrap; text-align: right">1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">193.04 K</td>
    <td style="white-space: nowrap; text-align: right">2.58x</td>
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
    <td style="white-space: nowrap">320 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">376 B</td>
    <td>1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">320 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">248 B</td>
    <td>0.78x</td>
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
    <td style="white-space: nowrap; text-align: right">565.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.18%</td>
    <td style="white-space: nowrap; text-align: right">1.77 μs</td>
    <td style="white-space: nowrap; text-align: right">1.83 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">475.68 K</td>
    <td style="white-space: nowrap; text-align: right">2.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.89%</td>
    <td style="white-space: nowrap; text-align: right">2.07 μs</td>
    <td style="white-space: nowrap; text-align: right">2.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">424.22 K</td>
    <td style="white-space: nowrap; text-align: right">2.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.37%</td>
    <td style="white-space: nowrap; text-align: right">2.38 μs</td>
    <td style="white-space: nowrap; text-align: right">2.80 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">175.12 K</td>
    <td style="white-space: nowrap; text-align: right">5.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±120.39%</td>
    <td style="white-space: nowrap; text-align: right">2.32 μs</td>
    <td style="white-space: nowrap; text-align: right">16.02 μs</td>
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
    <td style="white-space: nowrap;text-align: right">565.13 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">475.68 K</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">424.22 K</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">175.12 K</td>
    <td style="white-space: nowrap; text-align: right">3.23x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">432 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">336 B</td>
    <td>0.78x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">464.41 K</td>
    <td style="white-space: nowrap; text-align: right">2.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.47%</td>
    <td style="white-space: nowrap; text-align: right">2.17 μs</td>
    <td style="white-space: nowrap; text-align: right">2.37 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">445.73 K</td>
    <td style="white-space: nowrap; text-align: right">2.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.31%</td>
    <td style="white-space: nowrap; text-align: right">2.27 μs</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">392.27 K</td>
    <td style="white-space: nowrap; text-align: right">2.55 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.31%</td>
    <td style="white-space: nowrap; text-align: right">2.65 μs</td>
    <td style="white-space: nowrap; text-align: right">2.67 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">189.83 K</td>
    <td style="white-space: nowrap; text-align: right">5.27 μs</td>
    <td style="white-space: nowrap; text-align: right">±127.34%</td>
    <td style="white-space: nowrap; text-align: right">2.05 μs</td>
    <td style="white-space: nowrap; text-align: right">15.32 μs</td>
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
    <td style="white-space: nowrap;text-align: right">464.41 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">445.73 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">392.27 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">189.83 K</td>
    <td style="white-space: nowrap; text-align: right">2.45x</td>
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
    <td style="white-space: nowrap">368 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">488 B</td>
    <td>1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">544 B</td>
    <td>1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">488 B</td>
    <td>1.33x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">486.20 K</td>
    <td style="white-space: nowrap; text-align: right">2.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.00%</td>
    <td style="white-space: nowrap; text-align: right">2.05 μs</td>
    <td style="white-space: nowrap; text-align: right">2.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">482.22 K</td>
    <td style="white-space: nowrap; text-align: right">2.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.30%</td>
    <td style="white-space: nowrap; text-align: right">2.13 μs</td>
    <td style="white-space: nowrap; text-align: right">2.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">426.80 K</td>
    <td style="white-space: nowrap; text-align: right">2.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.41%</td>
    <td style="white-space: nowrap; text-align: right">2.38 μs</td>
    <td style="white-space: nowrap; text-align: right">2.57 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">390.55 K</td>
    <td style="white-space: nowrap; text-align: right">2.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.14%</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
    <td style="white-space: nowrap; text-align: right">3.02 μs</td>
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
    <td style="white-space: nowrap;text-align: right">486.20 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">482.22 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">426.80 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">390.55 K</td>
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
    <td style="white-space: nowrap">456 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">600 B</td>
    <td>1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">600 B</td>
    <td>1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">656 B</td>
    <td>1.44x</td>
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
    <td style="white-space: nowrap; text-align: right">478.13 K</td>
    <td style="white-space: nowrap; text-align: right">2.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.61%</td>
    <td style="white-space: nowrap; text-align: right">2.06 μs</td>
    <td style="white-space: nowrap; text-align: right">2.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">450.60 K</td>
    <td style="white-space: nowrap; text-align: right">2.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.35%</td>
    <td style="white-space: nowrap; text-align: right">2.21 μs</td>
    <td style="white-space: nowrap; text-align: right">2.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">449.14 K</td>
    <td style="white-space: nowrap; text-align: right">2.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.81%</td>
    <td style="white-space: nowrap; text-align: right">2.19 μs</td>
    <td style="white-space: nowrap; text-align: right">2.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">162.87 K</td>
    <td style="white-space: nowrap; text-align: right">6.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±106.79%</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
    <td style="white-space: nowrap; text-align: right">15.97 μs</td>
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
    <td style="white-space: nowrap;text-align: right">478.13 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">450.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">449.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">162.87 K</td>
    <td style="white-space: nowrap; text-align: right">2.94x</td>
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
    <td style="white-space: nowrap">656 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">656 B</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">488 B</td>
    <td>0.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">712 B</td>
    <td>1.09x</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">462.86 K</td>
    <td style="white-space: nowrap; text-align: right">2.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.73%</td>
    <td style="white-space: nowrap; text-align: right">2.19 μs</td>
    <td style="white-space: nowrap; text-align: right">2.33 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">439.27 K</td>
    <td style="white-space: nowrap; text-align: right">2.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.09%</td>
    <td style="white-space: nowrap; text-align: right">2.25 μs</td>
    <td style="white-space: nowrap; text-align: right">2.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">434.31 K</td>
    <td style="white-space: nowrap; text-align: right">2.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.38%</td>
    <td style="white-space: nowrap; text-align: right">2.31 μs</td>
    <td style="white-space: nowrap; text-align: right">2.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">400.24 K</td>
    <td style="white-space: nowrap; text-align: right">2.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.96%</td>
    <td style="white-space: nowrap; text-align: right">2.50 μs</td>
    <td style="white-space: nowrap; text-align: right">2.57 μs</td>
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
    <td style="white-space: nowrap;text-align: right">462.86 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">439.27 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">434.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">400.24 K</td>
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
    <td style="white-space: nowrap">576 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">768 B</td>
    <td>1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">768 B</td>
    <td>1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">824 B</td>
    <td>1.43x</td>
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
    <td style="white-space: nowrap; text-align: right">490.56 K</td>
    <td style="white-space: nowrap; text-align: right">2.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.61%</td>
    <td style="white-space: nowrap; text-align: right">2.00 μs</td>
    <td style="white-space: nowrap; text-align: right">2.23 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">447.73 K</td>
    <td style="white-space: nowrap; text-align: right">2.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.33%</td>
    <td style="white-space: nowrap; text-align: right">2.24 μs</td>
    <td style="white-space: nowrap; text-align: right">2.37 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">417.06 K</td>
    <td style="white-space: nowrap; text-align: right">2.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.36%</td>
    <td style="white-space: nowrap; text-align: right">2.46 μs</td>
    <td style="white-space: nowrap; text-align: right">2.55 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">380.01 K</td>
    <td style="white-space: nowrap; text-align: right">2.63 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.37%</td>
    <td style="white-space: nowrap; text-align: right">2.58 μs</td>
    <td style="white-space: nowrap; text-align: right">2.86 μs</td>
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
    <td style="white-space: nowrap;text-align: right">490.56 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">447.73 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">417.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">380.01 K</td>
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
    <td style="white-space: nowrap; text-align: right">436.49 K</td>
    <td style="white-space: nowrap; text-align: right">2.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.49%</td>
    <td style="white-space: nowrap; text-align: right">2.31 μs</td>
    <td style="white-space: nowrap; text-align: right">2.65 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">381.61 K</td>
    <td style="white-space: nowrap; text-align: right">2.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.00%</td>
    <td style="white-space: nowrap; text-align: right">2.63 μs</td>
    <td style="white-space: nowrap; text-align: right">2.70 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">182.01 K</td>
    <td style="white-space: nowrap; text-align: right">5.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±120.50%</td>
    <td style="white-space: nowrap; text-align: right">2.26 μs</td>
    <td style="white-space: nowrap; text-align: right">15.42 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">175.15 K</td>
    <td style="white-space: nowrap; text-align: right">5.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±115.06%</td>
    <td style="white-space: nowrap; text-align: right">2.48 μs</td>
    <td style="white-space: nowrap; text-align: right">15.56 μs</td>
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
    <td style="white-space: nowrap;text-align: right">436.49 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">381.61 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">182.01 K</td>
    <td style="white-space: nowrap; text-align: right">2.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">175.15 K</td>
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
    <td style="white-space: nowrap">696 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">992 B</td>
    <td>1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">936 B</td>
    <td>1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">936 B</td>
    <td>1.34x</td>
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
    <td style="white-space: nowrap; text-align: right">401.53 K</td>
    <td style="white-space: nowrap; text-align: right">2.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.48%</td>
    <td style="white-space: nowrap; text-align: right">2.49 μs</td>
    <td style="white-space: nowrap; text-align: right">2.84 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">369.17 K</td>
    <td style="white-space: nowrap; text-align: right">2.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.09%</td>
    <td style="white-space: nowrap; text-align: right">2.77 μs</td>
    <td style="white-space: nowrap; text-align: right">2.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">214.71 K</td>
    <td style="white-space: nowrap; text-align: right">4.66 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.92%</td>
    <td style="white-space: nowrap; text-align: right">3.39 μs</td>
    <td style="white-space: nowrap; text-align: right">8.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">171.92 K</td>
    <td style="white-space: nowrap; text-align: right">5.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±110.69%</td>
    <td style="white-space: nowrap; text-align: right">2.72 μs</td>
    <td style="white-space: nowrap; text-align: right">15.47 μs</td>
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
    <td style="white-space: nowrap;text-align: right">401.53 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">369.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">214.71 K</td>
    <td style="white-space: nowrap; text-align: right">1.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">171.92 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">1.79 KB</td>
    <td>1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">1.73 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">372.34 K</td>
    <td style="white-space: nowrap; text-align: right">2.69 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.59%</td>
    <td style="white-space: nowrap; text-align: right">2.71 μs</td>
    <td style="white-space: nowrap; text-align: right">2.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">334.62 K</td>
    <td style="white-space: nowrap; text-align: right">2.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.87%</td>
    <td style="white-space: nowrap; text-align: right">2.95 μs</td>
    <td style="white-space: nowrap; text-align: right">3.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">320.05 K</td>
    <td style="white-space: nowrap; text-align: right">3.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.50%</td>
    <td style="white-space: nowrap; text-align: right">3.12 μs</td>
    <td style="white-space: nowrap; text-align: right">3.43 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">288.45 K</td>
    <td style="white-space: nowrap; text-align: right">3.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.41%</td>
    <td style="white-space: nowrap; text-align: right">3.48 μs</td>
    <td style="white-space: nowrap; text-align: right">3.79 μs</td>
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
    <td style="white-space: nowrap;text-align: right">372.34 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">334.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">320.05 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">288.45 K</td>
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
    <td style="white-space: nowrap">2.55 KB</td>
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
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">1.67 KB</td>
    <td>0.65x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">195.78 K</td>
    <td style="white-space: nowrap; text-align: right">5.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.58%</td>
    <td style="white-space: nowrap; text-align: right">5.12 μs</td>
    <td style="white-space: nowrap; text-align: right">5.23 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">187.17 K</td>
    <td style="white-space: nowrap; text-align: right">5.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.82%</td>
    <td style="white-space: nowrap; text-align: right">5.32 μs</td>
    <td style="white-space: nowrap; text-align: right">5.73 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">108.27 K</td>
    <td style="white-space: nowrap; text-align: right">9.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±73.38%</td>
    <td style="white-space: nowrap; text-align: right">5.98 μs</td>
    <td style="white-space: nowrap; text-align: right">19.40 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">99.03 K</td>
    <td style="white-space: nowrap; text-align: right">10.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±64.46%</td>
    <td style="white-space: nowrap; text-align: right">8.32 μs</td>
    <td style="white-space: nowrap; text-align: right">18.74 μs</td>
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
    <td style="white-space: nowrap;text-align: right">195.78 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">187.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">108.27 K</td>
    <td style="white-space: nowrap; text-align: right">1.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">99.03 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">2.14 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">2.14 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">2.20 KB</td>
    <td>1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">1.45 KB</td>
    <td>0.68x</td>
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
    <td style="white-space: nowrap; text-align: right">131.38 K</td>
    <td style="white-space: nowrap; text-align: right">7.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±44.61%</td>
    <td style="white-space: nowrap; text-align: right">5.99 μs</td>
    <td style="white-space: nowrap; text-align: right">12.70 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">97.18 K</td>
    <td style="white-space: nowrap; text-align: right">10.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±63.21%</td>
    <td style="white-space: nowrap; text-align: right">7.14 μs</td>
    <td style="white-space: nowrap; text-align: right">20.05 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">92.04 K</td>
    <td style="white-space: nowrap; text-align: right">10.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±94.69%</td>
    <td style="white-space: nowrap; text-align: right">5.75 μs</td>
    <td style="white-space: nowrap; text-align: right">26.30 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">70.05 K</td>
    <td style="white-space: nowrap; text-align: right">14.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±67.17%</td>
    <td style="white-space: nowrap; text-align: right">12.86 μs</td>
    <td style="white-space: nowrap; text-align: right">25.21 μs</td>
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
    <td style="white-space: nowrap;text-align: right">131.38 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">97.18 K</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">92.04 K</td>
    <td style="white-space: nowrap; text-align: right">1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">70.05 K</td>
    <td style="white-space: nowrap; text-align: right">1.88x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.70 KB</td>
    <td>1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">2.62 KB</td>
    <td>0.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.65 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">149.95 K</td>
    <td style="white-space: nowrap; text-align: right">6.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.96%</td>
    <td style="white-space: nowrap; text-align: right">6.62 μs</td>
    <td style="white-space: nowrap; text-align: right">7.05 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">147.60 K</td>
    <td style="white-space: nowrap; text-align: right">6.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.27%</td>
    <td style="white-space: nowrap; text-align: right">6.83 μs</td>
    <td style="white-space: nowrap; text-align: right">6.96 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">128.16 K</td>
    <td style="white-space: nowrap; text-align: right">7.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.76%</td>
    <td style="white-space: nowrap; text-align: right">7.88 μs</td>
    <td style="white-space: nowrap; text-align: right">7.97 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">60.37 K</td>
    <td style="white-space: nowrap; text-align: right">16.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±113.80%</td>
    <td style="white-space: nowrap; text-align: right">7.27 μs</td>
    <td style="white-space: nowrap; text-align: right">44.84 μs</td>
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
    <td style="white-space: nowrap;text-align: right">149.95 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">147.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">128.16 K</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">60.37 K</td>
    <td style="white-space: nowrap; text-align: right">2.48x</td>
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
    <td style="white-space: nowrap">3.53 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.53 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.59 KB</td>
    <td>1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">2.63 KB</td>
    <td>0.74x</td>
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
    <td style="white-space: nowrap; text-align: right">66.64 K</td>
    <td style="white-space: nowrap; text-align: right">15.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.13%</td>
    <td style="white-space: nowrap; text-align: right">15.13 μs</td>
    <td style="white-space: nowrap; text-align: right">15.43 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">65.90 K</td>
    <td style="white-space: nowrap; text-align: right">15.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±1.98%</td>
    <td style="white-space: nowrap; text-align: right">15.22 μs</td>
    <td style="white-space: nowrap; text-align: right">15.48 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">60.20 K</td>
    <td style="white-space: nowrap; text-align: right">16.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.17%</td>
    <td style="white-space: nowrap; text-align: right">16.45 μs</td>
    <td style="white-space: nowrap; text-align: right">17.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">45.92 K</td>
    <td style="white-space: nowrap; text-align: right">21.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.07%</td>
    <td style="white-space: nowrap; text-align: right">20.87 μs</td>
    <td style="white-space: nowrap; text-align: right">29.77 μs</td>
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
    <td style="white-space: nowrap;text-align: right">66.64 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">65.90 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">60.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">45.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">5.28 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">60.78 K</td>
    <td style="white-space: nowrap; text-align: right">16.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.04%</td>
    <td style="white-space: nowrap; text-align: right">16.28 μs</td>
    <td style="white-space: nowrap; text-align: right">17.40 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">59.89 K</td>
    <td style="white-space: nowrap; text-align: right">16.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.62%</td>
    <td style="white-space: nowrap; text-align: right">16.65 μs</td>
    <td style="white-space: nowrap; text-align: right">17.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">57.02 K</td>
    <td style="white-space: nowrap; text-align: right">17.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.61%</td>
    <td style="white-space: nowrap; text-align: right">17.36 μs</td>
    <td style="white-space: nowrap; text-align: right">18.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">46.16 K</td>
    <td style="white-space: nowrap; text-align: right">21.66 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.89%</td>
    <td style="white-space: nowrap; text-align: right">19.51 μs</td>
    <td style="white-space: nowrap; text-align: right">31.17 μs</td>
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
    <td style="white-space: nowrap;text-align: right">60.78 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">59.89 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">57.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">46.16 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">3.62 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.62 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">3.55 KB</td>
    <td>0.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.63 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">51.98 K</td>
    <td style="white-space: nowrap; text-align: right">19.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±28.94%</td>
    <td style="white-space: nowrap; text-align: right">16.68 μs</td>
    <td style="white-space: nowrap; text-align: right">27.58 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">46.24 K</td>
    <td style="white-space: nowrap; text-align: right">21.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±31.47%</td>
    <td style="white-space: nowrap; text-align: right">18.27 μs</td>
    <td style="white-space: nowrap; text-align: right">31.83 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">43.79 K</td>
    <td style="white-space: nowrap; text-align: right">22.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±31.08%</td>
    <td style="white-space: nowrap; text-align: right">22.63 μs</td>
    <td style="white-space: nowrap; text-align: right">29.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">41.18 K</td>
    <td style="white-space: nowrap; text-align: right">24.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±33.89%</td>
    <td style="white-space: nowrap; text-align: right">23.67 μs</td>
    <td style="white-space: nowrap; text-align: right">32.87 μs</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">46.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">43.79 K</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">41.18 K</td>
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
    <td style="white-space: nowrap">4.16 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">8.13 KB</td>
    <td>1.96x</td>
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
    <td style="white-space: nowrap; text-align: right">47.30 K</td>
    <td style="white-space: nowrap; text-align: right">21.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.40%</td>
    <td style="white-space: nowrap; text-align: right">18.13 μs</td>
    <td style="white-space: nowrap; text-align: right">30.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">42.95 K</td>
    <td style="white-space: nowrap; text-align: right">23.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±27.38%</td>
    <td style="white-space: nowrap; text-align: right">20.37 μs</td>
    <td style="white-space: nowrap; text-align: right">32.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">35.31 K</td>
    <td style="white-space: nowrap; text-align: right">28.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.27%</td>
    <td style="white-space: nowrap; text-align: right">31.12 μs</td>
    <td style="white-space: nowrap; text-align: right">32.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">35.05 K</td>
    <td style="white-space: nowrap; text-align: right">28.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.12%</td>
    <td style="white-space: nowrap; text-align: right">31.17 μs</td>
    <td style="white-space: nowrap; text-align: right">32.26 μs</td>
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
    <td style="white-space: nowrap;text-align: right">47.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">42.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">35.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">35.05 K</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">7.99 KB</td>
    <td>1.78x</td>
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
    <td style="white-space: nowrap; text-align: right">23450.14</td>
    <td style="white-space: nowrap; text-align: right">0.0426 ms</td>
    <td style="white-space: nowrap; text-align: right">±33.95%</td>
    <td style="white-space: nowrap; text-align: right">0.0510 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0510 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.48</td>
    <td style="white-space: nowrap; text-align: right">57.19 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.32%</td>
    <td style="white-space: nowrap; text-align: right">57.19 ms</td>
    <td style="white-space: nowrap; text-align: right">114.35 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">17.15</td>
    <td style="white-space: nowrap; text-align: right">58.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.32%</td>
    <td style="white-space: nowrap; text-align: right">58.30 ms</td>
    <td style="white-space: nowrap; text-align: right">116.56 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">17.07</td>
    <td style="white-space: nowrap; text-align: right">58.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.33%</td>
    <td style="white-space: nowrap; text-align: right">58.58 ms</td>
    <td style="white-space: nowrap; text-align: right">117.12 ms</td>
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
    <td style="white-space: nowrap;text-align: right">23450.14</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.48</td>
    <td style="white-space: nowrap; text-align: right">1341.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">17.15</td>
    <td style="white-space: nowrap; text-align: right">1367.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">17.07</td>
    <td style="white-space: nowrap; text-align: right">1373.76x</td>
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
    <td style="white-space: nowrap">17.13 KB</td>
    <td>2.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">12.59 KB</td>
    <td>1.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">17.65</td>
    <td style="white-space: nowrap; text-align: right">56.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.24%</td>
    <td style="white-space: nowrap; text-align: right">56.64 ms</td>
    <td style="white-space: nowrap; text-align: right">113.21 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.55</td>
    <td style="white-space: nowrap; text-align: right">56.99 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.25%</td>
    <td style="white-space: nowrap; text-align: right">56.99 ms</td>
    <td style="white-space: nowrap; text-align: right">113.91 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">17.32</td>
    <td style="white-space: nowrap; text-align: right">57.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.27%</td>
    <td style="white-space: nowrap; text-align: right">57.74 ms</td>
    <td style="white-space: nowrap; text-align: right">115.43 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">16.88</td>
    <td style="white-space: nowrap; text-align: right">59.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.27%</td>
    <td style="white-space: nowrap; text-align: right">59.24 ms</td>
    <td style="white-space: nowrap; text-align: right">118.41 ms</td>
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
    <td style="white-space: nowrap;text-align: right">17.65</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.55</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">17.32</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">16.88</td>
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
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">18.37 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">18.31 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">26.25</td>
    <td style="white-space: nowrap; text-align: right">38.10 ms</td>
    <td style="white-space: nowrap; text-align: right">±172.88%</td>
    <td style="white-space: nowrap; text-align: right">0.0795 ms</td>
    <td style="white-space: nowrap; text-align: right">114.14 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">17.63</td>
    <td style="white-space: nowrap; text-align: right">56.71 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.24%</td>
    <td style="white-space: nowrap; text-align: right">56.71 ms</td>
    <td style="white-space: nowrap; text-align: right">113.35 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">17.46</td>
    <td style="white-space: nowrap; text-align: right">57.27 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.21%</td>
    <td style="white-space: nowrap; text-align: right">57.27 ms</td>
    <td style="white-space: nowrap; text-align: right">114.45 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.43</td>
    <td style="white-space: nowrap; text-align: right">57.37 ms</td>
    <td style="white-space: nowrap; text-align: right">±141.20%</td>
    <td style="white-space: nowrap; text-align: right">57.37 ms</td>
    <td style="white-space: nowrap; text-align: right">114.66 ms</td>
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
    <td style="white-space: nowrap;text-align: right">26.25</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">17.63</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">17.46</td>
    <td style="white-space: nowrap; text-align: right">1.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.43</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">30.78 KB</td>
    <td>1.22x</td>
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
    <td style="white-space: nowrap; text-align: right">14.71 K</td>
    <td style="white-space: nowrap; text-align: right">67.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.95%</td>
    <td style="white-space: nowrap; text-align: right">66.26 μs</td>
    <td style="white-space: nowrap; text-align: right">82.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">14.53 K</td>
    <td style="white-space: nowrap; text-align: right">68.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.00%</td>
    <td style="white-space: nowrap; text-align: right">71.24 μs</td>
    <td style="white-space: nowrap; text-align: right">77.63 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">12.70 K</td>
    <td style="white-space: nowrap; text-align: right">78.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±33.44%</td>
    <td style="white-space: nowrap; text-align: right">74.50 μs</td>
    <td style="white-space: nowrap; text-align: right">110.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">12.61 K</td>
    <td style="white-space: nowrap; text-align: right">79.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.80%</td>
    <td style="white-space: nowrap; text-align: right">74.61 μs</td>
    <td style="white-space: nowrap; text-align: right">105.95 μs</td>
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
    <td style="white-space: nowrap;text-align: right">14.71 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">14.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">12.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">12.61 K</td>
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
    <td style="white-space: nowrap">29.94 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap; text-align: right">14.31 K</td>
    <td style="white-space: nowrap; text-align: right">69.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.71%</td>
    <td style="white-space: nowrap; text-align: right">68.27 μs</td>
    <td style="white-space: nowrap; text-align: right">75.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">14.26 K</td>
    <td style="white-space: nowrap; text-align: right">70.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.23%</td>
    <td style="white-space: nowrap; text-align: right">66.99 μs</td>
    <td style="white-space: nowrap; text-align: right">79.86 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">12.92 K</td>
    <td style="white-space: nowrap; text-align: right">77.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.53%</td>
    <td style="white-space: nowrap; text-align: right">79.50 μs</td>
    <td style="white-space: nowrap; text-align: right">85.72 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.75 K</td>
    <td style="white-space: nowrap; text-align: right">93.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.36%</td>
    <td style="white-space: nowrap; text-align: right">90.66 μs</td>
    <td style="white-space: nowrap; text-align: right">115.66 μs</td>
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
    <td style="white-space: nowrap;text-align: right">14.31 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">14.26 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">12.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.75 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">35.70 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">35.70 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">21.64 KB</td>
    <td>0.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">53.51 KB</td>
    <td>1.5x</td>
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
    <td style="white-space: nowrap; text-align: right">12.23 K</td>
    <td style="white-space: nowrap; text-align: right">81.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.15%</td>
    <td style="white-space: nowrap; text-align: right">79.16 μs</td>
    <td style="white-space: nowrap; text-align: right">94.71 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">11.48 K</td>
    <td style="white-space: nowrap; text-align: right">87.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.00%</td>
    <td style="white-space: nowrap; text-align: right">91.67 μs</td>
    <td style="white-space: nowrap; text-align: right">92.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">9.86 K</td>
    <td style="white-space: nowrap; text-align: right">101.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.18%</td>
    <td style="white-space: nowrap; text-align: right">99.70 μs</td>
    <td style="white-space: nowrap; text-align: right">108.83 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.15 K</td>
    <td style="white-space: nowrap; text-align: right">109.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±27.93%</td>
    <td style="white-space: nowrap; text-align: right">103.78 μs</td>
    <td style="white-space: nowrap; text-align: right">150.90 μs</td>
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
    <td style="white-space: nowrap;text-align: right">12.23 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">11.48 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">9.86 K</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.15 K</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">25 KB</td>
<td>&nbsp;</td>
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

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.98 K</td>
    <td style="white-space: nowrap; text-align: right">100.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.11%</td>
    <td style="white-space: nowrap; text-align: right">101.12 μs</td>
    <td style="white-space: nowrap; text-align: right">113.96 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">9.94 K</td>
    <td style="white-space: nowrap; text-align: right">100.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.52%</td>
    <td style="white-space: nowrap; text-align: right">99.88 μs</td>
    <td style="white-space: nowrap; text-align: right">110.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">9.62 K</td>
    <td style="white-space: nowrap; text-align: right">103.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.75%</td>
    <td style="white-space: nowrap; text-align: right">103.21 μs</td>
    <td style="white-space: nowrap; text-align: right">113.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.17 K</td>
    <td style="white-space: nowrap; text-align: right">109.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.91%</td>
    <td style="white-space: nowrap; text-align: right">94.20 μs</td>
    <td style="white-space: nowrap; text-align: right">159.17 μs</td>
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
    <td style="white-space: nowrap;text-align: right">9.98 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">9.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">9.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">9.17 K</td>
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
    <td style="white-space: nowrap">28.48 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">47.23 KB</td>
    <td>1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">47.29 KB</td>
    <td>1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">47.23 KB</td>
    <td>1.66x</td>
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
    <td style="white-space: nowrap; text-align: right">9.88 K</td>
    <td style="white-space: nowrap; text-align: right">101.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.41%</td>
    <td style="white-space: nowrap; text-align: right">98.60 μs</td>
    <td style="white-space: nowrap; text-align: right">110.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.01 K</td>
    <td style="white-space: nowrap; text-align: right">111.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.43%</td>
    <td style="white-space: nowrap; text-align: right">110.64 μs</td>
    <td style="white-space: nowrap; text-align: right">114.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">8.30 K</td>
    <td style="white-space: nowrap; text-align: right">120.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.40%</td>
    <td style="white-space: nowrap; text-align: right">108.85 μs</td>
    <td style="white-space: nowrap; text-align: right">165.73 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">8.27 K</td>
    <td style="white-space: nowrap; text-align: right">120.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.57%</td>
    <td style="white-space: nowrap; text-align: right">120.13 μs</td>
    <td style="white-space: nowrap; text-align: right">129.84 μs</td>
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
    <td style="white-space: nowrap;text-align: right">9.88 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">9.01 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">8.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">8.27 K</td>
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
    <td style="white-space: nowrap">53.11 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">32.02 KB</td>
    <td>0.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">53.11 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">53.16 KB</td>
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
    <td style="white-space: nowrap; text-align: right">9.20 K</td>
    <td style="white-space: nowrap; text-align: right">108.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.19%</td>
    <td style="white-space: nowrap; text-align: right">108.76 μs</td>
    <td style="white-space: nowrap; text-align: right">114.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">8.09 K</td>
    <td style="white-space: nowrap; text-align: right">123.63 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.02%</td>
    <td style="white-space: nowrap; text-align: right">125.01 μs</td>
    <td style="white-space: nowrap; text-align: right">129.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">7.96 K</td>
    <td style="white-space: nowrap; text-align: right">125.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.64%</td>
    <td style="white-space: nowrap; text-align: right">123.73 μs</td>
    <td style="white-space: nowrap; text-align: right">133.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">7.76 K</td>
    <td style="white-space: nowrap; text-align: right">128.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.83%</td>
    <td style="white-space: nowrap; text-align: right">126.60 μs</td>
    <td style="white-space: nowrap; text-align: right">146.25 μs</td>
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
    <td style="white-space: nowrap;text-align: right">9.20 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">8.09 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">7.96 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">7.76 K</td>
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
    <td style="white-space: nowrap">37.11 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">58.87 KB</td>
    <td>1.59x</td>
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
    <td style="white-space: nowrap; text-align: right">4.73 K</td>
    <td style="white-space: nowrap; text-align: right">211.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.87%</td>
    <td style="white-space: nowrap; text-align: right">208.46 μs</td>
    <td style="white-space: nowrap; text-align: right">230.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.54 K</td>
    <td style="white-space: nowrap; text-align: right">220.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.23%</td>
    <td style="white-space: nowrap; text-align: right">220.28 μs</td>
    <td style="white-space: nowrap; text-align: right">226.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.42 K</td>
    <td style="white-space: nowrap; text-align: right">226.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.55%</td>
    <td style="white-space: nowrap; text-align: right">217.39 μs</td>
    <td style="white-space: nowrap; text-align: right">264.87 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.21 K</td>
    <td style="white-space: nowrap; text-align: right">237.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.91%</td>
    <td style="white-space: nowrap; text-align: right">240.97 μs</td>
    <td style="white-space: nowrap; text-align: right">244.85 μs</td>
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
    <td style="white-space: nowrap;text-align: right">4.73 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.42 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.21 K</td>
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
    <td style="white-space: nowrap; text-align: right">323.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.77%</td>
    <td style="white-space: nowrap; text-align: right">321.74 μs</td>
    <td style="white-space: nowrap; text-align: right">347.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.00 K</td>
    <td style="white-space: nowrap; text-align: right">333.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±1.82%</td>
    <td style="white-space: nowrap; text-align: right">334.06 μs</td>
    <td style="white-space: nowrap; text-align: right">339.83 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.95 K</td>
    <td style="white-space: nowrap; text-align: right">338.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.29%</td>
    <td style="white-space: nowrap; text-align: right">338.02 μs</td>
    <td style="white-space: nowrap; text-align: right">347.57 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.86 K</td>
    <td style="white-space: nowrap; text-align: right">349.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.79%</td>
    <td style="white-space: nowrap; text-align: right">349.49 μs</td>
    <td style="white-space: nowrap; text-align: right">351.78 μs</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.00 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.86 K</td>
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
    <td style="white-space: nowrap">148.58 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">212.73 KB</td>
    <td>1.43x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">2.37 K</td>
    <td style="white-space: nowrap; text-align: right">421.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.76%</td>
    <td style="white-space: nowrap; text-align: right">411.31 μs</td>
    <td style="white-space: nowrap; text-align: right">457.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.35 K</td>
    <td style="white-space: nowrap; text-align: right">425.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.07%</td>
    <td style="white-space: nowrap; text-align: right">418.04 μs</td>
    <td style="white-space: nowrap; text-align: right">460.98 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">2.17 K</td>
    <td style="white-space: nowrap; text-align: right">460.63 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.12%</td>
    <td style="white-space: nowrap; text-align: right">449.60 μs</td>
    <td style="white-space: nowrap; text-align: right">513.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.13 K</td>
    <td style="white-space: nowrap; text-align: right">468.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.31%</td>
    <td style="white-space: nowrap; text-align: right">460.88 μs</td>
    <td style="white-space: nowrap; text-align: right">504.60 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2.37 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">2.35 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">2.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">2.13 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">302.55 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">207.52 KB</td>
    <td>0.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">302.55 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">297.12 KB</td>
    <td>0.98x</td>
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
    <td style="white-space: nowrap; text-align: right">551.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.33%</td>
    <td style="white-space: nowrap; text-align: right">559.59 μs</td>
    <td style="white-space: nowrap; text-align: right">580.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.76 K</td>
    <td style="white-space: nowrap; text-align: right">568.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.22%</td>
    <td style="white-space: nowrap; text-align: right">569.60 μs</td>
    <td style="white-space: nowrap; text-align: right">608.43 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.72 K</td>
    <td style="white-space: nowrap; text-align: right">580.63 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.24%</td>
    <td style="white-space: nowrap; text-align: right">592.32 μs</td>
    <td style="white-space: nowrap; text-align: right">602.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.65 K</td>
    <td style="white-space: nowrap; text-align: right">607.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.26%</td>
    <td style="white-space: nowrap; text-align: right">601.38 μs</td>
    <td style="white-space: nowrap; text-align: right">635.47 μs</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.76 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.65 K</td>
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
    <td style="white-space: nowrap; text-align: right">1.50 K</td>
    <td style="white-space: nowrap; text-align: right">665.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.66%</td>
    <td style="white-space: nowrap; text-align: right">651.62 μs</td>
    <td style="white-space: nowrap; text-align: right">725.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.49 K</td>
    <td style="white-space: nowrap; text-align: right">671.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.01%</td>
    <td style="white-space: nowrap; text-align: right">670.60 μs</td>
    <td style="white-space: nowrap; text-align: right">697.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.46 K</td>
    <td style="white-space: nowrap; text-align: right">685.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.37%</td>
    <td style="white-space: nowrap; text-align: right">680.30 μs</td>
    <td style="white-space: nowrap; text-align: right">727.33 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.40 K</td>
    <td style="white-space: nowrap; text-align: right">712.27 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.68%</td>
    <td style="white-space: nowrap; text-align: right">704.96 μs</td>
    <td style="white-space: nowrap; text-align: right">749.01 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.50 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.49 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.40 K</td>
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
    <td style="white-space: nowrap; text-align: right">1.30 K</td>
    <td style="white-space: nowrap; text-align: right">767.66 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.73%</td>
    <td style="white-space: nowrap; text-align: right">766.02 μs</td>
    <td style="white-space: nowrap; text-align: right">793.94 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.26 K</td>
    <td style="white-space: nowrap; text-align: right">792.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.24%</td>
    <td style="white-space: nowrap; text-align: right">788.25 μs</td>
    <td style="white-space: nowrap; text-align: right">847.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.23 K</td>
    <td style="white-space: nowrap; text-align: right">813.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.09%</td>
    <td style="white-space: nowrap; text-align: right">808.44 μs</td>
    <td style="white-space: nowrap; text-align: right">859.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.22 K</td>
    <td style="white-space: nowrap; text-align: right">816.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.89%</td>
    <td style="white-space: nowrap; text-align: right">809.65 μs</td>
    <td style="white-space: nowrap; text-align: right">850.56 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.26 K</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.23 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.22 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
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
    <td style="white-space: nowrap; text-align: right">1.11 K</td>
    <td style="white-space: nowrap; text-align: right">896.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.91%</td>
    <td style="white-space: nowrap; text-align: right">912.50 μs</td>
    <td style="white-space: nowrap; text-align: right">942.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.11 K</td>
    <td style="white-space: nowrap; text-align: right">900.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.29%</td>
    <td style="white-space: nowrap; text-align: right">907.72 μs</td>
    <td style="white-space: nowrap; text-align: right">933.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.07 K</td>
    <td style="white-space: nowrap; text-align: right">937.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.14%</td>
    <td style="white-space: nowrap; text-align: right">944.83 μs</td>
    <td style="white-space: nowrap; text-align: right">1009.60 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.03 K</td>
    <td style="white-space: nowrap; text-align: right">967.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.79%</td>
    <td style="white-space: nowrap; text-align: right">968.82 μs</td>
    <td style="white-space: nowrap; text-align: right">992.28 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1.11 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">1.11 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">1.07 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">1.03 K</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">979.76</td>
    <td style="white-space: nowrap; text-align: right">1.02 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.98%</td>
    <td style="white-space: nowrap; text-align: right">1.04 ms</td>
    <td style="white-space: nowrap; text-align: right">1.05 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">978.76</td>
    <td style="white-space: nowrap; text-align: right">1.02 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.67%</td>
    <td style="white-space: nowrap; text-align: right">1.02 ms</td>
    <td style="white-space: nowrap; text-align: right">1.08 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">962.30</td>
    <td style="white-space: nowrap; text-align: right">1.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.02%</td>
    <td style="white-space: nowrap; text-align: right">1.04 ms</td>
    <td style="white-space: nowrap; text-align: right">1.10 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">896.07</td>
    <td style="white-space: nowrap; text-align: right">1.12 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.75%</td>
    <td style="white-space: nowrap; text-align: right">1.11 ms</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap;text-align: right">979.76</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">978.76</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">962.30</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">896.07</td>
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
    <td style="white-space: nowrap">622.17 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">477.29 KB</td>
    <td>0.77x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">622.17 KB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">630.59 KB</td>
    <td>1.01x</td>
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
    <td style="white-space: nowrap; text-align: right">922.64</td>
    <td style="white-space: nowrap; text-align: right">1.08 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.68%</td>
    <td style="white-space: nowrap; text-align: right">1.09 ms</td>
    <td style="white-space: nowrap; text-align: right">1.10 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">913.57</td>
    <td style="white-space: nowrap; text-align: right">1.09 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.73%</td>
    <td style="white-space: nowrap; text-align: right">1.09 ms</td>
    <td style="white-space: nowrap; text-align: right">1.13 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">863.83</td>
    <td style="white-space: nowrap; text-align: right">1.16 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.86%</td>
    <td style="white-space: nowrap; text-align: right">1.17 ms</td>
    <td style="white-space: nowrap; text-align: right">1.20 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">828.92</td>
    <td style="white-space: nowrap; text-align: right">1.21 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.57%</td>
    <td style="white-space: nowrap; text-align: right">1.21 ms</td>
    <td style="white-space: nowrap; text-align: right">1.26 ms</td>
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
    <td style="white-space: nowrap;text-align: right">922.64</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">913.57</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">863.83</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">828.92</td>
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
    <td style="white-space: nowrap; text-align: right">453.72</td>
    <td style="white-space: nowrap; text-align: right">2.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.47%</td>
    <td style="white-space: nowrap; text-align: right">2.23 ms</td>
    <td style="white-space: nowrap; text-align: right">2.24 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">451.47</td>
    <td style="white-space: nowrap; text-align: right">2.21 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.34%</td>
    <td style="white-space: nowrap; text-align: right">2.17 ms</td>
    <td style="white-space: nowrap; text-align: right">2.42 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">446.92</td>
    <td style="white-space: nowrap; text-align: right">2.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.24%</td>
    <td style="white-space: nowrap; text-align: right">2.22 ms</td>
    <td style="white-space: nowrap; text-align: right">2.37 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">409.82</td>
    <td style="white-space: nowrap; text-align: right">2.44 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.18%</td>
    <td style="white-space: nowrap; text-align: right">2.48 ms</td>
    <td style="white-space: nowrap; text-align: right">2.51 ms</td>
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
    <td style="white-space: nowrap;text-align: right">453.72</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">451.47</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">446.92</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">409.82</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">299.80</td>
    <td style="white-space: nowrap; text-align: right">3.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.50%</td>
    <td style="white-space: nowrap; text-align: right">3.30 ms</td>
    <td style="white-space: nowrap; text-align: right">3.46 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">293.04</td>
    <td style="white-space: nowrap; text-align: right">3.41 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.51%</td>
    <td style="white-space: nowrap; text-align: right">3.41 ms</td>
    <td style="white-space: nowrap; text-align: right">3.47 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">292.70</td>
    <td style="white-space: nowrap; text-align: right">3.42 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.34%</td>
    <td style="white-space: nowrap; text-align: right">3.37 ms</td>
    <td style="white-space: nowrap; text-align: right">3.58 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">270.94</td>
    <td style="white-space: nowrap; text-align: right">3.69 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.39%</td>
    <td style="white-space: nowrap; text-align: right">3.65 ms</td>
    <td style="white-space: nowrap; text-align: right">3.87 ms</td>
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
    <td style="white-space: nowrap;text-align: right">299.80</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">293.04</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">292.70</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">270.94</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">2.46 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">2.46 MB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">1.42 MB</td>
    <td>0.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">2.52 MB</td>
    <td>1.02x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">227.85</td>
    <td style="white-space: nowrap; text-align: right">4.39 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.80%</td>
    <td style="white-space: nowrap; text-align: right">4.36 ms</td>
    <td style="white-space: nowrap; text-align: right">4.50 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">214.71</td>
    <td style="white-space: nowrap; text-align: right">4.66 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.36%</td>
    <td style="white-space: nowrap; text-align: right">4.64 ms</td>
    <td style="white-space: nowrap; text-align: right">4.78 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">211.12</td>
    <td style="white-space: nowrap; text-align: right">4.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.88%</td>
    <td style="white-space: nowrap; text-align: right">4.74 ms</td>
    <td style="white-space: nowrap; text-align: right">4.78 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">198.30</td>
    <td style="white-space: nowrap; text-align: right">5.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.63%</td>
    <td style="white-space: nowrap; text-align: right">4.84 ms</td>
    <td style="white-space: nowrap; text-align: right">5.60 ms</td>
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
    <td style="white-space: nowrap;text-align: right">227.85</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">214.71</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">211.12</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">198.30</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.27 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">2.10 MB</td>
    <td>0.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">3.37 MB</td>
    <td>1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">3.27 MB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">182.09</td>
    <td style="white-space: nowrap; text-align: right">5.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.10%</td>
    <td style="white-space: nowrap; text-align: right">5.50 ms</td>
    <td style="white-space: nowrap; text-align: right">5.63 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">179.24</td>
    <td style="white-space: nowrap; text-align: right">5.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.08%</td>
    <td style="white-space: nowrap; text-align: right">5.59 ms</td>
    <td style="white-space: nowrap; text-align: right">5.65 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">175.79</td>
    <td style="white-space: nowrap; text-align: right">5.69 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.34%</td>
    <td style="white-space: nowrap; text-align: right">5.62 ms</td>
    <td style="white-space: nowrap; text-align: right">5.96 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">165.26</td>
    <td style="white-space: nowrap; text-align: right">6.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.04%</td>
    <td style="white-space: nowrap; text-align: right">5.97 ms</td>
    <td style="white-space: nowrap; text-align: right">6.32 ms</td>
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
    <td style="white-space: nowrap;text-align: right">182.09</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">179.24</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">175.79</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">165.26</td>
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
    <td style="white-space: nowrap">2.78 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">3.66 MB</td>
    <td>1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
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
    <td style="white-space: nowrap; text-align: right">153.68</td>
    <td style="white-space: nowrap; text-align: right">6.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.59%</td>
    <td style="white-space: nowrap; text-align: right">6.49 ms</td>
    <td style="white-space: nowrap; text-align: right">6.64 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">145.78</td>
    <td style="white-space: nowrap; text-align: right">6.86 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.47%</td>
    <td style="white-space: nowrap; text-align: right">6.83 ms</td>
    <td style="white-space: nowrap; text-align: right">7.08 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">143.41</td>
    <td style="white-space: nowrap; text-align: right">6.97 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.30%</td>
    <td style="white-space: nowrap; text-align: right">7.15 ms</td>
    <td style="white-space: nowrap; text-align: right">7.22 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">136.89</td>
    <td style="white-space: nowrap; text-align: right">7.31 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.06%</td>
    <td style="white-space: nowrap; text-align: right">7.22 ms</td>
    <td style="white-space: nowrap; text-align: right">7.64 ms</td>
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
    <td style="white-space: nowrap;text-align: right">153.68</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">145.78</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">143.41</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">136.89</td>
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
    <td style="white-space: nowrap; text-align: right">132.11</td>
    <td style="white-space: nowrap; text-align: right">7.57 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.31%</td>
    <td style="white-space: nowrap; text-align: right">7.60 ms</td>
    <td style="white-space: nowrap; text-align: right">7.66 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">125.76</td>
    <td style="white-space: nowrap; text-align: right">7.95 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.97%</td>
    <td style="white-space: nowrap; text-align: right">7.86 ms</td>
    <td style="white-space: nowrap; text-align: right">8.40 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">125.32</td>
    <td style="white-space: nowrap; text-align: right">7.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.72%</td>
    <td style="white-space: nowrap; text-align: right">7.81 ms</td>
    <td style="white-space: nowrap; text-align: right">8.41 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">118.08</td>
    <td style="white-space: nowrap; text-align: right">8.47 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.66%</td>
    <td style="white-space: nowrap; text-align: right">8.46 ms</td>
    <td style="white-space: nowrap; text-align: right">8.70 ms</td>
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
    <td style="white-space: nowrap;text-align: right">132.11</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">125.76</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">125.32</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">118.08</td>
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
    <td style="white-space: nowrap; text-align: right">114.12</td>
    <td style="white-space: nowrap; text-align: right">8.76 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.11%</td>
    <td style="white-space: nowrap; text-align: right">8.78 ms</td>
    <td style="white-space: nowrap; text-align: right">8.87 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">110.66</td>
    <td style="white-space: nowrap; text-align: right">9.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.57%</td>
    <td style="white-space: nowrap; text-align: right">9.03 ms</td>
    <td style="white-space: nowrap; text-align: right">9.18 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">107.82</td>
    <td style="white-space: nowrap; text-align: right">9.27 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.36%</td>
    <td style="white-space: nowrap; text-align: right">9.20 ms</td>
    <td style="white-space: nowrap; text-align: right">9.71 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">102.34</td>
    <td style="white-space: nowrap; text-align: right">9.77 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.24%</td>
    <td style="white-space: nowrap; text-align: right">9.68 ms</td>
    <td style="white-space: nowrap; text-align: right">10.02 ms</td>
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
    <td style="white-space: nowrap;text-align: right">114.12</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">110.66</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">107.82</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">102.34</td>
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
    <td style="white-space: nowrap">4.31 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">6.40 MB</td>
    <td>1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">6.40 MB</td>
    <td>1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">6.74 MB</td>
    <td>1.57x</td>
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
    <td style="white-space: nowrap; text-align: right">99.75</td>
    <td style="white-space: nowrap; text-align: right">10.02 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.69%</td>
    <td style="white-space: nowrap; text-align: right">9.89 ms</td>
    <td style="white-space: nowrap; text-align: right">10.57 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">97.64</td>
    <td style="white-space: nowrap; text-align: right">10.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.06%</td>
    <td style="white-space: nowrap; text-align: right">10.17 ms</td>
    <td style="white-space: nowrap; text-align: right">10.48 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">92.14</td>
    <td style="white-space: nowrap; text-align: right">10.85 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.37%</td>
    <td style="white-space: nowrap; text-align: right">10.79 ms</td>
    <td style="white-space: nowrap; text-align: right">11.02 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">88.69</td>
    <td style="white-space: nowrap; text-align: right">11.28 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.58%</td>
    <td style="white-space: nowrap; text-align: right">11.09 ms</td>
    <td style="white-space: nowrap; text-align: right">11.86 ms</td>
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
    <td style="white-space: nowrap;text-align: right">99.75</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">97.64</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">92.14</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">88.69</td>
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
    <td style="white-space: nowrap">5.15 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">6.51 MB</td>
    <td>1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">6.51 MB</td>
    <td>1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">6.52 MB</td>
    <td>1.27x</td>
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
    <td style="white-space: nowrap; text-align: right">91.83</td>
    <td style="white-space: nowrap; text-align: right">10.89 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.76%</td>
    <td style="white-space: nowrap; text-align: right">10.84 ms</td>
    <td style="white-space: nowrap; text-align: right">11.10 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">88.81</td>
    <td style="white-space: nowrap; text-align: right">11.26 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.55%</td>
    <td style="white-space: nowrap; text-align: right">11.18 ms</td>
    <td style="white-space: nowrap; text-align: right">11.52 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">88.65</td>
    <td style="white-space: nowrap; text-align: right">11.28 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.70%</td>
    <td style="white-space: nowrap; text-align: right">11.18 ms</td>
    <td style="white-space: nowrap; text-align: right">11.62 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">81.09</td>
    <td style="white-space: nowrap; text-align: right">12.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.49%</td>
    <td style="white-space: nowrap; text-align: right">12.42 ms</td>
    <td style="white-space: nowrap; text-align: right">12.45 ms</td>
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
    <td style="white-space: nowrap;text-align: right">91.83</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">88.81</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">88.65</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">81.09</td>
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
    <td style="white-space: nowrap; text-align: right">44.69</td>
    <td style="white-space: nowrap; text-align: right">22.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.67%</td>
    <td style="white-space: nowrap; text-align: right">22.45 ms</td>
    <td style="white-space: nowrap; text-align: right">22.48 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">43.56</td>
    <td style="white-space: nowrap; text-align: right">22.96 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.44%</td>
    <td style="white-space: nowrap; text-align: right">22.73 ms</td>
    <td style="white-space: nowrap; text-align: right">23.60 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">40.76</td>
    <td style="white-space: nowrap; text-align: right">24.53 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.72%</td>
    <td style="white-space: nowrap; text-align: right">24.62 ms</td>
    <td style="white-space: nowrap; text-align: right">24.65 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">40.56</td>
    <td style="white-space: nowrap; text-align: right">24.65 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.86%</td>
    <td style="white-space: nowrap; text-align: right">24.64 ms</td>
    <td style="white-space: nowrap; text-align: right">24.87 ms</td>
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
    <td style="white-space: nowrap;text-align: right">44.69</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">43.56</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">40.76</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">40.56</td>
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
    <td style="white-space: nowrap; text-align: right">27.89</td>
    <td style="white-space: nowrap; text-align: right">35.85 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.57%</td>
    <td style="white-space: nowrap; text-align: right">35.13 ms</td>
    <td style="white-space: nowrap; text-align: right">37.33 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">24.69</td>
    <td style="white-space: nowrap; text-align: right">40.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.21%</td>
    <td style="white-space: nowrap; text-align: right">43.01 ms</td>
    <td style="white-space: nowrap; text-align: right">43.25 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">22.24</td>
    <td style="white-space: nowrap; text-align: right">44.97 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.62%</td>
    <td style="white-space: nowrap; text-align: right">44.97 ms</td>
    <td style="white-space: nowrap; text-align: right">45.80 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">21.77</td>
    <td style="white-space: nowrap; text-align: right">45.93 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.39%</td>
    <td style="white-space: nowrap; text-align: right">45.93 ms</td>
    <td style="white-space: nowrap; text-align: right">46.06 ms</td>
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
    <td style="white-space: nowrap;text-align: right">27.89</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">24.69</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">22.24</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">21.77</td>
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
    <td style="white-space: nowrap; text-align: right">17.85</td>
    <td style="white-space: nowrap; text-align: right">56.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.76%</td>
    <td style="white-space: nowrap; text-align: right">56.03 ms</td>
    <td style="white-space: nowrap; text-align: right">59.11 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">17.10</td>
    <td style="white-space: nowrap; text-align: right">58.48 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.13%</td>
    <td style="white-space: nowrap; text-align: right">58.48 ms</td>
    <td style="white-space: nowrap; text-align: right">58.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.00</td>
    <td style="white-space: nowrap; text-align: right">58.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.95%</td>
    <td style="white-space: nowrap; text-align: right">58.82 ms</td>
    <td style="white-space: nowrap; text-align: right">60.04 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">16.28</td>
    <td style="white-space: nowrap; text-align: right">61.43 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.68%</td>
    <td style="white-space: nowrap; text-align: right">61.43 ms</td>
    <td style="white-space: nowrap; text-align: right">61.73 ms</td>
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
    <td style="white-space: nowrap;text-align: right">17.85</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">17.10</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">17.00</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">16.28</td>
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
    <td style="white-space: nowrap; text-align: right">14.69</td>
    <td style="white-space: nowrap; text-align: right">68.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.05%</td>
    <td style="white-space: nowrap; text-align: right">68.05 ms</td>
    <td style="white-space: nowrap; text-align: right">69.04 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">7.68</td>
    <td style="white-space: nowrap; text-align: right">130.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±62.79%</td>
    <td style="white-space: nowrap; text-align: right">130.20 ms</td>
    <td style="white-space: nowrap; text-align: right">188.01 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">5.14</td>
    <td style="white-space: nowrap; text-align: right">194.46 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">194.46 ms</td>
    <td style="white-space: nowrap; text-align: right">194.46 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.90</td>
    <td style="white-space: nowrap; text-align: right">204.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">204.20 ms</td>
    <td style="white-space: nowrap; text-align: right">204.20 ms</td>
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
    <td style="white-space: nowrap;text-align: right">14.69</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">7.68</td>
    <td style="white-space: nowrap; text-align: right">1.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">5.14</td>
    <td style="white-space: nowrap; text-align: right">2.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.90</td>
    <td style="white-space: nowrap; text-align: right">3.0x</td>
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
    <td style="white-space: nowrap; text-align: right">11.51</td>
    <td style="white-space: nowrap; text-align: right">86.88 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.04%</td>
    <td style="white-space: nowrap; text-align: right">86.88 ms</td>
    <td style="white-space: nowrap; text-align: right">88.13 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">11.18</td>
    <td style="white-space: nowrap; text-align: right">89.42 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.79%</td>
    <td style="white-space: nowrap; text-align: right">89.42 ms</td>
    <td style="white-space: nowrap; text-align: right">90.56 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.75</td>
    <td style="white-space: nowrap; text-align: right">93.01 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.44%</td>
    <td style="white-space: nowrap; text-align: right">93.01 ms</td>
    <td style="white-space: nowrap; text-align: right">93.95 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">4.70</td>
    <td style="white-space: nowrap; text-align: right">212.90 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">212.90 ms</td>
    <td style="white-space: nowrap; text-align: right">212.90 ms</td>
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
    <td style="white-space: nowrap;text-align: right">11.51</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">11.18</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">10.75</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">4.70</td>
    <td style="white-space: nowrap; text-align: right">2.45x</td>
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
    <td style="white-space: nowrap; text-align: right">10.25</td>
    <td style="white-space: nowrap; text-align: right">97.59 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.58%</td>
    <td style="white-space: nowrap; text-align: right">97.59 ms</td>
    <td style="white-space: nowrap; text-align: right">99.37 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.45</td>
    <td style="white-space: nowrap; text-align: right">224.57 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">224.57 ms</td>
    <td style="white-space: nowrap; text-align: right">224.57 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.36</td>
    <td style="white-space: nowrap; text-align: right">229.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">229.58 ms</td>
    <td style="white-space: nowrap; text-align: right">229.58 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.30</td>
    <td style="white-space: nowrap; text-align: right">232.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">232.64 ms</td>
    <td style="white-space: nowrap; text-align: right">232.64 ms</td>
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
    <td style="white-space: nowrap;text-align: right">10.25</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">4.45</td>
    <td style="white-space: nowrap; text-align: right">2.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">4.36</td>
    <td style="white-space: nowrap; text-align: right">2.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">4.30</td>
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
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">40.81 MB</td>
<td>&nbsp;</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">56.99 MB</td>
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
    <td style="white-space: nowrap; text-align: right">9.02</td>
    <td style="white-space: nowrap; text-align: right">110.84 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.98%</td>
    <td style="white-space: nowrap; text-align: right">110.84 ms</td>
    <td style="white-space: nowrap; text-align: right">113.18 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.19</td>
    <td style="white-space: nowrap; text-align: right">313.08 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">313.08 ms</td>
    <td style="white-space: nowrap; text-align: right">313.08 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.17</td>
    <td style="white-space: nowrap; text-align: right">315.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">315.74 ms</td>
    <td style="white-space: nowrap; text-align: right">315.74 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.03</td>
    <td style="white-space: nowrap; text-align: right">329.85 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">329.85 ms</td>
    <td style="white-space: nowrap; text-align: right">329.85 ms</td>
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
    <td style="white-space: nowrap;text-align: right">9.02</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.19</td>
    <td style="white-space: nowrap; text-align: right">2.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.17</td>
    <td style="white-space: nowrap; text-align: right">2.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.03</td>
    <td style="white-space: nowrap; text-align: right">2.98x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.79</td>
    <td style="white-space: nowrap; text-align: right">263.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">263.54 ms</td>
    <td style="white-space: nowrap; text-align: right">263.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">3.77</td>
    <td style="white-space: nowrap; text-align: right">265.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">265.58 ms</td>
    <td style="white-space: nowrap; text-align: right">265.58 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.59</td>
    <td style="white-space: nowrap; text-align: right">278.79 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">278.79 ms</td>
    <td style="white-space: nowrap; text-align: right">278.79 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.55</td>
    <td style="white-space: nowrap; text-align: right">281.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">281.58 ms</td>
    <td style="white-space: nowrap; text-align: right">281.58 ms</td>
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
    <td style="white-space: nowrap;text-align: right">3.79</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">3.77</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.59</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.55</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">66.92 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">48.63 MB</td>
    <td>0.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">69.75 MB</td>
    <td>1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">66.92 MB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap; text-align: right">3.61</td>
    <td style="white-space: nowrap; text-align: right">277.37 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">277.37 ms</td>
    <td style="white-space: nowrap; text-align: right">277.37 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.54</td>
    <td style="white-space: nowrap; text-align: right">282.17 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">282.17 ms</td>
    <td style="white-space: nowrap; text-align: right">282.17 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.41</td>
    <td style="white-space: nowrap; text-align: right">293.39 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">293.39 ms</td>
    <td style="white-space: nowrap; text-align: right">293.39 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">3.38</td>
    <td style="white-space: nowrap; text-align: right">295.53 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">295.53 ms</td>
    <td style="white-space: nowrap; text-align: right">295.53 ms</td>
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
    <td style="white-space: nowrap;text-align: right">3.61</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap; text-align: right">3.54</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap; text-align: right">3.41</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap; text-align: right">3.38</td>
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
    <td style="white-space: nowrap">MapsFilterProf.direct_filter_inlined</td>
    <td style="white-space: nowrap">74.84 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.wrapped_filter</td>
    <td style="white-space: nowrap">76.60 MB</td>
    <td>1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">MapsFilterProf.direct_filter</td>
    <td style="white-space: nowrap">74.84 MB</td>
    <td>1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">:maps.filter</td>
    <td style="white-space: nowrap">52.53 MB</td>
    <td>0.7x</td>
  </tr>

</table>


<hr/>

