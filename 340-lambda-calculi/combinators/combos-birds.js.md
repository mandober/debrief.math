// birds

// B
const B   = a => b => c =>           a(b(c))
const B1  = a => b => c => d =>      a(b(c)(d))
const B2  = a => b => c => d => e => a(b(c)(d)(e))
const B3  = a => b => c => d =>      a(b(c(d)))

const C   = a => b => c =>           a(c)(b)
const C_  = a => b => c => d =>      a(b)(d)(c)
const C__ = a => b => c => d => e => a(b)(c)(e)(d)

const D   = a => b => c => d =>      a(b)(c(d))
const D1  = a => b => c => d => e => a(b)(c)(d(e))
const D2  = a => b => c => d => e => a(b(c))(d(e))
const E   = a => b => c => d => e => a(b)(c(d)(e))
const F   = a => b => c => c(b)(     a)
const F_  = a => b => c => d =>      a(d)(c)(b)
const F__ = a => b => c => d => e => a(b)(e)(d)(c)
const G   = a => b => c => d =>      a(d)(b(c))
const H   = a => b => c =>           a(b)(c)(b)
const I   = a =>                     a
const I_  = a => b =>                a(b)
const I__ = a => b => c =>           a(b)(c)
const J   = a => b => c => d =>      a(b)(a(d)(c))
const K   = a => b =>                a
const L   = a => b =>                a(b(b))

const M   = f => f(f)
const M2  = a => b =>                a(b)(a(b))

const O   = a => b => b(             a(b))
const Q   = a => b => c => b(        a(c))
const Q1  = a => b => c =>           a(c(b))
const Q2  = a => b => c => b(c(      a))
const Q3  = a => b => c => c(        a(b))
const Q4  = a => b => c => c(b(      a))
const R   = a => b => c => b(c)(     a)
const R_  = a => b => c => d =>      a(c)(d)(b)
const R__ = a => b => c => d => e => a(b)(d)(e)(c)
const S   = a => b => c =>           a(c)(b(c))
const T   = a => b => b(             a)
const U   = a => b => b(             a(a)(b))
const V   = a => b => c => c(        a)(b)
const V_  = a => b => c => d =>      a(c)(b)(d)
const V__ = a => b => c => d => e => a(b)(e)(c)(d)
const W   = a => b =>                a(b)(b)
const W_  = a => b => c =>           a(b)(c)(c)
const W__ = a => b => c => d =>      a(b)(c)(d)(d)
const W1  = a => b => b(             a)(a)
const Y   = a => (b => b(b))(b =>    a(c => b(b)(c)))


const zero  = _ => x =>                     x
const one   = f => x => f(                  x)
const two   = f => x => f(f(                x))
const three = f => x => f(f(f(              x)))
const four  = f => x => f(f(f(f(            x))))
const five  = f => x => f(f(f(f(f(          x)))))
const six   = f => x => f(f(f(f(f(f(        x))))))
const seven = f => x => f(f(f(f(f(f(f(      x)))))))
const eight = f => x => f(f(f(f(f(f(f(f(    x))))))))
const nine  = f => x => f(f(f(f(f(f(f(f(f(  x)))))))))
const ten   = f => x => f(f(f(f(f(f(f(f(f(f(x))))))))))
