program NAME;

uses Complex, Math;

var
    i : LongInt;
    s : ComplexType;
begin
    writeln('Exps');
    writeln(AnsiString(Exp(-2)));
    writeln(AnsiString(Exp(-2+Imag(3))));
    for i := 1 to 10000000 do
    begin
        s := Exp(-2);
        s := Exp(-2+Imag(3));
    end;
end.