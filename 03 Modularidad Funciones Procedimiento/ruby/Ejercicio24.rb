=begin
El procedimiento Mostrar_Numeros visualiza, en orden creciente, valores enteros entre 1 y cantidad. 
Por ejemplo, si se invoca a Mostrar_Numeros con el parámetro cantidad igual a 5 
se mostraran los números del 1 al 5. Realice el algoritmo recursivo correspondiente.
=end

def mostrar_numeros(contador, numero)
    if ( contador < numero )
        print "#{contador} - "
        mostrar_numeros(contador + 1, numero)  
    else
        print"#{contador}"
    end
end

puts "Ingrese el valor maximo de la serie entre 1 y :"
numero = gets.chomp.to_i
mostrar_numeros(1, numero)
puts""