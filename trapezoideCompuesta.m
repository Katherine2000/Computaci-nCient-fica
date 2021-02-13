function ans = trapezoideCompuesta(funcion, a, b, cantidadPuntos)
    
    a1 = 1/2;
    incremento = (b - a)/(cantidadPuntos-1);
    resul = (a - 0) * (feval(funcion, 0) + feval(funcion, a));
    elem = a;
    
    for i = 2: cantidadPuntos
        resul = resul + (((elem + incremento) - elem) * (feval(funcion, elem) + feval(funcion, elem + incremento)));
        elem = elem + incremento;
    end
    
    ans = a1 * resul;
end