=begin
Realice un algoritmo que calculé el área de una esfera.
=end
print"Ingrese el radio de la esfera: "
radio = gets.chomp.to_f
area = (4 * 3.14 ) * ( radio ** 2)
puts"El resultado es  #{ area }"