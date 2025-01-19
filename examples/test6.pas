program NAME;

uses Complex, Math;

begin
    writeln('infinities');
    writeln(isInfinite(Infinity));
    writeln(isInfinite(Infinity-Imag(1)));
    writeln(isInfinite(Infinity+Imag(Infinity)));
    writeln(RePosInfinity(1) = Infinity+Imag(1));
    writeln(RePosInfinity(1) = Infinity+Imag(-2));
    writeln(ComplexInfinity1 = Infinity+Imag(Infinity));
    writeln(ComplexInfinity2 = Infinity+Imag(Infinity));
end.