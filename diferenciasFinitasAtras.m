function ans = diferenciasFinitasAtras(funcion, x, h)
    
    evaluar11 = feval(funcion, x);
    evaluar22 = feval(funcion, x-h);
    
    
    ans = (evaluar11 - evaluar22)/h;   
end