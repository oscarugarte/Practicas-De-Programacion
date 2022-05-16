=begin
8. Codifique un algoritmo modular MOSTRAR_CADENA que visualice N veces una 
cadena introducida por el usuario. Considere que la cadena y el número de veces que 
se visualizará se indican en el programa principal. Indique el pasaje de parámetros utilizado.
=end
def MOSTRARCADENA(cadena, repeticiones)
	for i in (1..repeticiones)
		puts "#{cadena}"
	end
end

print "Ingrese la cadena a repetir: "
cadena = gets.chomp.to_s
print "Ingrese el numero de repeticiones: " 
repeticiones = gets.chomp.to_i
MOSTRARCADENA(cadena, repeticiones)
