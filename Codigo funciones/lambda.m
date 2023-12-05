function y=lambda(t,lamb)
        integrali =(t.*(t + 2))/2 ;
        y = lamb.*0.1.*(t+1).*exp(0.1.*integrali);
    end