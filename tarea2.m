pick=input("1.-Eleccion de juegos(b), 2.-Administracion Casino(c) \n");

if pick==1
    juego=input("Ingrese que jugara: 1.-Color(x2), 2.-Tipo(x6), 3.-Numero(x50) \n");
    jugadas=input("¿Cuantas veces jugara? \n");
    Valores=input("Valores: 1.-Aleatorio, 2.-Elegible FIJO \n");
    
    if juego==2
        %Juego de tipo
        suma=0;
        if Valores==1
            tipo=randi(4,jugadas,1);
        elseif Valores==2
            tipo=input("Tipo: 1.-Corazon, 2.-Diamante, 3.-Trebol, 4.-Pica \n");
        end
        Corazon=[1:1:13];
        Diamante=[14:1:26];
        Pica=[27:1:39];
        Trebol=[40:1:52];
        resultado=randi(52,jugadas,1);
        %Comprobacion de que color es el numero
        esCorazon=ismember(resultado,Corazon);
        esDiamante=ismember(resultado,Diamante);
        esTrebol=ismember(resultado,Trebol);
        esPica=ismember(resultado,Pica);
        %Gana o pierde
        if Valores==1
            for i=1:jugadas
                if tipo(i)==1
                    win=esCorazon(i);
                elseif tipo(i)==2
                    win=esDiamante(i);
                elseif tipo(i)==3
                    win=esTrebol(i);
                elseif tipo(i)==4
                    win=esPica(i);
                end
                if win==1
                    suma=suma+1;
                end
            end
        elseif Valores==2
            for i=1:jugadas
                if tipo==1
                    win=esCorazon(i);
                elseif tipo==2
                    win=esDiamante(i);
                elseif tipo==3
                    win=esTrebol(i);
                elseif tipo==4
                    win=esPica(i);
                end
                if win==1
                    suma=suma+1;
                end
            end
        end
        exito=suma/jugadas;
        fracaso=1-(suma/jugadas);
        esperanza=jugadas*exito;
        varianza=esperanza*fracaso;
        desviacion=sqrt(varianza);
        fprintf(['En %d jugadas en tipo:\n',...
            'Ganaste %d veces\n'],...
            jugadas,suma)
        fprintf(['La esperanza es %d \n' ...
            'La varianza es %d \n' ...
            'La desviacion es %d \n'], ...
            esperanza,varianza,desviacion)
    elseif juego==1
        %Juego de colores
        suma=0;
        if Valores==1
            color=randi(2,jugadas,1);
        elseif Valores==2
            color=input("Seleccione color: 1.-Rojo, 2.-Negro \n")
        end
        Rojo=[1:2:51];
        Negro=[2:2:52];
        resultado=randi(52,jugadas,1);
        %Comprobacion de que color es el numero
        esRojo=ismember(resultado,Rojo);
        esNegro=ismember(resultado,Negro);
        %Gana o pierde
        if Valores==1
            for i=1:jugadas
                if color(i)==1
                    win=esRojo(i);
                elseif color(i)==2
                    win=esNegro(i);
                end
                if win==1
                    suma=suma+1;
                end
            end
        elseif Valores==2
            for i=1:jugadas
                if color==1
                    win=esRojo(i);
                elseif color==2
                    win=esNegro(i);
                end
                if win==1
                    suma=suma+1;
                end
            end
        end
        exito=suma/jugadas;
        fracaso=1-(suma/jugadas);
        esperanza=jugadas*exito;
        varianza=esperanza*fracaso;
        desviacion=sqrt(varianza);
        fprintf(['En %d jugadas en color:\n',...
            'Ganaste %d veces\n'],...
            jugadas,suma)
        fprintf(['La esperanza es %d \n' ...
            'La varianza es %d \n' ...
            'La desviacion es %d \n'], ...
            esperanza,varianza,desviacion)
    
    elseif juego==3
        %Juego de numero
        suma=0;
        if Valores==1
            num=randi(52,jugadas,1);
        elseif Valores==2
            num=input("¿A que numero apuestas? (1-52) \n");
        end
        resultado=randi(52,jugadas,1);
        %Gana o pierde
        if Valores==1
            for i=1:jugadas
                if num(i)==resultado(i)
                    win=1;
                    suma=suma+1;
                end
            end
        elseif Valores==2
            for i=1:jugadas
                if num==resultado(i)
                    win=1;
                    suma=suma+1;
                end
            end
        end
        
        
        fprintf(['En %d jugadas en carta unica:\n',...
            'Ganaste %d veces \n'],...
            jugadas,suma)
        exito=suma/jugadas;
        fracaso=1-(suma/jugadas);
        esperanza=jugadas*exito;
        varianza=esperanza*fracaso;
        desviacion=sqrt(varianza);
        fprintf(['La esperanza es %d \n' ...
            'La varianza es %d \n' ...
            'La desviacion es %d \n'], ...
            esperanza,varianza,desviacion)
    end
else
    %Parte C
    juego=0;
    jugadas=0;
    dinerocasino=0;
    ganadas=0;
    juego1=0;
    juego2=0;
    juego3=0;
    diario=input("Personas que entran diariamente: \n");
    meses=input("Por cuantos meses: \n");
    jugadas=diario;
    %Matriz de datos (Ganadas por dia, Ganancias, Juegos)
    dias1 = zeros(meses*10,2);
    dias2 = zeros(meses*10,2);
    dias3 = zeros(meses*10,2);
    %Por cada juego
    for juego=1:3
        %Un mes son 30 dias
        for dia=1:meses*30
            %las jugadas
            dinerodiario=0;
            ganadas=0;
            if juego==2
                %Juego de tipo
                suma=0;
                tipo=randi(4,jugadas,1);
                Corazon=[1:1:13];
                Diamante=[14:1:26];
                Pica=[27:1:39];
                Trebol=[40:1:52];
                resultado=randi(52,jugadas,1);
                %Comprobacion de que color es el numero
                esCorazon=ismember(resultado,Corazon);
                esDiamante=ismember(resultado,Diamante);
                esTrebol=ismember(resultado,Trebol);
                esPica=ismember(resultado,Pica);
                %Gana o pierde
                for i=1:jugadas
                    apuesta=randi([50 1500],1,1);
                    dinerocasino=dinerocasino+apuesta;
                    dinerodiario=dinerodiario+apuesta;
                    if tipo(i)==1
                        win=esCorazon(i);
                    elseif tipo(i)==2
                        win=esDiamante(i);
                    elseif tipo(i)==3
                        win=esTrebol(i);
                    elseif tipo(i)==4
                        win=esPica(i);
                    end
                    if win==1
                        juego2=juego2+1;
                        dinerocasino=dinerocasino-apuesta*6;
                        dinerodiario=dinerodiario-apuesta*6;
                        ganadas=ganadas+1;
                    end
                end
                dias2(dia,1)=ganadas;
                dias2(dia,2)=dinerodiario;
            elseif juego==1
                %Juego de colores
                suma=0;
                color=randi(2,jugadas,1);
                Rojo=[1:2:51];
                Negro=[2:2:52];
                resultado=randi(52,jugadas,1);
                %Comprobacion de que color es el numero
                esRojo=ismember(resultado,Rojo);
                esNegro=ismember(resultado,Negro);
                %Gana o pierde
                for i=1:jugadas
                    apuesta=randi([50 1500],1,1);
                    dinerocasino=dinerocasino+apuesta;
                    dinerodiario=dinerodiario+apuesta;
                    if color(i)==1
                        win=esRojo(i);
                    elseif color(i)==2
                        win=esNegro(i);
                    end
                    if win==1
                        juego1=juego1+1;
                        dinerocasino=dinerocasino-apuesta*2;
                        dinerodiario=dinerodiario-apuesta*2;
                        ganadas=ganadas+1;
                    end
                end
                dias1(dia,1)=ganadas;
                dias1(dia,2)=dinerodiario;
            elseif juego==3
                %Juego de numero
                suma=0;
                num=randi(52,jugadas,1);
                resultado=randi(52,jugadas,1);
                %Gana o pierde
                for i=1:jugadas
                    apuesta=randi([50 1500],1,1);
                    dinerocasino=dinerocasino+apuesta;
                    dinerodiario=dinerodiario+apuesta;
                    if num(i)==resultado(i)
                        juego3=juego3+1;
                        dinerocasino=dinerocasino-apuesta*50;
                        dinerodiario=dinerodiario-apuesta*50;
                        ganadas=ganadas+1;
                    end
                end
                dias3(dia,1)=ganadas;
                dias3(dia,2)=dinerodiario;
            end
        end
    end
    ganadas=juego1+juego2+juego3;
    jugadas=diario*meses*10;
    fprintf(['En el juego de colores se gano %d veces, y se perdio %d veces.\n',...
            'En el juego de tipo se gano %d veces, y se perdio %d veces. \n' ...
            'En el juego de numero se gano %d veces, y se perdio %d veces. \n' ...
            'En total se ganaron %d veces y se perdieron %d veces \n' ...
            'El Casino actualmente tiene una recaudacion de %d \n'],...
            juego1,jugadas-juego1,juego2,jugadas-juego2,juego3,jugadas-juego3,ganadas,jugadas*3-ganadas,dinerocasino)
end
