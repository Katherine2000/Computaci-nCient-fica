function simpson(funcion, a, b)
    a1 = (b - a)/6;
    a2 = feval(funcion, a);
    a3 = feval(funcion, (a+b)/2);
    a4 = feval(funcion, b);
    
    ans = a1 * (a2 + 4*a3 + a4)
end