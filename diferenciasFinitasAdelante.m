function ans = diferenciasFinitasAdelante(funcion, x, h)
    
    evaluar1 = feval(funcion, x+h);
    evaluar2 = feval(funcion, x);
   
 
    ans = (evaluar1 - evaluar2) / h;
end