=begin
5. Diseñe la función MCD que calcule el Máximo Común Divisor de 2 números
 ingresados por el usuario. Considere que los números son ingresados en 
 el programa principal. Indique el pasaje de parámetros utilizado.
=end

#Obtiene el menor de 2 numeros
def obtenerMenor(numero1, numero2)
	if numero1 < numero2
		return numero1
	else
		return numero2
	end
end

#Obtiene el mayor entre 2 numeros
def obtenerMayor(numero1, numero2)
	if numero1>numero2
		return numero1
	else
		return numero2
	end
end

def MCD(numeroMenor, numeroMayor)
	i = 1
	divisor = 0 #Se lo inicializa en 0.
	while i <= numeroMenor
		if numeroMenor % i == 0 and numeroMayor % i == 0
			divisor = i
		end
		i += 1
	end
	return divisor
end

print "Ingrese el primer numero: "
numero1 = gets.chomp.to_i
print "Ingrese el segundo multiplo."
numero2 = gets.chomp.to_i
puts "El Maximo comun divisor entre #{numero1} y #{numero2} es #{ MCD( obtenerMenor(numero1, numero2) , obtenerMayor(numero1, numero2) ) } ."
