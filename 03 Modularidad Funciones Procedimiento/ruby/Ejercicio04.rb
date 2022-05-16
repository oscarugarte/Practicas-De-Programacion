=begin
4. Considerando que la división entera entre 2 números enteros positivos puede 
realizarse mediante restas sucesivas, codifique la función RESTO que calcule 
el módulo de la división entera entre 2 números ingresados por el usuario. 
Considere que el dividendo y el divisor son ingresados en el programa principal. 
Indique el pasaje de parámetros utilizado.
=end
#Calcula el resto de una division mediante resta sucesivas.
def RESTO(dividendo, divisor)
	while dividendo >= divisor
		dividendo = dividendo - divisor
	end
	return dividendo
end


print "Ingrese el dividendo: "
dividendo = gets.chomp.to_i
print "Ingrese el divisor: "
divisor = gets.chomp.to_i
if dividendo >= divisor
	puts "El resto de la division entre #{dividendo} y #{divisor} es #{RESTO(dividendo, divisor)} ."
else
	puts"El divisor es mayor al dividendo."
end
