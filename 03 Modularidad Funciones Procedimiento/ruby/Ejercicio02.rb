=begin
2. Codifique la función PRIMO que determine si un valor ingresado por el usuario es primo o no.
Suponga que el valor de entrada es ingresado en el programa principal. Indique el pasaje de parámetros utilizado.
=end

#Determina si un numero es primo o no.
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

print "Ingrese un numero para comprobar si es primo o no :"
numero = gets.chomp.to_i
if numero >= 1
	if PRIMO(numero)
		puts "Es primo."
	else
		puts "No es primo."
	end
else
	puts "Ingreso 0 o un numero negativo."
end
