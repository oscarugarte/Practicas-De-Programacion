=begin
Realizar un algoritmo que calcule una sumatoria de i=1 hasta M que es ingresado por el usuario.
Para cada ciclo calcular 2 * i - 1
=end
total = 0
print "Ingrese el valor de M de la sumatoria: "
valorM = gets.chomp.to_i
for i in ( 1..valorM )
  total += ( 2 * i - 1 )
end  
puts "Total de la sumatoria: #{total} ."