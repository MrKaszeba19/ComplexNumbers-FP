program NAME;

uses Complex;

begin
    writeln(AnsiString(ComplexNumPolar(1, Pi/4)));
    writeln();
    writeln('gamma');
    //writeln(AnsiString());
    //writeln(AnsiString(Gamma(0)));
    writeln(AnsiString(Gamma(1/4)));
    writeln(AnsiString(Gamma(1/2)));
    writeln(AnsiString(Gamma(3/4)));
    writeln(AnsiString(Gamma(1)));
    writeln(AnsiString(Gamma(5/4)));
    writeln(AnsiString(Gamma(3/2)));
    writeln(AnsiString(Gamma(7/4)));
    writeln(AnsiString(Gamma(2)));
    writeln(AnsiString(Gamma(2.5)));
    writeln(AnsiString(Gamma(3)));
    writeln(AnsiString(Gamma(4)));
    writeln(AnsiString(Gamma(5)));
    writeln(AnsiString(Gamma(6)));
    writeln();
    writeln(AnsiString(Gamma(-0.5)));
    writeln(AnsiString(Gamma(Imag)));
    writeln(AnsiString(Gamma(2*Imag)));
    writeln(AnsiString(Gamma(-2*Imag)));
    writeln(AnsiString(Gamma(3.5*Imag)));
    writeln(AnsiString(Gamma(-3.5*Imag)));
    writeln(AnsiString(Gamma(-3.3*Imag)));
    writeln(AnsiString(Gamma(-3.3)));
    writeln();
    writeln(AnsiString(GammaLn(0.5)));
    writeln(AnsiString(GammaLn(1)));
    writeln(AnsiString(GammaLn(1.5)));
    writeln(AnsiString(GammaLn(2)));
    writeln(AnsiString(GammaLn(3)));
    writeln(AnsiString(GammaLn(4)));
    writeln(AnsiString(GammaLn(-0.5)));
    writeln(AnsiString(GammaLn(Imag)));
    writeln(AnsiString(GammaLn(-0.5*Imag)));
    writeln(AnsiString(GammaLn(-3.3)));
    writeln(AnsiString(GammaLn(16)));
    writeln(AnsiString(GammaLn(32)));
    writeln(AnsiString(GammaLn(63)));
    writeln(AnsiString(GammaLn(64)));
    writeln(AnsiString(GammaLn(65)));
    writeln(AnsiString(GammaLn(171)));
    writeln(AnsiString(Ln(Gamma(0.5))));
    writeln(AnsiString(Ln(Gamma(1))));
    writeln(AnsiString(Ln(Gamma(1.5))));
    writeln(AnsiString(Ln(Gamma(2))));
    writeln(AnsiString(Ln(Gamma(3))));
    writeln(AnsiString(Ln(Gamma(4))));
    writeln(AnsiString(Ln(Gamma(-0.5))));
    writeln(AnsiString(Ln(Gamma(Imag))));
    writeln(AnsiString(Ln(Gamma(-0.5*Imag))));
    writeln(AnsiString(Ln(Gamma(-3.3))));
    writeln(AnsiString(Ln(Gamma(16))));
    writeln(AnsiString(Ln(Gamma(32))));
    writeln(AnsiString(Ln(Gamma(63))));
    writeln(AnsiString(Ln(Gamma(64))));
    writeln(AnsiString(Ln(Gamma(65))));
    writeln(AnsiString(Ln(Gamma(171))));
    writeln();
    writeln('erf');
    writeln(AnsiString(Erf(-1)));
    writeln(AnsiString(Erf(-0.9)));
    writeln(AnsiString(Erf(-0.8)));
    writeln(AnsiString(Erf(-0.7)));
    writeln(AnsiString(Erf(-0.6)));
    writeln(AnsiString(Erf(-0.5)));
    writeln(AnsiString(Erf(-0.4)));
    writeln(AnsiString(Erf(-0.3)));
    writeln(AnsiString(Erf(-0.2)));
    writeln(AnsiString(Erf(-0.1)));
    writeln(AnsiString(Erf(0)));
    writeln(AnsiString(Erf(0.1)));
    writeln(AnsiString(Erf(0.2)));
    writeln(AnsiString(Erf(0.3)));
    writeln(AnsiString(Erf(0.4)));
    writeln(AnsiString(Erf(0.5)));
    writeln(AnsiString(Erf(0.6)));
    writeln(AnsiString(Erf(0.7)));
    writeln(AnsiString(Erf(0.8)));
    writeln(AnsiString(Erf(0.9)));
    writeln(AnsiString(Erf(1)));
    writeln();
    writeln(AnsiString(Erf(Imag(-1.0))));
    writeln(AnsiString(Erf(Imag(-0.9))));
    writeln(AnsiString(Erf(Imag(-0.8))));
    writeln(AnsiString(Erf(Imag(-0.7))));
    writeln(AnsiString(Erf(Imag(-0.6))));
    writeln(AnsiString(Erf(Imag(-0.5))));
    writeln(AnsiString(Erf(Imag(-0.4))));
    writeln(AnsiString(Erf(Imag(-0.3))));
    writeln(AnsiString(Erf(Imag(-0.2))));
    writeln(AnsiString(Erf(Imag(-0.1))));
    writeln(AnsiString(Erf(Imag(0))));
    writeln(AnsiString(Erf(Imag(0.1))));
    writeln(AnsiString(Erf(Imag(0.2))));
    writeln(AnsiString(Erf(Imag(0.3))));
    writeln(AnsiString(Erf(Imag(0.4))));
    writeln(AnsiString(Erf(Imag(0.5))));
    writeln(AnsiString(Erf(Imag(0.6))));
    writeln(AnsiString(Erf(Imag(0.7))));
    writeln(AnsiString(Erf(Imag(0.8))));
    writeln(AnsiString(Erf(Imag(0.9))));
    writeln(AnsiString(Erf(Imag(1.0))));
    writeln();
    writeln(AnsiString(Erfc(-1.0)));
    writeln(AnsiString(Erfc(-0.5)));
    writeln(AnsiString(Erfc(0)));
    writeln(AnsiString(Erfc(0.5)));
    writeln(AnsiString(Erfc(1)));
    writeln(AnsiString(Erfc(Imag(-1.0))));
    writeln(AnsiString(Erfc(Imag(-0.5))));
    writeln(AnsiString(Erfc(Imag(0))));
    writeln(AnsiString(Erfc(Imag(0.5))));
    writeln(AnsiString(Erfc(Imag(1.0))));
    writeln(AnsiString(Erfi(-1.0)));
    writeln(AnsiString(Erfi(-0.5)));
    writeln(AnsiString(Erfi(0)));
    writeln(AnsiString(Erfi(0.5)));
    writeln(AnsiString(Erfi(1)));
    writeln(AnsiString(Erfi(Imag(-1.0))));
    writeln(AnsiString(Erfi(Imag(-0.5))));
    writeln(AnsiString(Erfi(Imag(0))));
    writeln(AnsiString(Erfi(Imag(0.5))));
    writeln(AnsiString(Erfi(Imag(1.0))));
    writeln();
    writeln(AnsiString(Erfc(Imag(11.0))));
    writeln();
    writeln('lowergamma');
    writeln(AnsiString(LowerGamma(0, 0)));
    writeln(AnsiString(LowerGamma(0.5, 0)));
    writeln(AnsiString(LowerGamma(1, 0)));
    writeln(AnsiString(LowerGamma(1.5, 0)));
    writeln(AnsiString(LowerGamma(2, 0)));
    writeln(AnsiString(LowerGamma(0.5, 0.5)));
    writeln(AnsiString(LowerGamma(0.5, 1)));
    writeln(AnsiString(LowerGamma(0.5, 1.5)));
    writeln(AnsiString(LowerGamma(0.5, 2)));
    writeln(AnsiString(LowerGamma(1, 0.5)));
    writeln(AnsiString(LowerGamma(1, 1)));
    writeln(AnsiString(LowerGamma(1, 1.5)));
    writeln(AnsiString(LowerGamma(1, 2)));
    writeln(AnsiString(LowerGamma(0.3, 3)));
    writeln(AnsiString(LowerGamma(1.7, 1.6)));
    writeln(AnsiString(LowerGamma(1+Imag, 2.1)));
    writeln();
    writeln('beta');
    writeln(AnsiString(Beta(0.5, 0.5)));
    writeln(AnsiString(Beta(1, 1)));
    writeln(AnsiString(Beta(2, 5)));
    writeln(AnsiString(Beta(1+Imag, 2.1)));
    writeln();
    writeln(AnsiString(IncBeta(0,2,5)));
    writeln(AnsiString(IncBeta(1/2,2,5)));
    writeln(AnsiString(IncBeta(1,2,5)));
    writeln(AnsiString(IncBeta(0,0.4,1.3)));
    writeln(AnsiString(IncBeta(1/2,0.4,1.3)));
    writeln(AnsiString(IncBeta(1,0.4,1.3)));
end.
