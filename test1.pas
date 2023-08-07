program NAME;

uses Complex;

var
    a, b, c, d : ComplexType;

begin
	a := ComplexNum(3, 4);
    b := ComplexNum(0, 1);
    c := a * b;
    d := 1.5;
    writeln(AnsiString(a));
    writeln(Abs(a):2:3);
    writeln(Arg(a):2:3);
    writeln(AnsiString(b));
    writeln(Abs(b):2:3);
    writeln(Arg(b):2:3);
    writeln(AnsiString(c));
    writeln(Abs(c):2:3);
    writeln(Arg(c):2:3);
    writeln(AnsiString(d));
    writeln(AnsiString(c+d));
    writeln(AnsiString(Exp(1)));
    writeln(AnsiString(Ln(Exp(2))));
    writeln(AnsiString(Log(3,81)));
    writeln(AnsiString(Log(-3,81)));
    writeln(AnsiString(Pow(4,5)));
    writeln();
    writeln(AnsiString(Sin(3.14)));
    writeln(AnsiString(Sin(Pi)));
    writeln(AnsiString(Cos(Pi)));
    writeln(AnsiString(Imag*Sin(Pi)));
    writeln(AnsiString(Cos(Pi) + Imag*Sin(Pi)));
    writeln(AnsiString(Cos(Pi)));
    writeln(AnsiString(Imag(Sin(Pi))));
    writeln(AnsiString(Cos(Pi) + Imag(Sin(Pi))));
    writeln(AnsiString(3+4*Imag));
    writeln(AnsiString(3+Imag(4)));
    writeln();
    writeln(AnsiString(Imag));
    writeln(AnsiString(Imag(Imag)));
    writeln(AnsiString(Imag*Imag));
    writeln(AnsiString(Pow(Imag, 2)));
    writeln();
    writeln(AnsiString(Arccos(Imag)));
    writeln(AnsiString(Arctan(1)*4));
    writeln(AnsiString(Arcsin(2)));
    writeln(AnsiString(Arcsec(1)));
    writeln(AnsiString(Arcsec(2)));
    writeln(AnsiString(Arcsec(3)));
    writeln(AnsiString(Arcsec(Imag)));
end.
