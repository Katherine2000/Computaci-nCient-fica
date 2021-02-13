function ans = trapezoide(funcion, a , b)
    a1 = (b-a)/2;
    a2 = feval(funcion, a);
    a3 = feval(funcion, b);
    
    ans = a1 * (a2 + a3);   
end