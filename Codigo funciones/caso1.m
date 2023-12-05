% Función para la obtención de los datos para el caso donde el 
% mantenimiento correctivo es constante.

function y=caso1(c1,c2M,b,lamb)
format long;
T = optimvar('T',1,'LowerBound',0,'Type','continuous');
type FuncionCoste;
tiempo=1:40;
coste = 1:40;

for M=1:40
    fun = fcn2optimexpr(@FuncionCoste,M,T,b,lamb,c1,c2M);
    prob = optimproblem('Objective', fun);
    x0.T = 0;
    [sol,fval]=solve(prob,x0);
    tiempo(M)=sol.T;
    coste(M)=fval;
    if(M>1)&&(coste(M)>coste(M-1))
        D = sprintf('Para M = %d, T = %d, P(SM<T)= %d, Media del ciclo = %d, coste = %d \n',M-1,tiempo(M-1),ProbSn(M-1,tiempo(M-1),b,lamb),MediaCiclo(M-1,tiempo(M-1),b,lamb),coste(M-1));
        fprintf(D)
        break
    elseif M==40
        D = sprintf('Para M = %d, T = %d, P(SM<T)= %d, Media del ciclo = %d, coste = %d \n',M,tiempo(M),ProbSn(M,tiempo(M),b,lamb),MediaCiclo(M,tiempo(M),b,lamb),coste(M));
        fprintf(D)
        F = sprintf('Ademas el coste óptimo de las políticas univariantes será: \n');
        [r,s]=OptimoT(c1,b,lamb);
        G = sprintf('T*=%d, Q(T*)=%d',r,s);
        fprintf(F)
        fprintf(G)
    end
        
end

    