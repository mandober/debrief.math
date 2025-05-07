# Derivative of displacement

https://math.ucr.edu/home/baez/physics/General/jerk.html
https://en.wikipedia.org/wiki/Jerk_(physics)

- 0th derivative is f(x) itself: function of displacement
- 1st derivative of displacement is speed
- 2nd derivative of displacement is velocity
- 3rd derivative of displacement is jerk
- 4th derivative of displacement is pop
- 5th derivative of displacement is crank

where:
- r position
- v velocity
- a acceleration
- j jerk
- s snap
- c crackle
- p pop



Time-derivatives of position function
- 0: position, displacement, m
- 1: velocity (speed),       m/s
- 2: acceleration,           m/s²
- 3: jerk,                   m/s³
- 4: snap, jounce,           m/s⁴
- 5: crackle,                m/s⁵
- 6: pop,                    m/s⁶

As a vector, jerk `j(t)` can be expressed as 
- 1st time derivative of acceleration, `da/dt`
- 2nd time derivative of velocity, `d²v/dt²`
- 3rd time derivative of position, `d³r/dt³`

```js
       da(t)   d²v(t)   d³r(t)
j(t) = ----- = ------ = -------
         dt     dt²       dt³
```

where:
- t  time
- r  position
- v  velocity
- a  acceleration


## Latex

$$
\left (
  { \overset {\mathbf {...} } x},
  { \ddot x} , {\dot x}, x
\right )
\overset {deriv} x,
  \overset {sin} x,
  \overset {log} x,
  \overset {cos} x,
  \overset {exp} x, \\
  { \overset {\mathbf {exp} } x}, \\
  { \overset {\mathbf {...} } x}, \\
  \ddddot x,
  \dddot x,
  \ddot x,
  \dot x,
  x
$$
