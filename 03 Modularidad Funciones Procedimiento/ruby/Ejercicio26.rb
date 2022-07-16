=begin
    La función Potencia calcula el resultado de elevar un número entero a al exponente entero b, mediante productos sucesivos. Realice la función recursiva correspondiente.
=end

def potenciaRecursiva( base, exponente)
    if(exponente == 0)
        return 1
    else
        if(exponente == 1)
            return base
        else
            return base * potenciaRecursiva( base, exponente - 1)
        end
    end
end

print "Ingrese la base de la potencia: "
base = gets.chomp.to_i
print "Ingrese el exponente de la potencia: "
exponente = gets.chomp.to_i
puts "Resultado: #{potenciaRecursiva(base,exponente)}"