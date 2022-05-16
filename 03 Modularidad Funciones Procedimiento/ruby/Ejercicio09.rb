=begin
9. Codifique el procedimiento MAX_MIN que visualice los valores impares comprendidos en el intervalo
[límite_inferior, límite_superior]. Considere que los valores límite_inferior y límite_superior se ingresan en el programa principal. 
Considere que el ingreso de valores finaliza a petición del usuario. Indique el pasaje de parámetros utilizado.
=end
def MAX_MIN(maximo, minimo)
	for i in (minimo..maximo)
		if i % 2 != 0
			puts i
		end
	end
end

ingreso = 'S';
while ingreso == 'S' or ingreso == 's'
	print "Ingrese el valor minimo del intervalo: "
	minimo = gets.chomp.to_i
	print "Ingrese el valor maximo del intervalo: "
	maximo = gets.chomp.to_i
	MAX_MIN(maximo, minimo)
	print "Ingresar otro intervalos (S/N):"
	ingreso = gets.chomp
end
