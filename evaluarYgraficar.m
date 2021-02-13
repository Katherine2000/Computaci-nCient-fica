function evaluarYgraficar(derivada, funcion, h, cantidadPuntos, limiteInfe, limiteSupe)
        
    t = linspace(limiteInfe,limiteSupe,cantidadPuntos);
    y = derivada;
    l = zeros(1, cantidadPuntos);
    k = zeros(1, cantidadPuntos);
    error = zeros(1, cantidadPuntos);
    title('La función y su derivada')
    grid on
    
    xlabel('Valores evaluados')
    ylabel('Resultado derivada')
    errorPromedio = 0;
    z = 0;
    for i=1:length(t)
        z = diferenciasFinitasAdelante(funcion,t(i),h); 
        y = derivada(t(i));
        error(i) = abs(y - z);
        errorPromedio = errorPromedio + abs(y-z);
        k(i) = y;
        l(i) = z;
    end
    
    errorPromedio = errorPromedio/length(t)
    hold on
    plot(t,k,'r');
    hold on
    plot(t,l,'b');
    hold off
    disp('puntos')
    disp(t)
    disp('valoresReales')
    disp(k);
    disp('valoresAproximados')
    disp(l);
    disp('ErrorPuntoPunto')
    disp(error);
        
end