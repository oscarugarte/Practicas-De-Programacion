=begin
12. Codifique un módulo, llamado CUADRADO, que calcule el cuadrado de un número entero N mediante 
la suma de los N primeros impares. Suponga que el valor para el cálculo es ingresado en el programa 
principal. Indique el pasaje de parámetros utilizado.
=end
def CUADRADO(numero)
	resultado = 0
	for k in (1..numero)
		resultado = resultado + ( 2*k -1)
	end
	return resultado
end

print("Ingrese un numero para calcular su cuadrado: ")
numero = gets.chomp.to_i
puts "Resultado: #{ CUADRADO(numero) } ."
