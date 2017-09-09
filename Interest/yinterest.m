% 日利息为万分之x时的年利息
function y = yinterest(x)
y = (1+x/10000*30)^12-1;