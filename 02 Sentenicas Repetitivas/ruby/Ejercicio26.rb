=begin
Realice un algoritmo que calcule la siguiente serie 1 + 1/2 + 1/4 + 1/8 + 1/16 .
=end
total = 1
denominador = 2
print "Ingrese el valor de la serie: "
valor = gets.chomp.to_i
for i in ( 1..valor )
  total += ( 1.0 / denominador )
  denominador *= 2
end  
puts "Total de la serie: #{total} ."