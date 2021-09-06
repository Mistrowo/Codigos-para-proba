%Inicializamos el arreglo
n=[9462 6205 5417 9334 6448 7786 5045 6282 9963 6857 5297 8611 7813 6165 9518 6545 7561 8396 7341 9065 6730 8740 6138 8712 6251 5875 5361 9035 6833 6514 9293 6263 8061 8389 9922 9930 6175 6064 5655 7755 6455 7449 9464 7055 9283 6694 8009 8350 9693 6361 8369 6308 6322 8055 6394 6832 9740 6820 5959 8797 9766 9348 7543 5439 9479 6067 5119 8005 6762 6472 6279 9908 5853 9947 8672 7216 7353 7592 6717 6686 5649 9042 6062 6964 5846 6734 5967 7040 6211 6186 9011 7385 5171 8357 9706 7118 8644 5967 7822 8376]
%Creamos un arreglo de menor a mayor
array = sort(n)

%En este caso el primer dato seria el menor y el mayor el ultimo
disp(array(1))%Menor
disp(array(100))%Mayor

%El rango es el mayor menos el menor
disp(array(100)-array(1))

%La moda consta de la siguiente funcion SOLO para el caso de un array ordenado
repetido = 1
mayor = -1
largo = numel(array)

for i = 1:largo-1
    if(array(i) == array(i+1))
        repetido = repetido + 1
    else
        if(repetido > mayor)
            mayor = repetido
            moda = array(i)
        end
        repetido = 1
    end
end

if(repetido > mayor)
    mayor = repetido
    moda = b(i)
end

disp(moda)

%La mediana se saca a partir de la siguiente funcion
mitad = largo / 2;
modulo = mod(largo,2)
%Si la longitud es par, se deben promediar los del centro
if (modulo == 0)
    mediana = (array(mitad + 1) + array(mitad)) / 2
else
    mediana = array(mitad)
end

disp(mediana)

%El promedio consta de la siguiente funcion
suma = 0
for i = 1:largo
    suma = array(i) + suma
end

promedio = suma/largo

disp(promedio)

%La varianza
suma = 0
for i = 1:largo
    suma = (array(i)-promedio).^2 + suma
end

varianza = suma/largo

disp(varianza)

%La desviacion es
desv = sqrt(varianza)

disp(desv)

histogram(array)
