=begin
    Diseñe un procedimiento/función recursivo que calcule el producto de dos números enteros (utilice el concepto de sumas sucesivas).
=end

def productoRecursivo(multiplo1, multiplo2)
    if( multiplo2 == 0 )
        return 0
    else
        return multiplo1 + productoRecursivo(multiplo1, multiplo2 - 1 )
    end
end

print "Ingrese el primer multiplo: "
multiplo1 = gets.chomp.to_i
print "Ingrese el segundo multiplo: "
multiplo2 = gets.chomp.to_i
puts("Resultado de #{multiplo1} * #{multiplo2} = #{ productoRecursivo(multiplo1,multiplo2)} ")