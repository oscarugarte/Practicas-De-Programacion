=begin
    Escriba un algoritmo modular CUADRATICA, que presente un menú con las siguientes opciones: 
    1) Ingresar los coeficientes de una ecuación cuadrática, 
    2) Determinar las raíces de la ecuación cuadrática, 
    3) Ordenar (ascendente) los coeficientes por intercambio y 
    4) Salir del Programa. Considere que cada opción 2(se implementa mediante módulos. 
    Indique cómo se pasan los parámetros.

https://www.disfrutalasmatematicas.com/algebra/ecuaciones-cuadraticas.html

    Como en ruby los valores se pasan por valor usaremos arreglos para
    simular el pasaje por referencia   
=end

def menu() 
    puts "1) Ingresar los coeficientes de una ecuación cuadrática,"
    puts "2) Determinar las raíces de la ecuación cuadrática"
    puts "3) Ordenar (ascendente) los coeficientes por intercambio."
    puts "0) Salir del programa."
end

def ingresarOpcion()
    print "Ingrese una opcion: "
    return gets.chomp.to_i
end    

def ingresarCoeficientes(a,b,c)
    print "Ingrese el valor de a: "
    a[0] = gets.chomp.to_i
    print "Ingrese el valor de b: "
    b[0] = gets.chomp.to_i
    print "Ingrese el valor de c: "
    c[0] = gets.chomp.to_i
end

def intercambio(num1, num2 )
    aux = num1[0]
    num1[0] = num2[0]
    num2[0] = aux
end

def ordenarAscendentemente(a,b,c) 
    if( c[0] < a[0])
        intercambio(a, c)
    end    
    if(a[0] > b[0])
        intercambio(b, a)
    end    
    if(b[0] > c[0])
        intercambio(b, c)
    end    
    puts" #{a[0]} - #{b[0]} - #{c[0]} "
end

def cuadratica()
    a = [0]
    b = [0]
    c = [0]
    raiz = 0.0
    x1 = 0.0
    x2 = 0.0
    opcion = 1
    while (opcion != 0)
        menu()
        opcion = ingresarOpcion()
        case opcion
            when 0
                puts "Saliendo del programa: "
            when 1
            ingresarCoeficientes(a,b,c)
            when 2
                if( a[0] != 0 )
                    raiz = Math.sqrt( (b[0] * b[0]) - 4 * a[0] * c[0] )
                    puts "La raiz es #{ raiz} ." 
                    x1 = ((b[0] * -1 ) + raiz ) / (2*a[0])
                    x2 = ((b[0] * -1 ) - raiz ) / (2*a[0])
                    puts "Las raices valen + = #{x1} y - = #{x2} ."
                else
                    puts "Error. Division por cero."
                end
            when 3
                ordenarAscendentemente(a,b,c)
            else
                puts "Opcion invalida."
        end
    end
end
cuadratica()
