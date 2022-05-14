=begin
Realice un algoritmo que permita ingresar 20 cadenas de texto y determine cuantas 
tuvieron longitudes entre 1 y 10, entre 11 y 20 o más de 21 caracteres.
=end
cadenas1 = 0
cadenas2 = 0
cadenas3 = 0
for i in ( 1..5  )
    print "Ingrese una cadena: "
    cadena = gets.chomp
    if cadena.length >= 1 and  cadena.length <= 10
        cadenas1 += 1
    elsif cadena.length >= 11 and  cadena.length <= 20    
        cadenas2 += 1
    elsif cadena.length > 20
        cadenas3 += 1
    end
end    
puts "Cadenas ingresadas con 1 a 10 caracteres: #{ cadenas1} ."
puts "Cadenas ingresadas con 11 a 20 caracteres: #{ cadenas2} ."
puts "Cadenas ingresadas con 21 o más caracteres: #{ cadenas3} ."