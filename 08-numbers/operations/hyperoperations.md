# Hyperoperations

$$
\begin{align}
 & \text{succ}:    & S(x)     \quad &                       \\
 & \text{add}:     & m+n      \quad &                       \\
 & \text{mult}:    & m*n      \quad &                       \\
 & \text{exp}:     & m^n      \quad & m \uparrow         n  \\
 & \text{tet}:     & ^mn      \quad & m \uparrow\uparrow n  \\
 & \text{hyper-k}: & h_k(m,n) \quad & m \uparrow^{k}   n    \\
\end{align}
$$

### Hyperops

$$
\begin{align}
& h_{1}  (m,n_{+1})&=& h_{0}(m,h_0    (m,n)) &=& S(m+n)        \tag{add} \\
& h_{2}  (m,n_{+1})&=& h_{1}(m,h_1    (m,n)) &=& m+(m*n)       \tag{mul} \\
& h_{3}  (m,n_{+1})&=& h_{2}(m,h_2    (m,n)) &=& m*(m^n)       \tag{exp} \\
& h_{k'}(m,n')&=& h_k(m,h_{k'}(m,n)) &=& m\uparrow^{k}(m\uparrow^{k'}n') \\
& h_{k+1}(m,n_{+1})&=& h_{k}(m,h_{k+1}(m,n)) &=& m\uparrow^{k}(m\uparrow^{k+1}n) \\
& h_{k}(m,n)&=& h_{k-1}(m,h_k(m,n_{-1})) &=& m\uparrow^{k-1}(m\uparrow^{k}n-1)\\
\end{align}
$$


## Zeration, H0
- 0th hyperop
- successor function, successor operator
- succession
As the zeroth hyperoperation, successor is also called **zeration**: 
$$H_0(m, n) = 1 + n$$

The successor function is the level-0 foundation of the infinite Grzegorczyk hierarchy of hyperoperations, used to build addition, multiplication, exponentiation, tetration, etc.
The extension of zeration is addition, defined as *repeated succession*.
The extension of addition is multiplication, defined as *repeated addition*.


### Knuth's up-arrow notation

Single arrow is iterated multiplication i.e. exponentiation:   
$$\displaystyle{
2 \uparrow 4 = 
2 \times (2\times (2\times 2)) = 
2^{4} = 16
}$$

Double arrow is iterated exponentiation i.e. tetration:   
$$\displaystyle{
2\uparrow \uparrow 4 = 2 \uparrow (2\uparrow (2\uparrow 2)) = 
{^4}2 = 2^{2^{2^{2}}} = 2^{2^{4}} = 2^{16} = 65,536
}$$

Triple arrow is iterated tetration (pentation):   
$$\displaystyle{
\begin{aligned}
  2\uparrow \uparrow \uparrow 3
&=2\uparrow \uparrow (2\uparrow \uparrow 2)   \\
&=2\uparrow \uparrow (2\uparrow 2)            \\
&=2\uparrow \uparrow 4 \\
&= {^{^{^{^2}2}2}2}
\end{aligned}
}$$

The general definition of the notation:   
$$\displaystyle{
m \uparrow^k n = {
  \begin{cases}
  1                 & \text{if } n=0       \\
  m \uparrow^{k-1}(m \uparrow^{k}(n_{-1}))  &{\text{otherwise}}
\end{cases}
}
}$$

$$\uparrow^k$$ stands for k arrows:    
$${\displaystyle 2\uparrow \uparrow \uparrow \uparrow 3=2\uparrow^{4}3}$$
