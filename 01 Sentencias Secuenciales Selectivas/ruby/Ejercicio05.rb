=begin
Realice un algoritmo que calculé la hipotenusa de un triángulo rectángulo, conociendo el valor de los catetos.
=end
print"Ingrese primer cateto: "
cateto1 = gets.chomp.to_i
print"Ingrese segundo cateto: "
cateto2 = gets.chomp.to_i
hipotenusa = cateto1**2 + cateto2**2
puts"La hipotenusa es igual a #{hipotenusa} ."