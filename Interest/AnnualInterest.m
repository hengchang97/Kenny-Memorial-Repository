% ��֪������capital�͵ȶϢ������payment����������
% ���Ӧ��������
function y=AnnualInterest(capital,payment,times)
if payment*times<=capital
    y=0;
else    
    syms x;
    temp=solve(((1-(x+1)^(-times))/x)*payment==capital);
    y=temp(1);
    y=(1+y)^12-1;
end;

