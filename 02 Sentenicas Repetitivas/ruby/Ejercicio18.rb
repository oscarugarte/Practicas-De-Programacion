=begin
Realice un algoritmo que permita calcular el producto de 2 números, pero utilizando para ello solo sumas.
=end
resultado = 0
print "Ingrese el primer multiplo: "
multiplo1 = gets.chomp.to_i
print "Ingrese el segundo multiplo : "
multiplo2  = gets.chomp.to_i
for i in ( 1..multiplo2 )
  resultado += multiplo1
end 
puts "Resultado: #{resultado} ."