unit Complex;

interface

{$mode objfpc}{$H+}

type RealType = type Extended;
//type IntegerType = type LongInt;
type IntegerType = type Int64;

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
function EulerMascheroni() : RealType;
function GoldenNum() : RealType;

function isZero(z : ComplexType) : Boolean;
function isNatural(z : ComplexType) : Boolean;
function isInteger(z : ComplexType) : Boolean; 
function isReal(z : ComplexType) : Boolean;
function isNotReal(z : ComplexType) : Boolean;
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
function Erf(z : ComplexType) : ComplexType;
function Erfc(z : ComplexType) : ComplexType;
function Erfi(z : ComplexType) : ComplexType;

// TODO =============================================
// lower incomplete gamma
// beta, lower incomplete beta
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

function EulerMascheroni() : RealType;
begin
    Result := 0.5772156649015328606065120900824;
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

function isNotReal(z : ComplexType) : Boolean;
begin
    Result := (z.Im <> 0);
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

function fmod(x, y : RealType) : RealType;
begin
    Result := x - y * Int(x/y);
end;

function fdiv(x, y : RealType) : RealType;
begin
    Result := Int(x/y);
end;

function fact(x : RealType) : RealType;
var
    s : RealType;
    i : IntegerType;
begin
    s := 1;
    i := 1; 
    while i <= abs(x) do begin
        s := s * i;
        i := i + 1;
    end;
    Result := s;
end;

function factln(x : RealType) : RealType;
var
    s : RealType;
    i : IntegerType;
begin
    s := 0;
    i := 1; 
    while i <= abs(x) do begin
        s := s + system.ln(i);
        i := i + 1;
    end;
    Result := s;
end;

function Gamma(z : ComplexType) : ComplexType;
var
	limit, n : IntegerType;
	s, s1    : ComplexType;
	epsilon  : RealType;
    a, b     : array of IntegerType;
begin
    if (isInteger(z)) then
        if (z.Re > 0) 
            then Result := fact(z.Re-1)
            else Result := NaN
    else if (z = 0.5) 
    then Result := 1.7724538509055160272981674833411 // sqrt(pi)
    else if (z.Re > 1) 
    then Result := (z-1)*Gamma(z-1)
    else if (z.Re < 0) 
    then Result := Gamma(z+1)/z
    else Result := Exp(GammaLn(z));
end;

// from http://numerical.recipes/book.html
function LogGamma_real(z : ComplexType) : ComplexType;
var
    j              : IntegerType;
    x, y, tmp, ser : ComplexType;
    cof            : Array of ComplexType;
begin 
    cof := [57.1562356658629235, -59.5979603554754912, 14.1360979747417471,
    -0.491913816097620199,0.339946499848118887e-4, 0.465236289270485756e-4, -0.983744753048795646e-4, 
    0.158088703224912494e-3, -0.210264441724104883e-3, 0.217439618115212643e-3,-0.164318106536763890e-3, 
    0.844182239838527433e-4,-0.261908384015814087e-4,0.368991826595316234e-5];
    //if (xx <= 0) throw('bad arg in gammln');
    x := z;
    y := x;
    tmp := x + 5.24218750000000000; //rational 671/128.
    tmp := (x+0.5)*Ln(tmp)-tmp;
    ser := 0.999999999999997092;
    for j := 0 to 13 do
    begin
        ser := ser + cof[j]/(y+1);
        y := y+1;
    end;
    Result := tmp+Ln(2.5066282746310005*ser/x);
end;

function GammaLn(z : ComplexType) : ComplexType;
begin
    if (z = 1)
    then Result := 0
    else if (z = 0.5) 
    then 
        //Result := system.ln(system.sqrt(Pi))
        Result := 0.5723649429247000870717136756765 // ln(sqrt(pi))
    else if (z.Re > 1) //and (z.Im = 0) and (fmod(z.Re,1) = 0.5) 
    then Result := Ln(z-1) + GammaLn(z-1)
    else if (z.Re < 0) //and (z.Im = 0) and (fmod(z.Re,1) = 0.5) 
    then Result := GammaLn(z+1) - Ln(z)
    else begin
        Result := LogGamma_real(z);
    end;
end;

// error functions

function Erf(z : ComplexType) : ComplexType;
var
    limit, n : IntegerType;
    s1, s, p : ComplexType;
	epsilon  : RealType;
    k        : IntegerType;
begin
    if z = 0 then
    begin
        Result := 0;
    end else begin
        if (Abs(z) > 100) 
            then limit := trunc(10000*Abs(z))+1
		    else limit := trunc(100000*Abs(z))+1;
        //writeln('lim ' , limit);
        s := 0;
        epsilon := 50.0;
        n := 0;
        while (n < limit) 
        //and (epsilon > 0.0000001) do
        //and (epsilon > 0.0000000001) do
        and (epsilon > 0.0000000000001) do
        begin
            s1 := s;
            p := 1.0;
            for k := 1 to n do
                p := p * (-z*z)/k;
            s := s + p * (z/(2*n+1));
            epsilon := Abs(s-s1);
            //writeln('eps ' , epsilon, ' at ', n);
            n := n + 1;
        end;
        //writeln('fin ' , epsilon, ' at ', n-1);
        s := s * 1.1283791670955125738961589031215; // 2/sqrt(pi)
        Result := s;
    end;
end;

function Erfc(z : ComplexType) : ComplexType;
begin
    Result := 1.0 - Erf(z);
end;

function Erfi(z : ComplexType) : ComplexType;
begin
    Result := -Imag(Erf(Imag(z)));
end;

// TODO
// beta functions

{*
// s.Re > 0
// 
function LowerGamma(s, x : ComplexType) : ComplexType;
var
    t, sum  : Extended;
	epsilon : Extended;
begin
    if (s = 1) then
    begin
        //writeln('chuj3');
        //writeln('s=',s:2:5,' x=',x:2:5);
        Result := 1.0 - exp(-x);
    end else if (x = 0) then begin
        //writeln('chuj2');
        // check it
        Result := 0;
    end else if (s = 0.5) then begin
        Result := Erf(sqrt(x)) * 1.7724538509055160272981674833411; // sqrt(pi)
    end else begin
        //writeln('chuj');
	    epsilon := 0.0001*trunc(x+1);
        //epsilon := 0.0001;
        sum := 0;
        //writeln('s=',s:2:5,' x=',x:2:5);
        t := 0;
        while (t <= x) do
        begin
            //writeln('s=',s:2:5,' x=',t:2:5);
            //writeln(pow2(t, s-1));
            sum := sum + epsilon*(pow(t, s-1)*Exp(-t));
            //sum := sum + (pow2(t, s-1)*exp(-t));
            t := t + epsilon;
            Result := sum;
        end;
    end;
end;

function vbeta(x, y : Extended) : Extended;
//var
//    eps  : Extended;
//    t, s : Extended;
begin
    if (isInteger(x)) and (isInteger(y)) then
    begin
        Result := ((x+y)/(x*y))*(1/(newton_int(x+y, x)))
    end else begin
        //eps := 0.0001;
        //s := 0;
        //t := 0;
        //while (t < 1) do
        //begin
        //    s := s + eps*(pow2(t, x-1) * pow2(1-t, y-1));
        //    t := t + eps;
        //end;
        //Result := s;
        Result := exp(LogGamma(x) + LogGamma(y) - LogGamma(x+y));
    end;
end;

function vinbeta(x, a, b : Extended) : Extended;
var
    eps  : Extended;
    t, s : Extended;
begin
    eps := 0.0001;
    s := 0;
    t := 0;
    while (t < x) do
    begin
        s := s + eps*(pow2(t, a-1) * pow2(1-t, b-1));
        t := t + eps;
    end;
    Result := s;
end;

function vrinbeta(x, a, b : Extended) : Extended;
begin
    //writeln(x:2:6);
    //writeln(vinbeta(x, a, b):2:8, #9, vbeta(a, b):2:8);
    //writeln(vinbeta(x, a, b)/vbeta(a, b):2:8);
         if (x = 0)   then Result := 0
    else if (x = 1)   then Result := 1
    else if (b = 1)   then Result := pow2(x, a)
    else if (a = 1)   then Result := 1 - pow2(1-x, b)
    //else if (x > 0.5) then Result := 1 - vrinbeta(1.0-x, b, a)
    else Result := vinbeta(x, a, b)/vbeta(a, b);
    //Result := vinbeta(x, a, b)/vbeta(a, b);
end;

function gammat(nu : Extended) : Extended;
var
    s : Extended;
begin
    if (fmod(nu, 2) = 0) 
        then s := 1/(2*sqrt(nu))
        else s := 1/(PI*sqrt(nu));
    nu := nu - 1;
    while (nu >= 2) do
    begin
        s := s * nu/(nu-1);
        nu := nu - 2;
    end;
    Result := s;
end;
*}



end.
