program NAME;

uses Complex//, Math
;

var
    i : LongInt;
    s : ComplexType;
begin
    writeln('Hypotenuses');
    writeln(AnsiString(Hypot(3,4)));
    writeln(AnsiString(Hypot(6,2)));
    writeln(AnsiString(Hypot(11,60)));
    writeln(AnsiString(Hypot(3,4,12)));
    writeln(AnsiString(Hypot(3,4,13)));
    writeln(AnsiString(Hypot(Imag(),1)));
end.