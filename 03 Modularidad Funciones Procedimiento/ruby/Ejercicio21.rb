=begin
    Diseñe un algoritmo modular PIRAMIDE, que permita con el uso de un menú: 
    a) ingresar altura, generatriz y radio, b) calcular la superficie y volumen 
    del cono y c) mostrar los resultados obtenidos. Indique el paso de 
    parámetros utilizado.

    Fuente:    https://www.unprofesor.com/matematicas/como-sacar-el-area-y-volumen-del-cono-5231.html

    Como en ruby los valores se pasan por valor usaremos arreglos para
    simular el pasaje por referencia   
=end

def ingresarNumeros(altura, generatriz, radio)
    print "Ingrese la altura: "
    altura[0] = gets.chomp.to_i
    print "Ingresar generatriz: "
    generatriz[0] = gets.chomp.to_i
    print "Ingresar radio: "
    radio[0] = gets.chomp.to_i
end


def calcularSuperficieCono(generatriz, radio)
    return 3.14 * (radio[0] * radio[0]) + 3.14 * radio[0] * generatriz[0]
end

def calcularVolumenCono(altura, radio)
    return ( 3.14 * (radio[0]*radio[0]) * altura[0] ) / 3
end

def menu() 
    puts "1) Ingresar altura, generatriz y radio"
    puts "2) Calcular la superficie y volumen del cono."
    puts "3) Mostrar resultados obtenidos."
    puts "0) Salir del programa."
end

def ingresarOpcion()
    print "Ingrese una opcion: "
    return gets.chomp.to_i
end    

def piramide()
    altura = [0.0]
    generatriz = [0.0]
    radio = [0.0]
    opcion = 1 
    superficie = 0.0
    volumen = 0.0
    cargados = false
    while(opcion != 0)
        menu();
        opcion = ingresarOpcion();
        case opcion
            when 0
                puts "Saliendo del programa"
            when 1
                ingresarNumeros(altura, generatriz, radio)
                cargados = true;
            when 2
                if(cargados)
                    superficie = calcularSuperficieCono(generatriz, radio)
                    volumen = calcularVolumenCono(altura, radio)
                else
                    puts "Los valores no estan cargados."
                end
            when 3
                if( superficie != 0.0 && volumen != 0.0 )
                    puts "Superficie del cono: #{superficie} ."
                    puts "Volumen del cono: #{volumen} ."
                else
                    puts "Ingrese por la opcion 2 primero."
                end
            else
                puts "Opcion invalida."
        end
        puts ""
    end
end

piramide()
=begin
altura = [0.0]
generatriz = [0.0]
radio = [0.0]
ingresarNumeros(altura, generatriz, radio)
puts "Superficie del cono: #{calcularSuperficieCono(generatriz, radio)} ."
puts "Volumen del cono: #{calcularVolumenCono(altura, radio)} ."
=end