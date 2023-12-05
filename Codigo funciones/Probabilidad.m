function y = Probabilidad(n,t,b,lamb)
        integrand = @(z) (z.*Lambda2(t,lamb)).^n/factorial(n).*exp(-z.*Lambda2(t,lamb)).*fpi(z,1,b);
        y = integral(integrand,0,Inf);
    end
