% �������ô�������Ļ�õ�Ͷ������
% captialΪ������
% annualinterestΪ���������ʣ���С����ʾ
% investmentinterestΪͶ�������ʣ���С����ʾ
% timesΪ�·���
function y=profit(capital,annualinterest,investmentinterest,times)
ainterest=annualinterest/12;
iinterest=investmentinterest/12;
payment=capital*ainterest/(1-(1+ainterest)^-times);
for i=1:times
    capital=capital*(1+iinterest);
    capital=capital-payment;
end
y=capital;