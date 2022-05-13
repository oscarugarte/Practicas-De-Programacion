=begin
Realice un algoritmo que que permita ingresar 2 valores y determine si son iguales o no. Si son distintos indique cual es el mayor.
=end
print"Ingrese el primer numero: "
numero1 = gets.chop.to_i
print"Ingrese el segundo numero: "
numero2 = gets.chomp.to_i
if numero1 == numero2
    puts"Los numero son iguales."    
else
    puts"Los numero no son iguales."
    if numero1 > numero2
        puts"El mayor es #{numero1} ."
    else    
        puts"El mayor es #{numero2} ." 
    end    
end    
