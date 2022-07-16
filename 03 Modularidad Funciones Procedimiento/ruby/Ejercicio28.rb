=begin
Diseñe un procedimiento/función recursivo que calcule el 
cociente de la división entera de dos números enteros
=end
def concienteRecursivo(dividendo, divisor)
    if( dividendo >= divisor)
        return 1 + concienteRecursivo(dividendo - divisor , divisor)
    else
        return 0
    end
end

print "Ingrese el dividendo: "
dividendo = gets.chomp.to_i
print "Ingrese el divisor: "
divisor = gets.chomp.to_i
puts "Division de #{dividendo} / #{divisor} = #{concienteRecursivo(dividendo,divisor)}  "