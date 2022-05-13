=begin
Diseñe un algoritmo que permita ingresar un número entero y visualizar en forma decreciente los tres números anteriores al dado.    
=end
print"Ingrese un numero: "
numero = gets.chomp.to_i
puts"#{numero - 1} #{numero - 2} #{numero - 3}"