Public Class CalculatorAPEXClass {

    //variable declaration at class level
    Private integer Sum;
    Private integer Multiplication;
    //function for sum
    Public integer MakeSum(integer NumA, integer NumB)
{

Sum = NumA + NumB;
Return Sum;
}

Public void MakeMultiply(integer NumC, integer NumD)
{
Multiplication = NumC * NumD;
system.debug('The Answer = ' + Multiplication);
} 
}