=begin
Diseñe un algoritmo que permita ingresar 3 valores, determinar y mostrar el mayor y el menor número.
=end
print "Ingrese el primer numero: "
numero1 = gets.chomp.to_i
print "Ingrese el segundo numero: "
numero2 = gets.chomp.to_i
print "Ingrese el tercer numero: "
numero3 = gets.chomp.to_i
if numero1 > numero2 and numero1 > numero3
    if numero2 < numero3
        puts "El mayor es #{numero1} y el menor es #{numero2} ."
    else    
        puts "El mayor es #{numero1} y el menor es #{numero3} ."
    end
else
    if numero2 > numero1 and numero2 > numero3
        if numero1 < numero3
            puts "El mayor es #{numero2} y el menor es #{numero1} ."
        else
            puts "El mayor es #{numero2} y el menor es #{numero3} ."
        end
    else
        if numero1 < numero2
            puts "El mayor es #{numero3} y el menor es #{numero1} ."
        else
            puts "El mayor es #{numero3} y el menor es #{numero2} ."
        end
    end 
end        