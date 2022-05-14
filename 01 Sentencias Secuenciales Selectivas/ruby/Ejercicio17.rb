=begin
Realice un programa que muestre el nombre de una estación del año de acuerdo a una 
letra ingresada por el usuarios. Considerando la siguiente correspondencia (“v”,“V”)
para Verano, (“o”,”O”) para Otoño, (“i”,”I”) para Invierno y (“p”,”P”) para primavera.
En caso de un ingreso invalido mostrar el mensaje “ERROR EN LA ENTRADA”.
=end
print "Ingrese la primera letra de una estación del año valida (V,O,I,P):  "
letra = gets.chomp 
if letra == 'V' or letra == 'v'
    puts "Verano."
elsif letra == 'O' or letra == 'o'
    puts "Otoño."
elsif letra == 'I' or letra == 'i'
    puts "Invierno."    
elsif letra == 'P' or letra == 'p'
    puts "Primavera."
else
    puts "ERROR EN LA ENTRADA”"
end               