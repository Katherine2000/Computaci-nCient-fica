function ans = puntoMedioCompuesta(funcion, a, b, cantidadNumeros)
    
    incremento = (b - a)/(cantidadNumeros-1);
    resul = (a - 0) * feval(funcion,(0 + a) / 2);
    elem = a;
    
    for i = 2 : cantidadNumeros
         resul = resul + (((elem + incremento) - (elem)) * feval(funcion, (elem + (elem + incremento)) / 2));
         
         elem = elem + incremento;
    end 
    
    ans = resul;    
end