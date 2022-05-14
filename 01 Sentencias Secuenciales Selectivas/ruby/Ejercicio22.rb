=begin
Realice un programa que opere 3 números ingresados por el usuario. De acuerdo al 
valor de una variable (También ingresado) considere la siguiente correspondencia:
(1) Determinar el mayor.
(2) Calcular le promedio.
(3) Calcular el producto de los valores.
(4) Calcular la raíz cubica de cada valor.
=end
print "Ingrese primer numero: "
numero1 = gets.chomp.to_i
print "Ingrese segundo numero: "
numero2 = gets.chomp.to_i
print "Ingrese tercer numero: "
numero3 = gets.chomp.to_i
puts "Opciones disponibles: "
puts "(1) Determinar el mayor."
puts "(2) Calcular le promedio."
puts "(3) Calcular el producto de los valores."
puts "(4) Calcular la raíz cubica de cada valor."
print "Ingrese opcion: "
opcion = gets.chomp.to_i
case opcion
when 1
    if numero1 > numero2 && numero1 > numero3
        puts "El mayor es #{ numero1 } ."
    elsif numero2 > numero1 && numero2 > numero3
        puts "El mayor es #{ numero2 } ."
    else 
        puts "El mayor es #{ numero3 } ."
    end    
when 2
    puts "Promedio: #{ (numero1 + numero2 + numero3 ) / 3 } ."          
when 3
    puts "Producto: #{ numero1 * numero2 * numero3  } . "
when 4 
    puts "El cubo de #{ numero1 } : #{numero1 ** 3 } ."  
    puts "El cubo de #{ numero2 } : #{numero2 ** 3 } ."  
    puts "El cubo de #{ numero3 } : #{numero3 ** 3 } ."  
else
    puts "Opcion invalida."       
end    