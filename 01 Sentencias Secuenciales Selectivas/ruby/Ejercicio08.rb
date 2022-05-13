=begin
Diseñe un algoritmo que permita ingresar 2 cadenas de caracteres, 
visualizar la longitud de cada una y su concatenación.
=end
print"Ingrese la primera cadena: "
cadena1 = gets.chomp
print"Ingrese la segunda cadena: "
cadena2 = gets.chomp
puts"La cadena: #{cadena1}: Tiene una longitud de #{cadena1.length} "
puts"La cadena: #{cadena2}: Tiene una longitud de #{cadena2.length} "
puts"La concatenacion es #{cadena1 + cadena2} ."