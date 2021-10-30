// Birds

// λ α β η φ χ ξ θ ϑ ζ ψ

// Idiot bird, identity, λa.a                                               1
const I = a => a;

// I* (I once removed), ONE, λab.ab                                         2
const I2 = a => b => a(b)

// I** (I twice removed), IF, λabc.abc                                      3
const I3 = c => x => y => c(x)(y)
// IF takes a predicate and two values,
// returning the first value if the predicate is True and
// the second if the predicate is False.
// This is the I** combinator

// Mockingbird, ω, self-application, λa.aa                                  1
const M = a => a(a);
// MM is big Ω it diverges: (λa.aa)(λa.aa)

// Kestrel (True, First), λa.λb.a                                           2
const K = a => b => a;
// Kite, KI, F, False, λa.λb.b, F=CT

// Cardinal, flip (arguments), λf.λxy.fxy                                   3
const C = f => a => b => f(b)(a);

// Bluebird, compose (functions), λf.λg.λx.f(gx)                            3
const B = f => g => x => f(g(x));

// Starling, apply both fns, λfgx.fx(gx)                                    3
const S = f => g => x => f(x)(g(x));

// Vireo, Pair (x,y), λxyc.cxy                                              3
const V = x => y => c => c(x)(y)
// use K as c to get x, KI as c get y (c = Chooser function)


const B1  = a => b => c => d =>      a(b(c)(d))
const B2  = a => b => c => d => e => a(b(c)(d)(e))
const B3  = a => b => c => d =>      a(b(c(d)))

const C_  = a => b => c => d =>      a(b)(d)(c)
const C__ = a => b => c => d => e => a(b)(c)(e)(d)

// Dove
const D   = a => b => c => d =>      a(b)(c(d))
const D1  = a => b => c => d => e => a(b)(c)(d(e))
const D2  = a => b => c => d => e => a(b(c))(d(e))

// Eagle
const E   = a => b => c => d => e => a(b)(c(d)(e))

const F   = a => b => c =>           c(b)(a)
const F_  = a => b => c => d =>      a(d)(c)(b)
const F__ = a => b => c => d => e => a(b)(e)(d)(c)

const G   = a => b => c => d =>      a(d)(b(c))

const H   = a => b => c =>           a(b)(c)(b)


const J   = a => b => c => d =>      a(b)(a(d)(c))

const L   = a => b =>                a(b(b))

const M2  = a => b =>                a(b)(a(b))

const O   = a => b =>                b(a(b))
const Q   = a => b => c =>           b(a(c))
const Q1  = a => b => c =>           a(c(b))
const Q2  = a => b => c =>           b(c(a))
const Q3  = a => b => c =>           c(a(b))
const Q4  = a => b => c =>           c(b(a))

const R   = a => b => c =>           b(c)(a)
const R_  = a => b => c => d =>      a(c)(d)(b)
const R__ = a => b => c => d => e => a(b)(d)(e)(c)


const T   = a => b =>                b(a)

const U = a => b => b(a(a)(b))

const V_  = a => b => c => d =>      a(c)(b)(d)
const V__ = a => b => c => d => e => a(b)(e)(c)(d)

const W   = a => b =>                a(b)(b)
const W_  = a => b => c =>           a(b)(c)(c)
const W__ = a => b => c => d =>      a(b)(c)(d)(d)
const W1  = a => b =>                b(a)(a)

const Y = a => (b => b(b))(b =>    a(c => b(b)(c)))
