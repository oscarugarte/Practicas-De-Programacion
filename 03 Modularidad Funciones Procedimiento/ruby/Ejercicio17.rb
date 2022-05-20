=begin
Codifique un programa modular que presente un menú con las siguientes opciones: 
1) Ingresar 4 valores distintos, 2) Ordenar (de forma decreciente) los 4 valores, y 
3) Calcular el factorial del mayor valor, y 4) Salir, que presente el mensaje “Fin de programa”. 
Considere que la opción 2 solo está disponible si la opción 1 se ejecutó antes y que la opción 3 
solo se habilita si antes se ejecutó la opción 2. Cada opción debe implementarse mediante procedimientos y/o funciones.

Como en ruby los valores se pasan por valor usaremos arreglos para
simular el pasaje por referencia    
=end
#Se encarga de sacar el factorial
def factorial(numero)
    resultado = 1
    puts "Numero: #{numero[0]}"
    for i in (1 .. numero[0] )
        resultado = resultado * i
    end 
    return resultado  
end    

#Recibe un numero y un arreglo de numeros. Revisa que el numero no se repita.
def comprobarRepetido( numero, numeros )
    repetido = false
    numeros.each do |elemento|
        if elemento == numero[0]
            return true
        end  
    end
    return repetido;
end  

#Aqui se ingresan los numeros y se controla que no se repitan.
def ingresarNumeros(primero, segundo, tercero, cuarto)
    print "Ingrese el primer numero: "
    primero[0] = gets.chomp.to_i
    loop do
        print "Ingrese el segundo numero que no se repita: "
        segundo[0] = gets.chomp.to_i
        if !comprobarRepetido( segundo, [ primero[0] ] )
            break
        end    
    end
    loop do
        print "Ingrese el tercer numero que no se repita: "
        tercero[0] = gets.chomp.to_i
        if !comprobarRepetido( tercero, [ primero[0], segundo[0] ] )
            break
        end    
    end
    loop do
        print "Ingrese el cuarto numero que no se repita: "
        cuarto[0]  = gets.chomp.to_i
        if !comprobarRepetido( cuarto, [ primero[0], segundo[0],  tercero[0] ] )
            break
        end    
    end            
end

#Recibe los 4 numeros y los ordena de menor a mayor
def ordenarNumeros(primero, segundo, tercero, cuarto)
    numeros = [primero[0], segundo[0], tercero[0], cuarto[0] ]
    numeros = numeros.sort
    primero[0] = numeros[0]
    segundo[0] = numeros[1]
    tercero[0] = numeros[2]
    cuarto[0] =  numeros[3]
end

def mostrarNumerosOrdenadosDecrecientemente(primero, segundo, tercero, cuarto)
    puts "#{cuarto[0]} - #{tercero[0]} - #{segundo[0]} - #{primero[0]}"
end

def mostrarMenu()
    puts "**** Menu ****"
    puts "1) Ingresar 4 valores distintos."
    puts "2) Ordenar de forma decreciente."
    puts "3) Calcular el factorial del mayor."
    puts "4) Salir del programa."
end

def ingresarOpcion()
    print "Ingrese una opcion: "
    return gets.chomp.to_i
end    

primero = [0]
segundo = [0]
tercero = [0]
cuarto = [0]
opcion = 0
opcion1 = false;
opcion2 = false;
until opcion == 4 do
    mostrarMenu()
    opcion = ingresarOpcion()
    case opcion
        when 1
            opcion1 = true
            ingresarNumeros(primero, segundo, tercero, cuarto)
        when 2
            if opcion1
                opcion2 = true
                ordenarNumeros(primero, segundo, tercero, cuarto)
                mostrarNumerosOrdenadosDecrecientemente(primero, segundo, tercero, cuarto)
            else    
                puts "Ingrese primero por la opcion 1."
            end
        when 3
            if opcion2
                puts "El factorial del mayor #{ cuarto[0] } es #{ factorial( cuarto ) } "
            else
                puts "Ingrese primero por la opcion 2."
            end
        when 4
            puts "Salir del programa."
        else
            puts "Opcion invalida."    
    end    
end