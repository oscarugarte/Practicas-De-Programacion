=begin
6. Codifique la función MAYUSCULA que determine si un carácter ingresado por el usuario 
es mayúscula o no. Suponga que el carácter de entrada es ingresado en el programa principal. 
Indique el pasaje de parámetros utilizado.
=end
#Determina si la letra es mayuscula o no
def MAYUSCULA( letra )
	if letra >= 'A' and letra <= 'ZA' 
		return true
	else
		return false
	end
end

print "Ingrese una letra para saber si es mayuscula o no: "
letra = gets.chomp.to_s
if MAYUSCULA( letra )
	puts "Es mayuscula."
else
	puts "Es minuscula."
end
