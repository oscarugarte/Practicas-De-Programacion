=begin
Diseñe un algoritmo que calcule la superficie y el perímetro de un círculo de radio r (ingresada por el usuario).
=end
print"Ingrese el radio de un circulo: "
radio = gets.chomp.to_f
superficie = Math::PI * radio**2 
perimetro = 2 * Math::PI * radio
puts"La superficie del circulo es #{ superficie.round(2) } ."
puts"El perimetro del circulo es #{ perimetro.round(2) } ."