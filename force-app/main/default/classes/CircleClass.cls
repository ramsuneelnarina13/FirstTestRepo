public virtual class CircleClass
{
    Public Integer Length = 30;
	Public Decimal A;
	Public Decimal R = 1;
    Public Decimal H = 1;
    Public Decimal V;
    Public Decimal Var;
    Public Decimal Pi = 3.14;
    Public void CylinderArea (){
        Var = H + R;
        A = 2*Pi*R*Var;
        System.debug(A);
    }
    
}