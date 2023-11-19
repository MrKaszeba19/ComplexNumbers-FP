program NAME;

uses Complex;

begin
    writeln(AnsiString(ComplexNumPolar(1, Pi/4)));
    writeln();
    writeln('newton');
    writeln(AnsiString(Newton(0,0)));
    writeln(AnsiString(Newton(1,0)));
    writeln(AnsiString(Newton(1,1)));
    writeln(AnsiString(Newton(2,0)));
    writeln(AnsiString(Newton(2,1)));
    writeln(AnsiString(Newton(2,2)));
    writeln(AnsiString(Newton(3,0)));
    writeln(AnsiString(Newton(3,1)));
    writeln(AnsiString(Newton(3,2)));
    writeln(AnsiString(Newton(3,3)));
    writeln(AnsiString(Newton(10,2)));
    writeln(AnsiString(Newton(10.5,2)));
    writeln(AnsiString(Newton(2+Imag(3),2)));
    writeln();
    writeln('bernoulli');
    writeln(AnsiString(bernoulli_num(0)));
    writeln(AnsiString(bernoulli_num(1)));
    writeln(AnsiString(bernoulli_num(2)));
    writeln(AnsiString(bernoulli_num(3)));
    writeln(AnsiString(bernoulli_num(4)));
    writeln(AnsiString(bernoulli_num(5)));
    writeln(AnsiString(bernoulli_num(6)));
    writeln(AnsiString(bernoulli_num(7)));
    writeln(AnsiString(bernoulli_num(8)));
    writeln(AnsiString(bernoulli_num(9)));
    writeln(AnsiString(bernoulli_num(10)));
    writeln(AnsiString(bernoulli_num(11)));
    writeln(AnsiString(bernoulli_num(12)));
    writeln(AnsiString(bernoulli_num(13)));
    writeln(AnsiString(bernoulli_num(14)));
    writeln(AnsiString(bernoulli_num(15)));
    writeln(AnsiString(bernoulli_num(16)));
    writeln(AnsiString(bernoulli_num(32)));
    writeln(AnsiString(bernoulli_num(48)));
    writeln(AnsiString(bernoulli_num(49)));
    writeln(AnsiString(bernoulli_num(50)));
    writeln(AnsiString(bernoulli_num(99)));
    writeln(AnsiString(bernoulli_num(100)));
    writeln();
    writeln('ei,li');
    writeln(AnsiString(Sinc(-1)));
    writeln(AnsiString(Sinc(0)));
    writeln(AnsiString(Sinc(1)));
    writeln(AnsiString(Sinc(Pi)));
    writeln(AnsiString(Sinc(2*Pi)));
    writeln(AnsiString(Sinc(3+Imag(4))));
    writeln();
    writeln(AnsiString(ExpIntC1(-2.5)));
    writeln(AnsiString(ExpIntC1(-2))); 
    writeln(AnsiString(ExpIntC1(-1)));  
    writeln(AnsiString(ExpIntC1(0)));
    writeln(AnsiString(ExpIntC1(1)));
    writeln(AnsiString(ExpIntC1(Pi)));
    writeln(AnsiString(ExpIntC1(2*Pi)));
    writeln(AnsiString(ExpIntC1(200*Pi)));
    writeln(AnsiString(ExpIntC1(3+Imag(4))));
    //writeln(AnsiString(ExpIntC(-1, 2)));
    writeln(AnsiString(ExpIntC(0, 1)));
    writeln(AnsiString(ExpIntC(1, 1)));
    writeln(AnsiString(ExpIntC(Pi, 1)));
    writeln(AnsiString(ExpIntC(2*Pi, 1)));
    writeln(AnsiString(ExpIntC(200*Pi, 1)));
    writeln(AnsiString(ExpIntC(3+Imag(4),1)));
    writeln(AnsiString(ExpIntC(0, 2)));
    writeln(AnsiString(ExpIntC(1, 2)));
    writeln(AnsiString(ExpIntC(Pi, 2)));
    writeln(AnsiString(ExpIntC(2*Pi, 2)));
    writeln(AnsiString(ExpIntC(200*Pi, 2)));
    writeln(AnsiString(ExpIntC(3+Imag(4),2)));
    writeln(AnsiString(ExpIntC(0, 3)));
    writeln(AnsiString(ExpIntC(1, 3)));
    writeln(AnsiString(ExpIntC(Pi, 3)));
    writeln(AnsiString(ExpIntC(2*Pi, 3)));
    writeln(AnsiString(ExpIntC(200*Pi, 3)));
    writeln(AnsiString(ExpIntC(3+Imag(4),3)));
    writeln();
    writeln('ln '+AnsiString(Ln(-1)));
    writeln(AnsiString(ExpInt(-2)));
    writeln(AnsiString(ExpInt(-1)));
    writeln(AnsiString(ExpInt(Ln(-1))));
    writeln(AnsiString(ExpInt(3+Imag(4))));
    writeln(AnsiString(ExpInt(0)));
    writeln(AnsiString(ExpInt(1)));
    writeln(AnsiString(ExpInt(2)));
    writeln(AnsiString(ExpInt(Pi)));
    writeln(AnsiString(ExpInt(2*Pi)));
    writeln(AnsiString(ExpInt(200*Pi)));
    writeln();
    writeln(AnsiString(LogInt(-2)));
    writeln(AnsiString(LogInt(-1)));
    writeln(AnsiString(LogInt(0)));
    writeln(AnsiString(LogInt(1)));
    writeln(AnsiString(LogInt(2)));
    writeln(AnsiString(LogInt(Pi)));
    writeln(AnsiString(LogInt(2*Pi)));
    writeln(AnsiString(LogInt(200*Pi)));
    writeln();
    writeln(AnsiString(LogInt2(-2)));
    writeln(AnsiString(LogInt2(-1)));
    writeln(AnsiString(LogInt2(0)));
    writeln(AnsiString(LogInt2(1)));
    writeln(AnsiString(LogInt2(2)));
    writeln(AnsiString(LogInt2(Pi)));
    writeln(AnsiString(LogInt2(2*Pi)));
    writeln(AnsiString(LogInt2(200*Pi)));
    writeln();
    writeln('sin,cos');
    writeln(AnsiString(SinInt(-1)));
    writeln(AnsiString(SinInt(-0.1)));
    writeln(AnsiString(SinInt(0)));
    writeln(AnsiString(SinInt(0.1)));
    writeln(AnsiString(SinInt(1)));
    writeln(AnsiString(SinInt(Pi)));
    writeln(AnsiString(SinInt(2*Pi)));
    writeln(AnsiString(SinInt(200*Pi)));
    writeln(AnsiString(SinInt(3+Imag(4))));
    writeln(AnsiString(CosInt(-1)));
    //writeln(AnsiString(CosInt(0)));
    writeln(AnsiString(CosInt(1)));
    writeln(AnsiString(CosInt(Pi)));
    writeln(AnsiString(CosInt(2*Pi)));
    writeln(AnsiString(CosInt(200*Pi)));
    writeln(AnsiString(CosInt(3+Imag(4))));
    writeln(AnsiString(SinInt2(-1)));
    writeln(AnsiString(SinInt2(-0.1)));
    writeln(AnsiString(SinInt2(0)));
    writeln(AnsiString(SinInt2(0.1)));
    writeln(AnsiString(SinInt2(1)));
    writeln(AnsiString(SinInt2(Pi)));
    writeln(AnsiString(SinInt2(2*Pi)));
    writeln(AnsiString(SinInt2(200*Pi)));
    writeln(AnsiString(CosInt2(-1)));
    //writeln(AnsiString(CosInt2(0)));
    writeln(AnsiString(CosInt2(1)));
    writeln(AnsiString(CosInt2(Pi)));
    writeln(AnsiString(CosInt2(2*Pi)));
    writeln(AnsiString(CosInt2(200*Pi)));
    writeln();
    writeln('riemann zeta');
    writeln(AnsiString(RiemannZeta(-1)));  // ok
    writeln(AnsiString(RiemannZeta(0)));   // ok
    writeln(AnsiString(RiemannZeta(1)));   // ok
    writeln(AnsiString(RiemannZeta(2)));   // ok
    writeln(AnsiString(RiemannZeta(3)));   // ok
    writeln(AnsiString(RiemannZeta(4)));   // ok
    writeln(AnsiString(RiemannZeta(5)));   // ok
    writeln(AnsiString(RiemannZeta(6)));   // ok
    writeln(AnsiString(RiemannZeta(7)));   // ok
    writeln(AnsiString(RiemannZeta(8)));   // ok
    writeln(AnsiString(RiemannZeta(9)));   // ok
    writeln(AnsiString(RiemannZeta(10)));  // ok
    writeln(AnsiString(RiemannZeta(11)));  // ok
    writeln(AnsiString(RiemannZeta(12)));  // ok
    writeln(AnsiString(RiemannZeta(16)));  // ok
    writeln(AnsiString(RiemannZeta(32)));  // ok
    writeln(AnsiString(RiemannZeta(48)));  // ok
    writeln(AnsiString(RiemannZeta(49)));  // ok
    writeln(AnsiString(RiemannZeta(50)));  // ok
    writeln(AnsiString(RiemannZeta(99)));  // ok
    writeln(AnsiString(RiemannZeta(100))); // ok
    writeln();
    writeln(AnsiString(RiemannZeta(-2))); // ok
    writeln(AnsiString(RiemannZeta(-3))); // ok
    writeln(AnsiString(RiemannZeta(-4))); // ok
    writeln(AnsiString(RiemannZeta(-5))); // ok
    writeln(AnsiString(RiemannZeta(-6))); // ok
    writeln(AnsiString(RiemannZeta(-7))); // ok
    writeln(AnsiString(RiemannZeta(-8))); // ok
    writeln(AnsiString(RiemannZeta(-9))); // ok
    writeln(AnsiString(RiemannZeta(-10))); // ok
    writeln(AnsiString(RiemannZeta(-11))); // ok
    writeln(AnsiString(RiemannZeta(-12))); // ok
    writeln(AnsiString(RiemannZeta(-13))); // ok
    writeln(AnsiString(RiemannZeta(-14))); // ok
    writeln(AnsiString(RiemannZeta(-15))); // ok
    writeln(AnsiString(RiemannZeta(-16))); // ok
    writeln(AnsiString(RiemannZeta(-31))); // almost
    writeln(AnsiString(RiemannZeta(-32))); // ok
    writeln(AnsiString(RiemannZeta(-48))); // ok
    writeln(AnsiString(RiemannZeta(-49))); // almost
    writeln(AnsiString(RiemannZeta(-50))); // ok
    writeln(AnsiString(RiemannZeta(-99))); // not
    writeln(AnsiString(RiemannZeta(-100))); // ok
    writeln();
    writeln(AnsiString(RiemannZeta(1.5))); // slow
    writeln(AnsiString(RiemannZeta(1.25))); // slow
    writeln(AnsiString(RiemannZeta(1+Imag))); // ok
    writeln(AnsiString(RiemannZeta(2+Imag))); // almost
    writeln(AnsiString(RiemannZeta(1+2*Imag))); // not
    writeln(AnsiString(RiemannZeta(3-2*Imag))); // not
    writeln(AnsiString(RiemannZeta(5+Imag))); // ok
    writeln(AnsiString(RiemannZeta(1+5*Imag))); // slow af
    writeln(AnsiString(RiemannZeta(Imag))); // ok
    writeln(AnsiString(RiemannZeta(0.99))); // slow af
    writeln(AnsiString(RiemannZeta(0.9))); // slow af
    writeln(AnsiString(RiemannZeta(0.75))); // alow af
    writeln(AnsiString(RiemannZeta(0.5))); // almost
    writeln(AnsiString(RiemannZeta(0.25))); // almot
    writeln(AnsiString(RiemannZeta(0.2))); // almost
    writeln(AnsiString(RiemannZeta(0.1))); // almost
    writeln(AnsiString(RiemannZeta(0.05))); // ok
    writeln(AnsiString(RiemannZeta(0.01))); // ok
    writeln(AnsiString(RiemannZeta(0.001))); // ok
    writeln(AnsiString(RiemannZeta(-0.5))); // almost
    writeln(AnsiString(RiemannZeta(-1.5))); // ok
    writeln(AnsiString(RiemannZeta(-2.5))); // ok
    writeln(AnsiString(RiemannZeta(-3.5))); // ok
end.
