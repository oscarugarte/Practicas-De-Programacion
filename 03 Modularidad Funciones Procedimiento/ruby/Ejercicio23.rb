=begin
Escriba un programa modular que permita presentar un menú con las siguientes opciones: 
1) Determinar los valores máximo y mínimo de una serie de números, 
2) Calcular el cociente entre máximo y mínimo, 
3) Determinar si máximo y mínimo son primos, y 
4) Salir. 
Cada opción debe implementarse utilizando procedimientos y
funciones, indicando el pasaje de parámetros empleado.

Como en ruby los valores se pasan por valor usaremos arreglos para
simular el pasaje por referencia   
=end

def menu() 
    puts "1) Determinar los valores máximo y mínimo de una serie de números"
    puts "2) Calcular el cociente entre máximo y mínimo"
    puts "3) Determinar si máximo y mínimo son primos."
    puts "4) Salir del programa."
end

def ingresarOpcion()
    print "Ingrese una opcion: "
    return gets.chomp.to_i
end    


def esPrimo( num) 
    esprimo = true
    i=2
    while( i < num && esprimo)
        if (num % i == 0)
            esprimo = false
        else
            i+=1
        end
    end    
    return esprimo
end

def calcularCociente(maximo, minimo)
    return maximo[0] / minimo[0]
end

def ingresarNumeros(maximo, minimo)
    respuesta = 's'
    numero = 0
    while( respuesta == 's' || respuesta == 'S'  )
        print "Ingrese un numero: "
        numero = gets.chomp.to_i
        if( maximo[0] == 0 && minimo[0] == 0 )
            maximo[0] = numero
            minimo[0] = numero
        else
            if( numero > maximo[0])
                maximo[0] = numero
            else
                if( numero < minimo[0] )
                    minimo[0] = numero
            end
        end
    end
    print"Ingresar mas numeros (S/N): "
    respuesta = gets.chomp
    end
end

maximo = [0]
minimo = [0]
opcion = 1
while(opcion != 4)
    menu()
    opcion = ingresarOpcion()
    case opcion
        when 1
            ingresarNumeros(maximo, minimo)
            puts "El maximo: #{maximo[0]} y minimo: #{minimo[0]} "
        when 2
            puts "El conciente entre el maximo: #{maximo[0]} y minimo: #{minimo[0]} es: #{calcularCociente(maximo, minimo)}"
        when 3
            if( maximo[0] > 0)
                if( esPrimo( maximo[0]) )
                    puts("#{maximo[0]} es primo.")
                else
                    puts("#{maximo[0]} no es primo.")
                end
            else
                puts "El maximo es 0 o negativo."
            end
            if(minimo[0] > 0 )
                if( esPrimo( minimo[0]) )
                    puts("#{minimo[0]} es primo.")
                else
                    puts("#{minimo[0]} no es primo.")
                end            
            else
                puts "El minimo es 0 o negativo."
            end
        when 4
            puts"Saliendo del programa."
        else
            puts"Opcion invalida."
    end
    puts()
end 