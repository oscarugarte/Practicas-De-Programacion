=begin
    Diseñe un algoritmo modular que calcule el COCIENTE y RESTO de la división entera 
    de 2 números ingresados por el usuario. En su diseño utilice, únicamente, 
    procedimientos. Considere las posibles situaciones de error. 
=end

def comprobarResolucion(dividendo, divisor, mensaje, posible)
    posible[0] = true;
    if( divisor[0] == 0 )
        posible[0] = false
        mensaje[0] = "Division por cero."
    else    
        if( divisor[0] > dividendo[0])
            mensaje[0] = "El divisor es mayor al dividendo. Se puede calcular el resto (valor del dividendo) pero no el cociente."
            posible[0] = false
        else
            mensaje[0] = "La division es posible."
        end    
    end
end

def calcularResto(dividendo, divisor, resto)
    while(dividendo >= divisor )
        dividendo -= divisor
    end   
    resto[0] = dividendo
end

def calcularCociente(dividendo, divisor, cociente)
    resultado = 0
    while(dividendo >= divisor )
        dividendo -= divisor
        resultado +=1
    end       
    cociente[0] = resultado
end    

def ingresarNumeros(dividendo, divisor)
    print "Ingrese el dividendo: "
    dividendo[0] = gets.chomp.to_i
    print "Ingrese el divisor: "
    divisor[0] = gets.chomp.to_i
end

dividendo = [0]
divisor = [0]
cociente =[0]
resto =[0]
posible = [true]
mensaje = [""]

ingresarNumeros(dividendo, divisor)
comprobarResolucion(dividendo, divisor, mensaje, posible)
if posible[0] == true
    calcularResto(dividendo[0], divisor[0], resto)
    calcularCociente(dividendo[0], divisor[0], cociente)
    puts "Cociente de #{dividendo[0]} / #{divisor[0]} = #{cociente[0]} "
    puts "Resto de #{dividendo[0]} % #{divisor[0]} = #{resto[0]}"
else
    puts "#{mensaje[0]}"
end

