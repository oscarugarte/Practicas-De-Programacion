=begin
Diseñe un algoritmo que muestre una opción seleccionada en el menú de un cajero automático, de acuerdo a una 
letra ingresada por el usuario. Considere la siguiente correspondencia: (‘d’,’D’) Depositos, (‘e’,’E’) 
Extracciones, (‘c’,’C’) Consultas y (‘s’,’S’) Salir. En caso de un ingreso no contemplado, muestre el mensaje
“ERROR EN LA ENTRADA”.
=end
saldo = 2000
puts "Bienvenido al Cajero."
puts "1) Ingrese 'D' para hacer un deposito. "
puts "2) Ingrese 'E' para hacer una extraccion. "
puts "3) Ingrese 'C' para consultar. "
puts "4) Ingrese 'S' para salir."  
print "Ingrese una opcion: "
letra = gets.chomp 
if letra == 'D' || letra == 'd'
    print "Ingrese el monto a depositar: "
    deposito = gets.chomp.to_i
    if deposito >= 0
        saldo = saldo + deposito.
    else    
        puts "Deposito invalido."
    end    
    puts "Nuevo saldo: #{ saldo } ."
elsif letra == 'E' || letra == 'e'    
    print "Ingrese el monto para extraer: "
    extraccion = gets.chomp.to_i
    if extraccion > saldo
        puts "El monto de extraccion es superior al saldo disponible."
    else
        saldo = saldo - extraccion
        puts "Nuevo saldo: #{ saldo } ."    
    end    
elsif letra == 'C' || letra == 'c'
    puts "Su saldo actual es de #{ saldo } ."
elsif  letra == 'S' || letra == 's'   
    puts "Gracias por su confianza."
else
    puts "ERROR EN LA ENTRADA"
end