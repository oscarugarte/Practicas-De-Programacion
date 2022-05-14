=begin
Diseñe un algoritmo que permita ingresar 10 números y muestra la suma de todos los negativos y positivos.
=end
sum_positivos = 0
sum_negativos = 0
for i in (1..10)
  print "Ingrese un numero: "
  numero = gets.chomp.to_i
  if numero > 0 
    sum_positivos = sum_positivos + numero
  else  
    sum_negativos = sum_negativos + numero
  end
end
puts "La suma de todos los positivos es #{sum_positivos} ."
puts "La suma de todos los negativos es #{sum_negativos} ."