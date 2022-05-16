=begin
3. Codifique la función POTENCIA implementada mediante productos sucesivos. 
Suponga que la base y el exponente son ingresados en el programa principal. 
Indique el pasaje de parámetros utilizado.
=end

#Calcula la potencia mediante productos sucesivos.
def POTENCIA(base, exponente)
	resultado = 1
	for i in (1..exponente)
		resultado = resultado * base
	end
	return resultado
end

print"Ingrese la base de la potencia: "
base = gets.chomp.to_i
print"Ingrese el exponente de la potencia: "
exponente = gets.chomp.to_i 
puts "El resultado de la potencia es #{ POTENCIA(base, exponente) }."
