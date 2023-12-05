
    function y = MediaCoste(M,T,b,lamb,c1,c2M)
        c2T=1;
        sum1 = 0;
        sum2 = 0;
        for k=0:(M-1)
            sum1= (M-1-k).*Probabilidad(k,T,b,lamb) + sum1;
        end
        for k=0:(M-1)
            sum2 = Probabilidad(k,T,b,lamb) + sum2;
        end
        y=c1.*(M-1-sum1)+c2M+(c2T-c2M).*sum2;
    end
    