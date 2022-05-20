=begin
11. Codifique un módulo, llamado PRODUCTO, que calcule el producto de 2 números enteros mediante 
sumas sucesivas. Considere que el cálculo se realizará utilizando estructuras MIENTRAS y el criterio de fiscalización por VALOR CENTINELA. 
Además suponga que los valores a multiplicar son ingresados en el programa principal. Indique el pasaje de parámetros utilizado.
=end
def PRODUCTO(multiplo1, multiplo2)
	i = 1
	resultado = 0
	while i <= multiplo2
		resultado = resultado + multiplo1
		i = i + 1
	end
	return resultado
end

print "Ingrese primer multiplo: "
multiplo1 = gets.chomp.to_i
print "Ingrese segundo multiplo: "
multiplo2 = gets.chomp.to_i
puts "Resultado: #{ PRODUCTO(multiplo1, multiplo2) }"
