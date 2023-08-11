program NAME;

uses Complex;

begin
    writeln(AnsiString(ComplexNumPolar(1, Pi/4)));
    writeln();
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
    writeln();
    writeln(AnsiString(GammaLn(3)));
    writeln(AnsiString(GammaLn(-0.5)));
    writeln(AnsiString(GammaLn(Imag)));
    writeln(AnsiString(Ln(Gamma(3))));
    writeln(AnsiString(Ln(Gamma(-0.5))));
    writeln(AnsiString(Ln(Gamma(Imag))));
end.
