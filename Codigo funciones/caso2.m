% Fucnión para el cálculo de los datos donde el mantenimiento 
% correctivo es variable en el tiempo.

function y=caso2(c2M,b,lamb)
format long;
T = optimvar('T',1,'LowerBound',0,'Type','continuous');
type FuncionCoste2;
tiempo=1:10;
coste = 1:10;

for M=1:10
    fun = fcn2optimexpr(@FuncionCoste,M,T,b,lamb,c2M);
    prob = optimproblem('Objective', fun);
    x0.T = 0;
    [sol,fval]=solve(prob,x0);
    tiempo(M)=sol.T;
    coste(M)=fval;
    if(M>1)&&(coste(M)>coste(M-1))
        D = sprintf('Para M = %d, T = %d, P(SM<T)= %d, Media del ciclo = %d, coste = %d \n',M-1,tiempo(M-1),ProbSn(M-1,tiempo(M-1),b,lamb),MediaCiclo(M-1,tiempo(M-1),b,lamb),coste(M-1));
        fprintf(D)
        break
    elseif M==10
        D = sprintf('Para M = %d, T = %d, P(SM<T)= %d, Media del ciclo = %d, coste = %d \n',M,tiempo(M),ProbSn(M,tiempo(M),b,lamb),MediaCiclo(M,tiempo(M),b,lamb),coste(M));
        fprintf(D)
    end
        
end