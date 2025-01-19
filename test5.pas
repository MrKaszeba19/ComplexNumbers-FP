program NAME;

uses Complex;

begin
    writeln('lambert W_0');
    writeln(AnsiString(LambertW0(-1)));
    writeln(AnsiString(LambertW0(-0.5)));
    writeln(AnsiString(LambertW0(0)));
    writeln(AnsiString(LambertW0(0.5)));
    writeln(AnsiString(LambertW0(1)));
    writeln(AnsiString(LambertW0(EulerNum())));
    writeln(AnsiString(LambertW0(-Inv(EulerNum()))));
    writeln(AnsiString(LambertW0(2*Ln(2))));
    writeln(AnsiString(Ln(2)));
end.
