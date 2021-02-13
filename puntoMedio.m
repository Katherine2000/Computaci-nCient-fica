function ans = puntoMedio(funcion, a, b)
    
    s = (b-a);
    l = feval(funcion,(a+b)/2);
    ans = s*l;   
end