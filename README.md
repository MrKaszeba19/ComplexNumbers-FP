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
- hypotenuses for 2D and 3D
- isZero, isNatural, isInteger, isReal, isNotReal, isImaginary, isComplex boolean functions
- ComplexNumPolar (initializing a complex number with polar coords)
- gamma, gammaln functions
- lower and upper incomplete gamma functions
- erf, erfc, erfi functions
- beta, incomplete beta, regularized incomplete beta functions
- E_n function (exponential integral) with branches
- Ei function
- li (logarithm integral)
- sinc function
- Si, Ci functions (sine integral, cosine integral)
- Fresnel integrals
- Newton symbol `(z,n)`
- Dirichlet eta function
- Riemann's zeta function
- Bernoulli numbers
- Lambert's W function with all integer branches
- Infinite power tower `h(z) = z^z^z^...`
- Infinities
- Complex round functions
- Lambert's W function with branches
- inifinities
- Fresnel integrals
- integer casting `Int()`
- complex versions of `trunc`, `round`, `floor`, `ceiling`


### For future (maybe)
- `frac`
- tetration and superlogarithm

=======
## Issues

- The complex type substitutes `Extended` type almost plug and play, except for:
  * inequalities (for mathematical reasons one can't set any linear order for complex numbers) 
  * putting them into `write`/`writeln` - they must be cast with `AnsiString()`.
- Bernoulli numbers generation may produce wrong results at `n >= 40`.
- Infinite power tower may not produce accurate results when approaching the convergence borders for real numbers.

## References

1. [W.H. Press, S.A. Teukolsky, W.T. Vetterling, B.P. Flannery; 'Numerical Recipes. The Art of Scientific Computing. Third Edition'; Cambridge University Press (2007)](http://numerical.recipes/book.html)
2. [L. Lorentzen, H. Waadeland; 'Continued fractions with applications'; North-Holland Publishing Co. (1992)](https://link.springer.com/content/pdf/bbm:978-94-91216-37-4/1)
3. [D. Harvey; 'A multimodular algorithm for computing Bernoulli numbers'; Math. Comput., 79 (272): 2361–2370 (2010)](https://www.ams.org/journals/mcom/2010-79-272/S0025-5718-2010-02367-1/)
4. [L. Lóczi; 'Guaranteed- and high-precision evaluation of the Lambert W function'. Appl. Math. Comput., 433: 127406 (2022)](https://www.sciencedirect.com/science/article/pii/S0096300322004805?via%3Dihub)
5. [github.com/IstvanMezo/LambertW-function](https://github.com/IstvanMezo/LambertW-function)