# Complex Numbers for FreePascal

**Author**: Paul Lipkowski

## About
I decided to write my own complex numbers mechanism, as FreePascal's built-in mechanism isn't sufficient enough for me.  

## Features

### As of now
- basic routines, type casting
- powers, square and cubic roots
- exponential and logarithmic functions
- trigonometric functions and their inverses
- hyperbolic and area functions
- MinusOneTo, ImagTo, MinusImagTo
- isZero, isNatural, isInteger, isReal, isNotReal, isImaginary, isComplex boolean functions
- ComplexNumPolar (initializing a complex number with polar coords)
- gamma, gammaln functions
- lower and upper incomplete gamma functions
- erf, erfc, erfi functions
- beta, incomplete beta, regularized incomplete beta functions
- E_1 (exponential integral)
- sinc function
- Si, Ci functions (sine integral, cosine integral)

### Partly implemented
- Riemann's Zeta function (may return wrong values)

### Todo list
- round
- Lambert's W function with branches
- Ei function with branches
- li (logarithm integral)
- Newton symbol `(z,n)`

## References

1. [W.H. Press, S.A. Teukolsky, W.T. Vetterling, B.P. Flannery; 'Numerical Recipes. The Art of Scientific Computing. Third Edition'; Cambridge University Press; 2007](http://numerical.recipes/book.html)