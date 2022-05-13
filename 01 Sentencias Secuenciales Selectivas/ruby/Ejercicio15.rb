=begin
    Diseñe un algoritmo que muestre el nombre de un tipo de periférico de una computadora, 
    de acuerdo a una letra ingresada por el usuario. Considere la siguiente correspondencia: 
    (‘e’,’E’) Entrada, (‘s’,’S’) Salida, (‘m’,’M’) Mixto y (‘a’,’A’) Almacenamiento. 
    En caso de un ingreso no contemplado, muestre el mensaje “ERROR EN LA ENTRADA”.
=end
print "Ingrese una letra que corresponda a un periferico (E, S o M) : "
letra = gets.chomp
if letra == 'e' || letra == 'E'
    print "Dispositivo de Entrada."
elsif letra == 's' || letra == 'S'
    print "Dispositivo de Salida."
elsif letra == 'm' || letra == 'M'    
    print "Dispositivo Mixto."
else
    print "ERROR EN LA ENTRADA."
end