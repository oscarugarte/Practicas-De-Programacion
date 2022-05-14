=begin
Dada la serie numérica 2, 3, 4, 9, 16, 29, 54, 99, ... cada término de ésta se calcula como la suma de los 3 términos precedentes, salvo los 3 primeros que valen 2, 3 y 4 respectivamente. 
Teniendo en cuenta esto diseñe un algoritmo (diagrama de flujo) que permita calcular un término N de la serie.
=end
primero = 2
segundo = 3
tercero = 4
print "Ingrese el numero de la serie que quiere calcular: "
numero = gets.chomp.to_i
for i in ( 1..numero  )
aux = primero + segundo + tercero
primero = segundo
segundo = tercero
tercero = aux
end
puts "El termino de la serie es #{tercero} ."  