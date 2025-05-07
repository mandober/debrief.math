# Derivatives of position

position ∙ velocity ∙ acceleration ∙ jerk ∙ snap ∙ cracle ∙ pop


**Position** is a function of time, `u(t)` (we use `u` because `p` is usually reserved for momentum). The position function takes time (in seconds) as arg and returns the displacement in meters. The position function tells the distance travelled given a time `t`. At t=0, the distance travelled is (probably) also 0.

When considering the derivatives of some function `f(x)`, especially if it has many useful derivatives, it is often convenient to consider the function itself as its own zeroth derivative, `f⁽⁰⁾(x) = f(x)`. Such is the case with the position function, `u(t)`, whose derivatives are the well-known functions related to motion.

Derivatives of the position function with respect to time
- u⁽⁰⁾(t) = u(t) position or displacement, in m
- u⁽¹⁾(t) = v(t) velocity or speed, in m/s
- u⁽²⁾(t) = a(t) acceleration, in m/s²
- u⁽³⁾(t) = j(t) jerk, in m/s³
- u⁽⁴⁾(t) = j(t) snap or jounce, in m/s⁴
- u⁽⁵⁾(t) = c(t) crackle, in m/s⁵
- u⁽⁶⁾(t) = p(t) pop, in m/s⁶

Functions
- position, u(t) in m
- velocity, v(t) in m/s
- accel,    a(t) in m/s²
- jerk,     j(t) in m/s³
- snap,     s(t) in m/s⁴
- crackle,  c(t) in m/s⁵
- pop,      p(t) in m/s⁶

**pop** function of time, `p(t)`, in m/s⁶
- 1st derivative of crackle, c⁽¹⁾(t)
- 2nd derivative of snap,    s⁽²⁾(t)
- 3rd derivative of jerk,    j⁽³⁾(t)
- 4th derivative of accel,   a⁽⁴⁾(t)
- 5th derivative of veloc,   v⁽⁵⁾(t)
- 6th derivative of pos,     u⁽⁶⁾(t)

pop, `p(t)` = c′(t) = s′′(t) = j′′′(t) = a⁽⁴⁾(t) = v⁽⁵⁾(t) = u⁽⁶⁾(t)

crackle, `c(t)`
- 1st derivative of snap, s′(t)
- 2nd derivative of jerk, j′′(t)
- 3rd derivative of accel, j′′(t)
- crackle, c(t) = s′(t) = j′′(t) = 



- position, `u(t)`, is a function of time
  - `u` is a function of time `t`
  - u(t)
- velocity, `v(t)`, is a function of time
  - `v` is the 1st derivative of position `u`
  - v(t) = u′(t)
- acceleration, `a(t)`, is a function of time
  - `a` is the 1st derivative of velocity `v`
  - `a` is the 2nd derivative of position `u`
  - a(t) = v′(t) = u′′(t)
- jerk, `j(t)`, is a function of time
  - `j` is the 1st derivative of acceleration `a`
  - `j` is the 2nd derivative of velocity `v`
  - `j` is the 3rd derivative of position `u`
  - j(t) = a′(t) = v′′(t) = u′′′(t)
