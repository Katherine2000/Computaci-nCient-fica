function ans = diferenciasCentrada(funcion, x, h)
    
    evaluar111 = feval(funcion, x+h);
    evaluar222 = feval(funcion, x-h);
    
    ans = (evaluar111 - evaluar222) / (2*h);
    
end