=begin
10.  Codifique un módulo, llamado FACTORIAL, que implemente el cálculo utilizando estructuras REPETIR y el criterio de 
finalización por BANDERA. Suponga que el valor a utilizar en el cálculo es ingresado en el programa principal. 
Indique el pasaje de parámetros utilizado.
=end

def FACTORIAL( numero )
	factorial = 1
	i = 1
	bandera = true
	loop do
		factorial = factorial * i
		i+=1
		bandera = i > numero ? false : true #Operador ternario para simplificar el if
		if bandera == false
			break
		end
	end
	return factorial
end
print "Ingrese un numero para calcular su factorial: "
numero = gets.chomp.to_i
puts "Resultado del factorial #{ FACTORIAL(numero) } ."
