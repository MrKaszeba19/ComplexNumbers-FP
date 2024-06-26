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
    writeln('3+4i', #9, AnsiString(LambertW0(3+Imag(4))));
    writeln('-3+4i', #9, AnsiString(LambertW0(-3+Imag(4))));
    writeln('5+12i', #9, AnsiString(LambertW0(5+Imag(12))));
    writeln('5-12i', #9, AnsiString(LambertW0(5-Imag(12))));
    writeln('10+10i', #9, AnsiString(LambertW0(10+Imag(10))));
    writeln('-0.25+0.25i', #9, AnsiString(LambertW0(-0.25+Imag(0.25))));
    writeln('100-100i', #9, AnsiString(LambertW0(100-Imag(100))));
    writeln('-0.5', #9, AnsiString(LambertW0(-0.5)));
    writeln('-1', #9, AnsiString(LambertW0(-1)));

    writeln();
    writeln('lambert W_-1');
    s := -0.4;
    while s <= 0.125 do
    begin
        write(s:2:6, #9);
        writeln(AnsiString(LambertWn1(s)));
        s := s + 0.015625;
    end;

    writeln();
    writeln('lambert W_2');
    writeln('3+4i', #9, AnsiString(LambertW(3-Imag(4), 2)));
    writeln('3-4i', #9, AnsiString(LambertW(3-Imag(4), 2)));
    writeln('-5+12i', #9, AnsiString(LambertW(-5+Imag(12), 2)));
    writeln('0-6i', #9, AnsiString(LambertW(-Imag(6), 2)));
    writeln('6', #9, AnsiString(LambertW(6, 2)));
    writeln('1.73+2.118i', #9, AnsiString(LambertW(1.73+Imag(2.118), 2)));
end.