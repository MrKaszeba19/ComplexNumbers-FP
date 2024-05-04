program NAME;

uses Complex;

var
    s, x : Extended;
begin
    writeln('lambert W0');
    s := -0.25;
    while s <= 50 do
    begin
        write(s:2:2, #9);
        writeln(AnsiString(LambertW0(s)));
        s := s + 0.25;
    end;
    writeln('e', #9, AnsiString(LambertW0(EulerNum())));
    writeln('42', #9, AnsiString(LambertW0(42)));
    writeln('42+i', #9, AnsiString(LambertW0(42+Imag(1))));  
    writeln('3+4i', #9, AnsiString(LambertW0(3+Imag(4))));   // inaccurate
    writeln('-3+4i', #9, AnsiString(LambertW0(-3+Imag(4)))); // inaccurate
    writeln('10+10i', #9, AnsiString(LambertW0(10+Imag(10)))); // inaccurate
    writeln('-0.25+0.25i', #9, AnsiString(LambertW0(-0.25+Imag(0.25))));
    writeln('100-100i', #9, AnsiString(LambertW0(100-Imag(100))));
end.