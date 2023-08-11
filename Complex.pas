unit Complex;

interface

{$mode objfpc}{$H+}

type RealType = type Extended;
type IntegerType = type LongInt;

type ComplexType = record
    Re : RealType;
    Im : RealType;
end;

function ComplexNum(a, b : RealType) : ComplexType;
function ComplexNumPolar(r, a : RealType) : ComplexType;

operator := (a : RealType) res : ComplexType;
operator := (a : Extended) res : ComplexType;
operator := (a : Real) res : ComplexType;
operator := (a : IntegerType) res : ComplexType;
operator := (a : LongInt) res : ComplexType;
operator := (a : Int64) res : ComplexType;
//operator := (a : Integer) res : ComplexType;
operator := (a : ShortInt) res : ComplexType;

operator := (a : ComplexType) res : String;
function toString(a : ComplexType) : String;
operator Explicit(a : ComplexType) : String;

operator Explicit(a : RealType) res : ComplexType;
operator Explicit(a : Extended) res : ComplexType;
operator Explicit(a : Real) res : ComplexType;
operator Explicit(a : IntegerType) res : ComplexType;
operator Explicit(a : LongInt) res : ComplexType;
operator Explicit(a : Int64) res : ComplexType;
//operator Explicit(a : Integer) res : ComplexType;
operator Explicit(a : ShortInt) res : ComplexType;

operator = (a : ComplexType; b : ComplexType) : Boolean;
operator <> (a : ComplexType; b : ComplexType) : Boolean;
operator - (a : ComplexType) res : ComplexType;
operator + (a : ComplexType) res : ComplexType;

operator + (a : ComplexType; b : ComplexType) res : ComplexType;
operator - (a : ComplexType; b : ComplexType) res : ComplexType;
operator * (a : ComplexType; b : ComplexType) res : ComplexType;
operator / (a : ComplexType; b : ComplexType) res : ComplexType;

function Abs(a : ComplexType) : RealType;
function Arg(a : ComplexType) : RealType;
function Conj(a : ComplexType) : ComplexType;
function RePart(a : ComplexType) : RealType;
function ImPart(a : ComplexType) : RealType;

function Imag() : ComplexType;
function Imag(a : ComplexType) : ComplexType;
function EulerNum() : RealType;
function Pi() : RealType;
function GoldenNum() : RealType;

function isZero(z : ComplexType) : Boolean;
function isNatural(z : ComplexType) : Boolean;
function isInteger(z : ComplexType) : Boolean; 
function isReal(z : ComplexType) : Boolean;
function isImaginary(z : ComplexType) : Boolean;
function isComplex(z : ComplexType) : Boolean;

function Sqr(z : ComplexType) : ComplexType;
function Cub(z : ComplexType) : ComplexType;
function Pow4(z : ComplexType) : ComplexType;
function Pow5(z : ComplexType) : ComplexType;
function Inv(z : ComplexType) : ComplexType;
function Exp(z : ComplexType) : ComplexType;
function Ln(z : ComplexType) : ComplexType;
function Log(a,b : ComplexType) : ComplexType;
function IntPow(x : ComplexType; y : IntegerType) : ComplexType;
function Pow(a,b : ComplexType) : ComplexType;
function RealRoot(a,b : RealType) : ComplexType;
function Root(a,b : ComplexType) : ComplexType;
function Sqrt(a : ComplexType) : ComplexType;
function MinusOneTo(z : ComplexType) : ComplexType;
function ImagTo(z : ComplexType) : ComplexType;
function MinusImagTo(z : ComplexType) : ComplexType;

function Sin(z : ComplexType) : ComplexType;
function Cos(z : ComplexType) : ComplexType;
function Tan(z : ComplexType) : ComplexType;
function Cot(z : ComplexType) : ComplexType;
function Csc(z : ComplexType) : ComplexType;
function Sec(z : ComplexType) : ComplexType;
function ArcSin(z : ComplexType) : ComplexType;
function ArcCos(z : ComplexType) : ComplexType;
function ArcTan(z : ComplexType) : ComplexType;
function ArcCot(z : ComplexType) : ComplexType;
function ArcCsc(z : ComplexType) : ComplexType;
function ArcSec(z : ComplexType) : ComplexType;

function Sinh(z : ComplexType) : ComplexType;
function Cosh(z : ComplexType) : ComplexType;
function Tanh(z : ComplexType) : ComplexType;
function Coth(z : ComplexType) : ComplexType;
function Csch(z : ComplexType) : ComplexType;
function Sech(z : ComplexType) : ComplexType;
function ArSinh(z : ComplexType) : ComplexType;
function ArCosh(z : ComplexType) : ComplexType;
function ArTanh(z : ComplexType) : ComplexType;
function ArCoth(z : ComplexType) : ComplexType;
function ArCsch(z : ComplexType) : ComplexType;
function ArSech(z : ComplexType) : ComplexType;

function Gamma(z : ComplexType) : ComplexType;
function GammaLn(z : ComplexType) : ComplexType;

// TODO =============================================
// gamma, gammaln, lower incomplete gamma
// beta, lower incomplete beta
// erf, erfc
// sinc 
// riemann zeta

implementation

uses Math, SysUtils;

// construction

function ComplexNum(a, b : RealType) : ComplexType;
begin
    Result.Re := a;
    Result.Im := b;
end;

function ComplexNumPolar(r, a : RealType) : ComplexType;
begin
    Result := system.abs(r) * (Cos(a) + Imag(Sin(a)));
end;

// assigments

operator := (a : RealType) res : ComplexType;
begin
    res.Re := a;
    res.Im := 0;
end;

operator := (a : Extended) res : ComplexType;
begin
    res.Re := a;
    res.Im := 0;
end;

operator := (a : Real) res : ComplexType;
begin
    res.Re := a;
    res.Im := 0;
end;

operator := (a : IntegerType) res : ComplexType;
begin
    res.Re := a;
    res.Im := 0;
end;

operator := (a : LongInt) res : ComplexType;
begin
    res.Re := a;
    res.Im := 0;
end;

operator := (a : Int64) res : ComplexType;
begin
    res.Re := a;
    res.Im := 0;
end;

//operator := (a : Integer) res : ComplexType;
//begin
//    res.Re := a;
//    res.Im := 0;
//end;

operator := (a : ShortInt) res : ComplexType;
begin
    res.Re := a;
    res.Im := 0;
end;

operator := (a : ComplexType) res : String;
begin
    if (a.Im = 0) then
    begin
        res := FloatToStr(a.Re);
    end else if (a.Im >0) then
    begin
        res := FloatToStr(a.Re)+'+'+FloatToStr(a.Im)+'i';
    end else begin
        res := FloatToStr(a.Re)+'-'+FloatToStr(-a.Im)+'i';
    end; 
end;

function toString(a : ComplexType) : String;
begin
    if (a.Im = 0) then
    begin
        Result := FloatToStr(a.Re);
    end else if (a.Im > 0) then
    begin
        Result := FloatToStr(a.Re)+'+'+FloatToStr(a.Im)+'i';
    end else begin
        Result := FloatToStr(a.Re)+'-'+FloatToStr(-a.Im)+'i';
    end; 
end;

operator Explicit(a : ComplexType) : String;
begin
    if (a.Im = 0) then
    begin
        Result := FloatToStr(a.Re);
    end else if (a.Im > 0) then
    begin
        Result := FloatToStr(a.Re)+'+'+FloatToStr(a.Im)+'i';
    end else begin
        Result := FloatToStr(a.Re)+'-'+FloatToStr(-a.Im)+'i';
    end; 
end;

operator Explicit(a : RealType) res : ComplexType;
begin
    res := ComplexNum(a, 0);
end;

operator Explicit(a : Extended) res : ComplexType;
begin
    res := ComplexNum(a, 0);
end;

operator Explicit(a : Real) res : ComplexType;
begin
    res := ComplexNum(a, 0);
end;

operator Explicit(a : IntegerType) res : ComplexType;
begin
    res := ComplexNum(a, 0);
end;

operator Explicit(a : LongInt) res : ComplexType;
begin
    res := ComplexNum(a, 0);
end;

operator Explicit(a : Int64) res : ComplexType;
begin
    res := ComplexNum(a, 0);
end;

//operator Explicit(a : Integer) res : ComplexType;
//begin
//    res := ComplexNum(a, 0);
//end;

operator Explicit(a : ShortInt) res : ComplexType;
begin
    res := ComplexNum(a, 0);
end;

// logical

operator = (a : ComplexType; b : ComplexType) : Boolean;
begin
    Result := (a.Re = b.Re) and (a.Im = b.Im)
end;

operator <> (a : ComplexType; b : ComplexType) : Boolean;
begin
    Result := not (a = b);
end;

// arithmetic

operator - (a : ComplexType) res : ComplexType;
begin
    res.Re := -a.Re;
    res.Im := -a.Im;
end;

operator + (a : ComplexType) res : ComplexType;
begin
    res.Re := a.Re;
    res.Im := a.Im;
end;

operator + (a : ComplexType; b : ComplexType) res : ComplexType;
begin
    res.Re := a.Re + b.Re;
    res.Im := a.Im + b.Im;
end;

operator - (a : ComplexType; b : ComplexType) res : ComplexType;
begin
    res.Re := a.Re - b.Re;
    res.Im := a.Im - b.Im;
end;

operator * (a : ComplexType; b : ComplexType) res : ComplexType;
begin
    if (a.Im = 0) and (b.Im = 0) then begin
        res.Re := a.Re * b.Re;
        res.Im := 0;
    end else begin
        res.Re := a.Re * b.Re - a.Im * b.Im;
        res.Im := a.Im * b.Re + a.Re * b.Im;
    end;
end;

operator / (a : ComplexType; b : ComplexType) res : ComplexType;
begin
    if (a.Im = 0) and (b.Im = 0) then begin
        res.Re := a.Re / b.Re;
        res.Im := 0;
    end else begin
        res.Re := (a.Re * b.Re + a.Im * b.Im) / (b.Re * b.Re + b.Im * b.Im);
        res.Im := (a.Im * b.Re - a.Re * b.Im) / (b.Re * b.Re + b.Im * b.Im);
    end;
end;

// basic functions

function Abs(a : ComplexType) : RealType;
begin
    Result := system.sqrt(a.Re * a.Re + a.Im * a.Im);
end;

function Arg(a : ComplexType) : RealType;
begin
    if (Abs(a) = 0) then
    begin
        Result := NaN;
    end else begin
        if (a.Im >= 0) then
        begin
            Result := Math.arccos(a.Re / Abs(a));
        end else begin
            Result := -Math.arccos(a.Re / Abs(a));
        end;
    end;
end;

function Conj(a : ComplexType) : ComplexType;
begin
    Result := ComplexNum(a.Re, -a.Im);
end;

function RePart(a : ComplexType) : RealType;
begin
    Result := a.Re;
end;

function ImPart(a : ComplexType) : RealType;
begin
    Result := a.Im;
end;

// constants

function Imag() : ComplexType;
begin
    Result := ComplexNum(0,1);
end;

function Imag(a : ComplexType) : ComplexType;
begin
    Result := ComplexNum(-a.Im,a.Re);
end;

function EulerNum() : RealType;
begin
    Result := Exp(1).Re;
end;

function Pi() : RealType;
begin
    Result := 3.1415926535897932384626433832795;
    //Result := Arg(-1);
    //Result := system.Pi;
end;

function GoldenNum() : RealType;
begin
    Result := 1.6180339887498948482045868343656;
end;

function Sqr(z : ComplexType) : ComplexType;
begin
    Result := z*z;
end; 

function Cub(z : ComplexType) : ComplexType;
begin
    Result := z*z*z;
end; 

function Pow4(z : ComplexType) : ComplexType;
begin
    Result := z*z*z*z;
end; 

function Pow5(z : ComplexType) : ComplexType;
begin
    Result := z*z*z*z*z;
end; 

function Inv(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) 
        then Result := 1.0/z.Re
        else Result := ComplexNum((z.Re)/(z.Re * z.Re + z.Im * z.Im), (-z.Im)/(z.Re * z.Re + z.Im * z.Im));
end;

function isZero(z : ComplexType) : Boolean;
begin
    Result := (z.Re = 0) and (z.Im = 0);
end;

function isNatural(z : ComplexType) : Boolean;
begin
    Result := (isInteger(z)) and (z.Re >= 0);
end;

function isInteger(z : ComplexType) : Boolean;
begin
    Result := (z.Im = 0) and (z.Re = Int(z.Re));
end;


function isReal(z : ComplexType) : Boolean;
begin
    Result := (z.Im = 0);
end;

function isImaginary(z : ComplexType) : Boolean;
begin
    Result := (z.Re = 0) and (z.Im <> 0);
end;

function isComplex(z : ComplexType) : Boolean;
begin
    Result := True;
end;


// more functions

function Exp(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) 
        then Result := system.exp(z.Re)
        else Result := system.exp(z.Re)*(system.cos(z.Im) + Imag(system.sin(z.Im)));
end;

function Ln(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) and (z.Re > 0)
        then Result := system.ln(z.Re)
        else Result := system.ln(Abs(z)) + Imag(Arg(z));
end;

function Log(a,b : ComplexType) : ComplexType;
begin
    Result := Ln(b)/Ln(a);
end;

function IntPow(x : ComplexType; y : IntegerType) : ComplexType;
var
    s : ComplexType;
    d : IntegerType;
begin
    if isZero(x) then 
    begin
        if (y <= 0) then s := NaN else s := 0;
    end else begin
        d := system.abs(y);
        s := 1;
        if (d > 0) then
        begin
            if (d mod 3 = 0) 
                then s := Cub(intPow(x, d div 3))
                else if (d mod 2 = 0)  
                         then s := Sqr(IntPow(x, d div 2)) 
                         else s := x * IntPow(x, d-1);
            if (y < 0) then s := Inv(s);
        end;
    end;
    Result := s;
end;

function unitcirclepowTo(a,b : ComplexType) : ComplexType;
begin
    if (a = 1) 
    then Result := 1
    else if (a = -1) 
    then Result := MinusOneTo(b)
    else if (a = Imag) 
    then Result := ImagTo(b)
    else if (a = -Imag) 
    then Result := MinusImagTo(b)
    else Result := Exp(b * Ln(a));
end;

function Pow(a,b : ComplexType) : ComplexType;
begin
    //if (isInteger(b))
    //then begin
    //    Result := IntPow(a, trunc(b.Re));
    //end else begin
    //    Result := Exp(b * Ln(a));
    //end;
    if (isInteger(b))
    then begin
        //if (Abs(a) = 1) 
        if (a*a*a*a = 1)
            then Result := unitcirclepowTo(a,b)
            else Result := IntPow(a, trunc(b.Re));
    end else begin
        //if (Abs(a) = 1) 
        if (a*a*a*a = 1)
            then Result := unitcirclepowTo(a,b)
            else Result := Exp(b * Ln(a));
    end;
end;

function Sqrt(a : ComplexType) : ComplexType;
begin
    // to improve
    //Result := Exp(Ln(a)/2);
    if (a.Im = 0) and (a.Re >= 0) then
    begin
        Result := system.sqrt(a.Re);
    end else if (a.Im = 0) and (a.Re < 0) then
    begin
        Result := system.sqrt(-a.Re)*Imag;
    end else if (a.Im > 0) then begin
        Result := ComplexNum(system.sqrt((a.Re + Abs(a))/2), system.sqrt((-a.Re + Abs(a))/2));
    end else begin
        Result := ComplexNum(system.sqrt((a.Re + Abs(a))/2), -system.sqrt((-a.Re + Abs(a))/2));
    end;
end;

function RealRoot(a,b : RealType) : ComplexType;
begin
    if (b = 1) then
    begin
        Result := a;
    end else if (b = 2) then begin
        Result := Sqrt(a);
    end else if (b < 0) then begin
        Result := Inv(RealRoot(a,b));
    end else if (a < 0) and (isInteger(b)) and (trunc(b) mod 2 = 1)
        then Result := -Pow(system.abs(a),Inv(b))
        else Result := Pow(a,Inv(b)); 
end;

function Root(a,b : ComplexType) : ComplexType;
begin
    if (b = 1) then
    begin
        Result := a;
    end else if (b = 2) then begin
        Result := Sqrt(a);
    end else if (isReal(b)) then begin
        if (b.Re < 0) then begin
            Result := Inv(Root(a,-b.Re));
        end else if isInteger(b) then
        begin
            Result := ComplexNumPolar(RealRoot(Abs(a), b.Re).Re, Arg(a)/b.Re);
            //Result := Pow(a,Inv(b.Re));
        end else begin
            Result := Pow(a,Inv(b.Re));
        end;
    end else begin
        Result := Pow(a,Inv(b));
    end;
end;

function MinusOneTo(z : ComplexType) : ComplexType;
begin
    if (isInteger(z))
        then if (Int(z.Re) mod 2 = 0) 
                 then Result := 1
                 else Result := -1
        else if (isInteger(2*z))
                 then if (Int(2*z.Re) mod 2 = 0) 
                          then Result := Imag
                          else Result := -Imag
                 else Result := Exp(z * Imag * Pi);
end;

function ImagTo(z : ComplexType) : ComplexType;
var 
    a : Integer;
begin
    if (isInteger(z))
        then begin
            a := trunc(z.Re);
            a := ((a mod 4) + 4) mod 4;
            case a of 
                0 : Result := 1;
                1 : Result := Imag;
                2 : Result := -1;
                3 : Result := -Imag;
            end; 
        end else Result := Exp(z * Imag * Pi * 0.5);
end;

function MinusImagTo(z : ComplexType) : ComplexType;
var 
    a : Integer;
begin
    if (isInteger(z))
        then begin
            a := trunc(z.Re);
            a := ((a mod 4) + 4) mod 4;
            case a of 
                0 : Result := 1;
                1 : Result := -Imag;
                2 : Result := -1;
                3 : Result := Imag;
            end; 
        end else Result := Exp(- z * Imag * Pi * 0.5);
end;

function Sin(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) 
        then if (isInteger(z/Pi))
                 then Result := 0
                 else Result := system.sin(z.Re) 
        else Result := (Exp(Imag(z)) - Exp(Imag(-z))) / Imag(2);
end;

function Cos(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) 
        then if (isInteger(z/Pi-0.5))
                 then Result := 0
                 else Result := system.cos(z.Re) 
        else Result := (Exp(Imag(z)) + Exp(Imag(-z))) / 2.0;
end;

function Tan(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) 
        then if (isInteger(z/Pi))
                 then Result := 0
                 else Result := system.sin(z.Re)/system.cos(z.Re) 
        else Result := -Imag * (Exp(Imag(z)) - Exp(Imag(-z))) / (Exp(Imag(z)) + Exp(Imag(-z)));
end;

function Cot(z : ComplexType) : ComplexType;
begin
    Result := Inv(Tan(z));
end;

function Csc(z : ComplexType) : ComplexType;
begin
    Result := Inv(Sin(z));
end;

function Sec(z : ComplexType) : ComplexType;
begin
    Result := Inv(Cos(z));
end;

function ArcSin(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) and (Abs(z) <= 1)
        then Result := Math.arcsin(z.Re)
        else Result := -Imag * Ln(Imag(z) + Sqrt(Abs(1-z*z)) * Exp((Imag*Arg(1-z*z))/2));
end;

function ArcCos(z : ComplexType) : ComplexType;
begin
    Result := Pi/2 - ArcSin(z);
    //Result := Arg(Imag) - ArcSin(z);
    //Result := -Imag * Ln(z + Imag*Sqrt(Abs(1-z*z)) * Exp((Imag*Arg(1-z*z))/2));
end;

function ArcTan(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) 
        then Result := system.arctan(z.Re)
        else Result := Inv(Imag(2))*Ln((Imag-z)/(Imag+z));
end;

function ArcCot(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) 
        then Result := Pi/2 - system.arctan(z.Re)
        else Result := Inv(Imag(2))*Ln((z+Imag)/(z-Imag));
end;

function ArcCsc(z : ComplexType) : ComplexType;
begin
    Result := ArcSin(Inv(z));
end;

function ArcSec(z : ComplexType) : ComplexType;
begin
    Result := ArcCos(Inv(z));
end;

// hyperbolic functions

function Sinh(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) 
        then Result := Math.sinh(z.Re) 
        else Result := (Exp(z) - Exp(-z)) / 2.0;
end;

function Cosh(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) 
        then Result := Math.cosh(z.Re) 
        else Result := (Exp(z) + Exp(-z)) / 2.0;
end;

function Tanh(z : ComplexType) : ComplexType;
begin
    Result := (Exp(2*z) - 1) / (Exp(2*z) + 1);
end;

function Coth(z : ComplexType) : ComplexType;
begin
    Result := (Exp(2*z) + 1) / (Exp(2*z) - 1);
end;

function Csch(z : ComplexType) : ComplexType;
begin
    Result := Inv(Sinh(z));
end;

function Sech(z : ComplexType) : ComplexType;
begin
    Result := Inv(Cosh(z));
end;

function ArSinh(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) 
        then Result := Math.arsinh(z.Re) 
        else Result := Ln(z + Sqrt(z*z + 1));
end;

function ArCosh(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) and (z.Re >= 1)
        then Result := Math.arsinh(z.Re) 
        else Result := Ln(z + Sqrt(z*z - 1));
end;

function ArTanh(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) and (Abs(z) < 1)
        then Result := Math.artanh(z.Re) 
        else Result := Ln((1+z)/(1-z)) / 2.0;
end;

function ArCoth(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) and (Abs(z) > 1)
        then Result := system.ln((1+z.Re)/(1-z.Re)) / 2.0 
        else Result := Ln((1+z)/(1-z)) / 2.0;
end;

function ArCsch(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) and (z.Re > 0) and (z.Re <= 1)
        then Result := system.ln(1.0/z.Re + system.sqrt(1.0/(z.Re*z.Re) + 1))
        else Result := Ln(Inv(z) + Sqrt(Inv(z*z) + 1));
end;

function ArSech(z : ComplexType) : ComplexType;
begin
    if (z.Im = 0) and (z.Re <> 0) 
        then Result := system.ln(1.0/z.Re + system.sqrt(1.0/(z.Re*z.Re) - 1))
        else Result := Ln(Inv(z) + Sqrt(Inv(z*z) - 1));
end;

// gamma function

function fmod(x, y : Extended) : Extended;
begin
    Result := x - y * Int(x/y);
end;

function fdiv(x, y : Extended) : Extended;
begin
    Result := Int(x/y);
end;

function fact(x : Extended) : Extended;
var
    s : Extended;
    i : LongInt;
begin
    s := 1;
    i := 1; 
    while i <= abs(x) do begin
        s := s * i;
        i := i + 1;
    end;
    Result := s;
end;

function Gamma(z : ComplexType) : ComplexType;
var
	limit, n : IntegerType;
	s, s1    : ComplexType;
	epsilon  : RealType;
begin
    if (isInteger(z)) and (z.Re > 0) 
    then Result := fact(z.Re-1)
    else if (z = 0.5) 
    then Result := system.sqrt(Pi)
    else if (z.Im = 0) and (z.Re > 0) and (fmod(z.Re,1) = 0.5) 
    then Result := (z-1)*Gamma(z-1)
    else begin
        if (Abs(z) > 100) 
            then limit := trunc(100000*Abs(z))+1
		    else limit := trunc(1000000*Abs(z))+1;
		n := 1;
		s := 1.0;
		epsilon := 50.0;
		while (n < limit) 
        //and (epsilon > 0.0000001) do
        and (epsilon > 0.0000000001) do
		begin
			s1 := s;
			s := s * ((Pow(1+1/n, z))/(1+z/n));
			epsilon := Abs(s-s1);
			n := n + 1;
		end;
		Result := s/z;
    end;
end;

function loggamma_real(x : RealType) : RealType;
{ Log of Gamma(x), exponentiate this to get Gamma(x), x! =
Gamma(x+1),
  very accurate approximation: 1+epsilon, abs(epsilon) < 2.1E-10
  Based on Numerical Recipes, by Press, Flannery, Teukolsky,
  and Vetterling; first edition, page 157 and 704; but greatly
cleaned up, by Jud McCranie }
const stp =   2.50662827465;
      c1  =  76.18009173;
      c2  = -86.50532033;
      c3  =  24.01409822;
      c4  =  -1.231739516;
      c5  =   1.20858003E-3;
      c6  =  -5.36382E-6;
var ser : RealType;
begin { --- log gamma --- }
    ser := 1.0 + c1 / x + c2 / (x + 1.0) + c3 / (x + 2.0) +
             c4 / (x + 3.0) + c5 / (x + 4.0) + c6 / (x + 5.0);
    Result := (x - 0.5) * system.ln( x + 4.5) - x - 4.5 + system.ln( stp * ser);
end; { --- log gamma --- }

function GammaLn(z : ComplexType) : ComplexType;
begin
    //if (isReal(z)) and (z.Re > 0)
    //    then Result := loggamma_real(z.Re)
    //    else Result := Ln(Gamma(z));
    Result := Ln(Gamma(z));
end;


end.
