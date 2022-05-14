=begin
Diseñe un algoritmo que muestre el nombre de un tipo de video juego, de acuerdo 
a una letra ingresada por el usuario. Considere la siguiente correspondencia: (‘a’,’A’) Acción, 
(‘s’,’S’) Shooter, (‘e’,’E’) Estrategia y (‘d’,’D’) Deportes. 
En caso de un ingreso no contemplado, muestre el mensaje “ERROR EN LA ENTRADA”.
=end
puts "Ingrese una letra que corresponda a un tipo de videojuego. Siendo A->Accion, S->Shooter, E->Estrategia  y D->Deportes:"
print "Ingrese una letra: "
letra = gets.chomp
if letra == 'A' or letra == 'a'
    puts "Accion."
elsif letra == 'S' or letra == 's'
    puts "Shooter."
elsif letra == 'E' or letra == 'e'
    puts "Estrategia."
elsif letra == 'D' or letra == 'd'    
    puts "Deportes."
else
    puts "ERROR EN LA ENTRADA"
end