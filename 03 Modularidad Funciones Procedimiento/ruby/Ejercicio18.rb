=begin
    Codifique un programa modular que presente un menú con las siguientes opciones: 
    1) Determinar el máximo y mínimo de 10 valores ingresados por el usuario, 
    2) Calcular el cociente (mediante restas) entre los valores máximo y mínimo, y 
    3) Salir, que presente el mensaje “Fin de programa”. 
    Considere que en la opción 1 se debe controlar que solo se tengan en cuenta valores positivos. 
    Además, adicione los controles necesarios para que la opción 2 solo está disponible si la opción 1 se ejecutó antes. 
    Cada opción debe implementarse mediante procedimientos y/o funciones.

    Como en ruby los valores se pasan por valor usaremos arreglos para
    simular el pasaje por referencia   
=end

#Se encarga de dividir por medio de restas sucesivas
def dividirPorRestasSucesivas( dividendo, divisor )
    cociente = 0;
    while dividendo >= divisor
        dividendo -= divisor
        cociente += 1
    end    
    return cociente
end 

def ingresoDeNumeros(maximo, minimo)
    i = 1
    until i == 11 do
        print "ingrese un numero positivo: "
        numero = gets.chomp.to_i
        if( numero > 0)
            i += 1
            if maximo[0] == 0 and minimo[0] == 0
                maximo[0] = numero
                minimo[0] = numero
            else    
                if numero < minimo[0]
                    minimo[0] = numero
                else    
                    if numero > maximo[0]
                        maximo[0] = numero
                    end
                end
            end  
        end
    end
end

def mostrarMenu()
    puts "**** M E N U ****"
    puts "1) Determinar el máximo y mínimo de 10 valores ingresados por el usuario,"
    puts "2) Calcular el cociente (mediante restas) entre los valores máximo y mínimo."
    puts "3) Salir del programa."
end

def ingresarOpcion()
    print "Ingrese una opcion: "
    return gets.chomp.to_i
end    

opcion = 0
ingresado1 = false
until opcion == 3 do
    mostrarMenu()
    opcion = ingresarOpcion()
    case opcion
        when 1
            ingresado1 = true
            maximo = [0]
            minimo = [0]
            ingresoDeNumeros(maximo, minimo)
        when 2
            if ingresado1 == true
                puts "Resultado de dividir #{maximo[0]} con #{minimo[0]} es #{ dividirPorRestasSucesivas( maximo[0], minimo[0] ) }."
            else
                puts "Ingrese primero por la opcion 1." 
            end
        when 3
            puts "Fin de programa."    
        else
            puts "Opcion invalida."   
    end
end