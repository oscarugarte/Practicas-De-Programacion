=begin
    Diseñe una función recursiva que calcule el factorial de un número M.
=end

def factorialRecursivo( numero)
    if( numero == 0)
        return 1
    else
        return numero * factorialRecursivo( numero - 1 ) 
    end
end

print "Ingrese un numero para calcular el factorial: "
numero = gets.chomp.to_i
puts " #{factorialRecursivo(numero)} "
