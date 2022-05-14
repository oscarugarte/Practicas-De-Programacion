=begin
Diseñe un algoritmo que opere 3 números ingresados por el usuario. Permita ingresar al usuario el valor 
de una variable opción y según el valor de esta realice las siguientes acciones: (1) determinar el mayor
de los valores, (2) calcular el promedio de los valores, (3) calcular el producto de los valores.
=end
print "Ingrese el primer numero: "
numero1 = gets.chomp.to_i
print "Ingrese el segundo numero: "
numero2 = gets.chomp.to_i
print "Ingrese el tercer numero: "
numero3 = gets.chomp.to_i
puts "Ingrese una de las opciones: "
puts "1) Determinar el mayor."
puts "2) Calcular el promedio."
puts "3) Calcular el producto."
print "Ingrese la opcion: "
opcion = gets.chomp.to_i
case opcion
when 1
    if numero1 > numero2 and numero1 > numero3
        puts "El mayor es #{ numero1 } ."
    elsif numero2 > numero1 and numero2 > numero3
        puts "El mayor es #{ numero2 } ."
    else
        puts "El mayor es #{ numero3 } ."
    end                
when 2
    puts "El promedio es #{ (numero1 + numero2 + numero3) / 3} ."
when 3
    puts "El producto es #{ numero1 * numero2 * numero3  } ."
else
    puts "Opcion invalida."
end   