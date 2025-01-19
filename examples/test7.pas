program NAME;

uses Complex, Math;

begin
    writeln('Fresnel integrals');
    writeln(AnsiString(FresnelC(-2)));
    writeln(AnsiString(FresnelC(-1)));
    writeln(AnsiString(FresnelC(0)));
    writeln(AnsiString(FresnelC(1)));
    writeln(AnsiString(FresnelC(2)));
    writeln(AnsiString(FresnelC(3.5)));
    writeln(AnsiString(FresnelC(1+Imag)));
    writeln(AnsiString(FresnelC(3+4*Imag)));
    writeln();
    writeln(AnsiString(FresnelS(-2)));
    writeln(AnsiString(FresnelS(-1)));
    writeln(AnsiString(FresnelS(0)));
    writeln(AnsiString(FresnelS(1)));
    writeln(AnsiString(FresnelS(2)));
    writeln(AnsiString(FresnelS(3.5)));
    writeln(AnsiString(FresnelS(1+Imag)));
    writeln(AnsiString(FresnelS(3+4*Imag)));

end.