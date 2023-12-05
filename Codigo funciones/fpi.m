   function y=fpi(t,a,b)
        y = (a.^b.*t.^(b-1).*exp(-a.*t))/gamma(b);
    end
