=begin
Diseñe un algoritmo que permita ingresar 3 valores, si el primero es positivo e impar, 
calcular el promedio, en caso contrario calcular la suma, mostrar el resultado.
=end
print "Ingrse el primer numero: "
numero1 = gets.chomp.to_i
print "Ingrse el segundo numero: "
numero2 = gets.chomp.to_i
print "Ingrse el tercero numero: "
numero3 = gets.chomp.to_i
if numero1 > 0 and numero1 % 2 == 0
    promedio = ( numero1 + numero2 + numero3 ) / 3
    puts "El promedio es #{ promedio } ."
else
    puts "La suma de los 3 es #{ numero1 + numero2 + numero3 } ."
end    