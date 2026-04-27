clc;
fprintf('=== CIFRADO SIMPLE CON NUMEROS PRIMOS ===\n');

p = input('Ingrese un numero primo: ');
q = input('Ingrese otro numero primo: ');

if p <= 1 || q <= 1
    disp('Debe ingresar numeros mayores que 1');
else

    % Verificar si p es primo
    primo1 = 1;
    for i = 2:p-1
        if mod(p,i) == 0
            primo1 = 0;
        end
    end

    % Verificar si q es primo
    primo2 = 1;
    for i = 2:q-1
        if mod(q,i) == 0
            primo2 = 0;
        end
    end

    if primo1 == 1 && primo2 == 1

        n = p * q;
        fprintf('Clave generada (n) = %d\n', n);

        m = input('Ingrese un numero a cifrar: ');

        % VALIDACION IMPORTANTE
        if m >= n
            fprintf('El numero a cifrar debe ser menor que %d\n', n);
        else
            c = mod(m, n);
            fprintf('Mensaje cifrado: %d\n', c);
        end

    else
        disp('Ambos numeros deben ser primos');
    end
end