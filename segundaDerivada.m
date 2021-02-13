function ans = segundaDerivada(funcion, x, h)
    a1 = feval(funcion, x+h);
    a2 = 2 * feval(funcion, x);
    a3 = feval(funcion, x-h);
    
    ans = (a1 - a2 + a3) / (h^2);
end