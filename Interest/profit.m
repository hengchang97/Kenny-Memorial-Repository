% 计算利用贷款利差的获得的投资收益
% captial为贷款额度
% annualinterest为贷款年利率，以小数表示
% investmentinterest为投资年利率，以小数表示
% times为月份数
function y=profit(capital,annualinterest,investmentinterest,times)
ainterest=annualinterest/12;
iinterest=investmentinterest/12;
payment=capital*ainterest/(1-(1+ainterest)^-times);
for i=1:times
    capital=capital*(1+iinterest);
    capital=capital-payment;
end
y=capital;