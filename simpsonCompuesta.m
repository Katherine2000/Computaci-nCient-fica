function ans = simpsonCompuesta(funcion, a, b, cantidadPuntos)
    
    a1 = 1/6;
    incremento = (b - a)/(cantidadPuntos-1);
    resul = (a - 0) * (feval(funcion, 0) + 4*feval(funcion,((0+a) / 2)) + feval(funcion, a));
    elem = a;
    
    
    for i = 2: cantidadPuntos
        resul = resul + (((elem + incremento) - elem) * (feval(funcion, elem) + 4*feval(funcion,((elem + (elem+incremento)) / 2)) + feval(funcion, elem+incremento)));
        elem = elem + incremento;
    end
    
    
    ans = a1 * resul;
    
end