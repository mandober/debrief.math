# GNUplot

```gnuplot {cmd=true output="html"}
set terminal svg

set xrange [-3:3]
set yrange [-0.9:5.1]
set samples 500

set ticscale 0.5
set xtics axis 1
set ytics axis 1

set grid linewidth 0.1
unset key
unset border

plot exp(x)
plot 10**x
plot 2**x
plot 0.5**x
```


```gnuplot {cmd=true output="html"}
set terminal svg
set title "Power Functions" font ",20"
set key left box
set samples 50
set style data points

plot [-10:10] sin(x),atan(x),cos(atan(x))
```

## Trig functions

```gnuplot {cmd=true output="html"}
set terminal svg
plot sin(x), atan(x), cos(atan(x)), asin(x), acos(x)
```
