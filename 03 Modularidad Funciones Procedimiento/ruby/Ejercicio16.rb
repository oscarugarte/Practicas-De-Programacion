=begin
    16. Codifique un programa modular que, dada una serie de valores ingresada por el usuario, determine el máximo 
    y mínimo valor primo de la serie y calcule el resto del cociente entre el máximo y mínimo obtenidos. 
    Tenga en cuenta que el ingreso de datos finalizará a petición del usuario y que el cociente solo podrá calcularse 
    si se obtuvieron los valores para el dividendo y divisor.

    Como en ruby los valores se pasan por valor usaremos arreglos para
    simular el pasaje por referencia    
=end

def PRIMO( numero)
	primo = true
	i = 2
	while primo and i < numero
		if numero % i == 0
			primo = false
		else
			i = i + 1	
		end	
	end
	return primo
end

def compararEIntercambiarNumeros(numero, minimo, maximo)
    if(minimo[0] == 0 and maximo[0] == 0 )
        minimo[0] = maximo[0] = numero
    else
        if(numero < minimo[0])
            minimo[0] = numero
        else
            if(numero > maximo[0])
                maximo[0] = numero
            end    
        end
    end    
end 

def obtenerResto(minimo, maximo)
    return maximo[0] % minimo[0]
end
minimo = [0]
maximo = [0]
numero = 0
respuesta = 'S'
while respuesta == 'S'|| respuesta == 's'
    print "Ingrese un numero: "
    numero = gets.chomp.to_i
    if numero > 0
        if PRIMO(numero)
            compararEIntercambiarNumeros(numero, minimo, maximo)
        else
            puts "No es primo."
        end            
    end  
    print "Ingresar mas numero S/N: "
    respuesta = gets.chomp
end
if minimo[0] != 0 and maximo[0] != 0 and minimo[0] != maximo[0] 
    puts "El resto de #{ maximo[0] } con #{ minimo[0] } es #{ obtenerResto(minimo, maximo) } ."
else
    puts "No se ingresaron un minimo de 2 primos para calcular."
end    