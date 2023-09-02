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

function Sinc(z : ComplexType) : ComplexType;
function Ei1(z : ComplexType) : ComplexType; // E_1(x) exponential integral
function SinInt(z : ComplexType) : ComplexType; // Si(x)
function SinInt2(z : ComplexType) : ComplexType; // si(x)
function CosInt(z : ComplexType) : ComplexType; // Ci(x)
function CosInt2(z : ComplexType) : ComplexType; // Cin(x)

function Gamma(z : ComplexType) : ComplexType;
function GammaLn(z : ComplexType) : ComplexType;
function Erf(z : ComplexType) : ComplexType;
function Erfc(z : ComplexType) : ComplexType;
function Erfi(z : ComplexType) : ComplexType;
function LowerGamma(s, x : ComplexType) : ComplexType;
function UpperGamma(s, x : ComplexType) : ComplexType;
function Beta(x, y : ComplexType) : ComplexType;
function IncBeta(x, a, b : ComplexType) : ComplexType;
function RegIncBeta(x, a, b : ComplexType) : ComplexType;

function bernoulli_num(n : IntegerType) : ComplexType;
function RiemannZeta(z : ComplexType) : ComplexType;

implementation

uses Math, SysUtils;

const 
    C_PI     = 3.1415926535897932384626433832795;    // pi
    C_HALFPI = 1.57079632679489661923132169163975;   // pi/2
    C_QURTPI = 0.7853981633974483096156608458198757; // pi/4
    C_SQRTPI = 1.7724538509055160272981674833411;    // sqrt(pi)
    C_2DSQPI = 1.1283791670955125738961589031215;    // 2/sqrt(pi)
    C_LNSQPI = 0.5723649429247000870717136756765;    // ln(sqrt(pi))
    C_SQPID6 = 1.644934066848226436472415166646025;  // Pi*Pi/6
    C_QUPI90 = 1.0823232337111381915160036965411679; // pi^4 / 90
    C_APERY  = 1.20205690315959428539973816151145;   // Apery's constant
    C_PHI    = 1.6180339887498948482045868343656;    // phi - Golden ratio
    C_EM     = 0.5772156649015328606065120900824;    // Euler-Mascheroni constant


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
    Result := C_HALFPI - ArcSin(z);
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
        then Result := C_HALFPI - system.arctan(z.Re)
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

function Sinc(z : ComplexType) : ComplexType;
begin
    if (z = 0)
    then Result := 1
    else Result := Sin(z)/z;
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

function powbyfact(z : ComplexType; n : IntegerType) : ComplexType; // z^n/n!
var
    s : ComplexType;
    i : IntegerType;
begin
    s := 1;
    i := 1; 
    while i <= abs(n) do begin
        s := s * z / i;
        i := i + 1;
    end;
    Result := s;
end;

function Ei1(z : ComplexType) : ComplexType;
var
    sum : ComplexType;
    n   : IntegerType = 50;
begin
    sum := z+(n+1)/(n+2);
    while (n > 0) do
    begin
        sum := z+n/(1+n/sum);
        n := n-1;
    end;
    Result := Exp(-z)/sum;
end;

function SinInt(z : ComplexType) : ComplexType; // Si(x)
begin
    if (z.Re < 0) 
    then Result := -SinInt(-z)
    else Result := C_HALFPI + Ei1(Imag(z)).Im;
end;

function SinInt2(z : ComplexType) : ComplexType; // si(x)
begin
    Result := SinInt2(z) - C_HALFPI;
end;

function CosInt(z : ComplexType) : ComplexType; // Ci(x)
begin
    if (z.Re < 0) 
    then Result := CosInt(-z) - Imag(C_PI)
    else Result := -Ei1(Imag(z)).Re;
end;

function CosInt2(z : ComplexType) : ComplexType; // Cin(x)
begin
    Result := C_EM + Ln(z) - CosInt(z);
end;

function Gamma(z : ComplexType) : ComplexType;
begin
    if (isInteger(z)) then
        if (z.Re > 0) 
            then Result := fact(z.Re-1)
            else Result := NaN
    else if (z = 0.5) 
    then Result := C_SQRTPI // sqrt(pi)
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
        Result := C_LNSQPI // ln(sqrt(pi))
    else if (z.Re > 1)
    then Result := Ln(z-1) + GammaLn(z-1)
    else if (z.Re < 0) 
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
        and (epsilon > 0.0000000000001) do
        begin
            s1 := s;
            p := 1.0;
            for k := 1 to n do
                p := p * (-z*z)/k;
            s := s + p * (z/(2*n+1));
            epsilon := Abs(s-s1);
            n := n + 1;
        end;
        s := s * C_2DSQPI; // 2/sqrt(pi)
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

// s.Re > 0
// 
function UpperGamma(s, x : ComplexType) : ComplexType;
var
    sum : ComplexType;
    n   : IntegerType = 50;
begin
    if (s.Re < 0)
    then Result := NaN
    else if (s = 0) and ((not isReal(x)) or (x.Re <= 0))
    then Result := NaN
    else if (s = 1) then
    begin
        Result := Exp(-x);
    end else if (x = 0) then begin
        Result := Gamma(s);
    end else if (s = 0.5) then begin
        Result := Erfc(sqrt(x)) * C_SQRTPI; // sqrt(pi)
    end else begin
        sum := (2*n+1)+x-s;
        while (n > 0) do
        begin
            sum := (2*n-1)+x-s + (n*(s-n))/sum;
            n := n-1;
        end;
        Result := (Pow(x,s) * Exp(-x))/sum;
    end;
end;

function LowerGamma(s, x : ComplexType) : ComplexType;
begin
    if (s.Re <= 0)
    then Result := NaN
    else 
    if (s = 1) then
    begin
        Result := 1.0 - Exp(-x);
    end else if (x = 0) then begin
        Result := 0;
    end else if (s = 0.5) then begin
        Result := Erf(sqrt(x)) * C_SQRTPI; // sqrt(pi)
    end else begin
        Result := Gamma(s) - UpperGamma(s,x);
    end;
end;

// beta function with some help
function newton_intt(n, k : ComplexType) : ComplexType;
var
    i : IntegerType;
begin
    if (k.Re > n.Re) then 
        Result := 1.0/0.0
    else if (k = 0) then 
        Result := 1
    else if (k.Re > n.Re/2) then
        Result := newton_intt(n,n-k)
    else begin
        Result := 1;
        for i := 1 to trunc(k.Re) do
            Result := Result * (n - i + 1) / i;
    end;
end;


function Beta(x, y : ComplexType) : ComplexType;
begin
    if (isInteger(x)) and (isInteger(y)) 
    then Result := ((x+y)/(x*y))*Inv(newton_intt(x+y, x))
    else begin
        Result := Exp(GammaLn(x) + GammaLn(y) - GammaLn(x+y));
    end;
end;

// incomplete beta function
function IncBeta(x, a, b : ComplexType) : ComplexType;
var
    sum : ComplexType;
    n   : IntegerType = 50;
    m   : IntegerType;
begin
    if (x = 1)
    then Result := Beta(a,b)
    else if (x = 0)
    then Result := 0
    else if (x.Re > ((a+1)/(a+b+2)).Re) 
    then Result := Beta(a,b) - IncBeta(1-x,b,a)
    else begin
        m := (n+1) div 2;
        sum := (-1.0*(a+b+m)*(a+m)*x)/((a + 2*m + 1)*(a + 2*m));
        while (n > 0) do
        begin
            m := n div 2;
            if (n mod 2 = 0) 
                then sum := 1 + ((m*(b-m)*x)/((a + 2*m - 1)*(a + 2*m)))/sum
                else sum := 1 + ((-(a+b+m)*(a+m)*x)/((a + 2*m + 1)*(a + 2*m)))/sum;
            n := n-1;
        end;
        Result := (Pow(x,a) * Pow(1-x, b))/(a*sum);
    end;
end;

function RegIncBeta(x, a, b : ComplexType) : ComplexType;
begin
         if (x = 0)   then Result := 0
    else if (x = 1)   then Result := 1
    else if (b = 1)   then Result := Pow(x, a)
    else if (a = 1)   then Result := 1 - Pow(1-x, b)
    else Result := IncBeta(x, a, b)/Beta(a, b);
end;

// riemann zeta function

// compute Bernoulli number B_n - works badly on large ones
function bernoulli_num(n : IntegerType) : ComplexType;
var
    i, k : IntegerType;
    s    : ComplexType;
    B    : array of ComplexType;
begin
    //writeln('ber');
    if (n > 10)
        then SetLength(B, n+1)
        else SetLength(B, 10+1);
    B[0] := 1;
    B[1] := 0.5;
    B[2] := 0.16666666666666666666666666666667;  // 1/6
    B[4] := -0.0333333333333333333333333333333; // -1/30
    B[6] := 0.02380952380952380952380952380952; // 1/42
    B[8] := -0.0333333333333333333333333333333; // -1/30
    B[10] := 0.0757575757575757575757575757576; // 5/66
    i := 3;
    while (i <= n) do
    begin
        B[i] := 0;
        i := i + 2;
    end;
    if (n >= 12) and (n mod 2 = 0) then
    begin
        i := 12;
        while (i <= n) do
        begin
            B[i] := 1;
            s := 0.0;
            for k := 0 to i-1 do
                s := s + 1.0 * B[k] * newton_intt(i,k) / (i - k + 1.0);
            //B[i] := 1-s;
            B[i] := 1-s;
            //writeln(#9, 'b(',i,') = ', AnsiString(B[i]));
            i := i+2;
        end;
    end;
    //writeln('bernoulli(',n,') = ', AnsiString(B[n]));
    Result := B[n];
end;

function RiemannZeta(z : ComplexType) : ComplexType;
var
    limit, n : IntegerType;
    sum      : ComplexType;
    //limit, n, k : IntegerType;  
    //sum1, sum2  : ComplexType;
begin
         if (z = -1) then Result := -1.0/12
    else if (z = 0) then Result := -1.0/2
    else if (z = 0.5) then Result := -1.460354508809586812889499152515298 // just for convenience
    else if (z = 1) then Result := Infinity
    else if (z = 2) then Result := C_SQPID6 // Pi*Pi/6
    else if (z = 3) then Result := C_APERY  // Apery's constant
    else if (z = 4) then Result := C_QUPI90 // pi^4 / 90
    else if (z.Re > 1) then
    begin
        //if (isInteger(z)) and (fmod(z.Re,2) = 0)
        //then begin
        //    n := trunc(z.Re) div 2;
        //    Result := (MinusOneTo(n+1) * bernoulli_num(2*n) * Pow(2*Pi, 2*n))/(2 * fact(2*n));
        //end else begin
            //if (z.Re > 50)
            //    then limit := 1000
            //    else limit := 10000 + trunc((51.0 - z.Re)/10);
            if (z.Re > 100)
                then limit := 100
                else limit := trunc(1000000/(z.Re*z.Re));
            sum := 0;
            for n := 1 to limit do
                sum := sum + Inv(Pow(n, z));
            Result := sum;
        //end;
    end else if (z.Re > 0) and (z.Re < 1) then begin
        if (Inv(z.Re).Re > 100)
                then limit := 100
                else limit := trunc(1000000*(z.Re*z.Re));
        sum := 0;
        for n := 1 to limit do
            sum := sum + Inv(Pow(n, z)) * MinusOneTo(n+1);
        Result := sum / (1 - Pow(2, 1-z));
    end else begin
        if (isInteger(z)) 
        then if (fmod(z.Re,2) = 0)
             then Result := 0
             else Result := MinusOneTo(-z.Re) * bernoulli_num(trunc(1 - z.Re))/(1 - z.Re) // use B_n
        else Result := NaN; // so far, check functional equation
        //else Result := Pow(2,z) * Pow(Pi, z-1) * Sin(Pi * z * 0.5) * Gamma(1-z) * RiemannZeta(1-z); // functional equation
    end;
end;




end.
