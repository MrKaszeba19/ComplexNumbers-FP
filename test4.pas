program NAME;

uses Complex;

begin
    writeln('dirichlet eta');
    writeln(AnsiString(DirichletEta(-1)));  // ok
    writeln(AnsiString(DirichletEta(0)));   // ok
    writeln(AnsiString(DirichletEta(1)));   // ok
    writeln(AnsiString(DirichletEta(2)));   // ok
    writeln(AnsiString(DirichletEta(3)));   // ok
    writeln(AnsiString(DirichletEta(4)));   // ok
    writeln(AnsiString(DirichletEta(5)));   // ok
    writeln(AnsiString(DirichletEta(6)));   // ok
    writeln(AnsiString(DirichletEta(7)));   // ok
    writeln(AnsiString(DirichletEta(8)));   // ok
    writeln(AnsiString(DirichletEta(9)));   // ok
    writeln(AnsiString(DirichletEta(10)));  // ok
    writeln(AnsiString(DirichletEta(11)));  // ok
    writeln(AnsiString(DirichletEta(12)));  // ok
    writeln(AnsiString(DirichletEta(16)));  // ok
    writeln(AnsiString(DirichletEta(32)));  // ok
    writeln(AnsiString(DirichletEta(48)));  // ok
    writeln(AnsiString(DirichletEta(49)));  // ok
    writeln(AnsiString(DirichletEta(50)));  // ok
    writeln(AnsiString(DirichletEta(99)));  // ok
    writeln(AnsiString(DirichletEta(100))); // ok
    writeln();
    writeln(AnsiString(DirichletEta(-2)));   // ok
    writeln(AnsiString(DirichletEta(-3)));   // ok
    writeln(AnsiString(DirichletEta(-4)));   // ok
    writeln(AnsiString(DirichletEta(-5)));   // ok
    writeln(AnsiString(DirichletEta(-6)));   // ok
    writeln(AnsiString(DirichletEta(-7)));   // ok
    writeln(AnsiString(DirichletEta(-8)));   // ok
    writeln(AnsiString(DirichletEta(-9)));   // ok
    writeln(AnsiString(DirichletEta(-10)));  // ok
    writeln(AnsiString(DirichletEta(-11)));  // ok
    writeln(AnsiString(DirichletEta(-12)));  // ok
    writeln(AnsiString(DirichletEta(-13)));  // ok
    writeln(AnsiString(DirichletEta(-14)));  // ok
    writeln(AnsiString(DirichletEta(-15)));  // ok
    writeln(AnsiString(DirichletEta(-16)));  // ok
    writeln(AnsiString(DirichletEta(-31)));  // ok
    writeln(AnsiString(DirichletEta(-32)));  // ok
    writeln(AnsiString(DirichletEta(-48)));  // ok
    writeln(AnsiString(DirichletEta(-49)));  // ok
    writeln(AnsiString(DirichletEta(-50)));  // ok
    writeln(AnsiString(DirichletEta(-99)));  // not
    writeln(AnsiString(DirichletEta(-100))); // ok
    writeln();
    writeln(AnsiString(DirichletEta(1.5)));      // ok
    writeln(AnsiString(DirichletEta(1.25)));     // ok
    writeln(AnsiString(DirichletEta(1+Imag)));   // ok
    writeln(AnsiString(DirichletEta(2+Imag)));   // ok
    writeln(AnsiString(DirichletEta(1+2*Imag))); // ok
    writeln(AnsiString(DirichletEta(3-2*Imag))); // ok
    writeln(AnsiString(DirichletEta(5+Imag)));   // ok
    writeln(AnsiString(DirichletEta(1+5*Imag))); // ok
    writeln(AnsiString(DirichletEta(Imag)));     // ok
    writeln(AnsiString(DirichletEta(6*Imag)));   // ok
    writeln(AnsiString(DirichletEta(0.99)));     // ok
    writeln(AnsiString(DirichletEta(0.9)));      // ok
    writeln(AnsiString(DirichletEta(0.75)));     // ok
    writeln(AnsiString(DirichletEta(0.5)));      // ok
    writeln(AnsiString(DirichletEta(0.25)));     // ok
    writeln(AnsiString(DirichletEta(0.2)));      // ok
    writeln(AnsiString(DirichletEta(0.1)));      // ok
    writeln(AnsiString(DirichletEta(0.05)));     // ok
    writeln(AnsiString(DirichletEta(0.01)));     // ok
    writeln(AnsiString(DirichletEta(0.001)));    // ok
    writeln(AnsiString(DirichletEta(-0.5)));     // ok
    writeln(AnsiString(DirichletEta(-1.5)));     // ok
    writeln(AnsiString(DirichletEta(-2.5)));     // ok
    writeln(AnsiString(DirichletEta(-3.5)));     // ok
    writeln();
    writeln('---------------------------------------------------');
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
    writeln(AnsiString(RiemannZeta(1.5)));      // ok
    writeln(AnsiString(RiemannZeta(1.25)));     // ok
    writeln(AnsiString(RiemannZeta(1+Imag)));   // ok
    writeln(AnsiString(RiemannZeta(2+Imag)));   // ok almost
    writeln(AnsiString(RiemannZeta(1+2*Imag))); // ok
    writeln(AnsiString(RiemannZeta(3-2*Imag))); // ok
    writeln(AnsiString(RiemannZeta(5+Imag)));   // ok
    writeln(AnsiString(RiemannZeta(1+5*Imag))); // ok
    writeln(AnsiString(RiemannZeta(Imag)));     // ok
    writeln(AnsiString(RiemannZeta(6*Imag)));   // ok
    writeln(AnsiString(RiemannZeta(0.99)));     // ok
    writeln(AnsiString(RiemannZeta(0.9)));      // ok
    writeln(AnsiString(RiemannZeta(0.75)));     // ok
    writeln(AnsiString(RiemannZeta(0.5)));      // ok
    writeln(AnsiString(RiemannZeta(0.25)));     // ok
    writeln(AnsiString(RiemannZeta(0.2)));      // ok
    writeln(AnsiString(RiemannZeta(0.1)));      // ok
    writeln(AnsiString(RiemannZeta(0.05)));     // ok
    writeln(AnsiString(RiemannZeta(0.01)));     // ok
    writeln(AnsiString(RiemannZeta(0.001)));    // ok
    writeln(AnsiString(RiemannZeta(-0.5)));     // ok
    writeln(AnsiString(RiemannZeta(-1.5)));     // ok
    writeln(AnsiString(RiemannZeta(-2.5)));     // ok
    writeln(AnsiString(RiemannZeta(-3.5)));     // ok
end.
