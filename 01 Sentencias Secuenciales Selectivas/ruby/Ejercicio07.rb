=begin
Diseñe un algoritmo que calculé la superficie y el volumen de un cilindro de radio r y altura h    
=end
print"Ingrese el radio del cilindro: "
radio = gets.chomp.to_f
print"Ingrese la altura del cilindro: "
altura = gets.chomp.to_f
area = 2 * 3.14 * radio * (radio + altura)
puts"La altura del cilindro es #{ area }" 