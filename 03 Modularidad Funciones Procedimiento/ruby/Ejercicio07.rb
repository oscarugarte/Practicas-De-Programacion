=begin
7.  Codifique la función MINUSCULA que convierta una letra introducida por el usuario a su equivalente mayúscula. 
Suponga que el carácter de entrada es ingresado en el programa principal. Indique el pasaje de parámetros utilizado.
=end

def MINUSCULA( letra )
	return letra.upcase 
end

print "Ingrese una letra minuscula para convertir a mayuscula: "
letra = gets.chomp.to_s
puts "Resultado: #{MINUSCULA(letra)} ."
