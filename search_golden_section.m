function [y] = f(x)
  y = 3 * x^2 + 12 / x^3 - 5;
endfunction

function [] = golden_section(a, b, maxit, epsilon)
    tau = 0.618;
    for i = 1:maxit
        w1 = a + tau * (b - a);
        w2 = b - tau * (b - a);
        if(f(w1) < f(w2))
            a = w2;
        else
            b = w1;
        endif
        if(abs(b - a) < epsilon)
            break;
        endif
    endfor
    if(abs(b - a) > epsilon)
        printf("Se llegó al número máximo de iteraciones sin una solución óptima.\n")
    else
        printf("El intervalo va de %d a %d. Se realizaron %d operaciones para llegar al resultado.\n", a, b, i)
    endif
endfunction