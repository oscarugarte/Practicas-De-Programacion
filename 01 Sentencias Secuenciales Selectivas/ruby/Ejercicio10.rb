=begin
Diseñe un algoritmo que permita ingresar 2 valores (dividendo y divisor) y calcular el cociente y resto de éstos.
Tenga en cuenta que la división por cero no está definida.
=end
print"Ingrese el dividendo: "
dividendo = gets.chomp.to_i
print"Ingrese el divisor: "
divisor = gets.chomp.to_i
if divisor == 0
    puts"No se puede dividir por cero."    
else
    puts "Resultado #{dividendo / divisor } ."
    puts "Resto #{ dividendo % divisor} ."
end    