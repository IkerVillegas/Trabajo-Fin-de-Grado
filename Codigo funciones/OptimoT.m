function [r,s] = OptimoT(c1,b,lamb)
format long;
T = optimvar('T',1,'LowerBound',0,'Type','continuous');
type CosteT;

fun = fcn2optimexpr(@CosteT,T,b,lamb,c1);
prob = optimproblem('Objective', fun);
x0.T = 0;
[sol,fval]=solve(prob,x0);

r=sol.T;
s=fval;
    
end