 function y = ProbSn(M,T,b,lamb)
        integrand = @(z,x) z.^M.*Lambda2(x,lamb).^(M-1)/factorial(M-1).*lambda(x,lamb).*exp(-z.*Lambda2(x,lamb)).*fpi(z,1,b);
        y = integral2(integrand,0,Inf,0,T);
    end
        