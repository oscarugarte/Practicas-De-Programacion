=begin
Realice un algoritmo que permita que permita calcular el factorial de un numero N. Para ello, tenga en cuenta que el factorial de de n(n!) se calcula como:
n!=n x (n-1) x (n-2)x ....x 3 x 2 x 1
Por ejemplo el factorial de 5 es:
5!=5x4x3x2x1
5!=120
=end
factorial = 1
print "Ingrese el numero que quiere calcular el factorial: "
numero = gets.chomp.to_i
for i in ( 1..numero  )
  factorial *= i 
end
puts "Resultado: #{factorial} "  