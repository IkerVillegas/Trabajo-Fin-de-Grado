  function y = MediaCiclo(M,T,b,lamb)
        sum=0;
        for k=0:(M-1)
        sum = integral2(@(z,t) (z.*Lambda2(t,lamb)).^k/factorial(k).*exp(-z.*Lambda2(t,lamb)).*fpi(z,1,b),0,Inf,0,T)+sum;
        end
        y = sum;
    end