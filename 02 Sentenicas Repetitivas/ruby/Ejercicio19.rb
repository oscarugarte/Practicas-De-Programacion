=begin
Considerando que la potencia de un número entero positivo a elevado a un número entero positivo b, 
puede expresarse como el producto sucesivo de a, b veces, diseñe un algoritmo que calcule la potencia 
de a elevado a b mediante productos sucesivos. Controle el bucle de cálculo con una bandera.
=end
bandera = true
resultado = 1
contador = 1
print "Ingrese la base de la potencia: "
base = gets.chomp.to_i
print "Ingrese el exponente de la potencia: "
exponente = gets.chomp.to_i
while bandera
  if contador <= exponente
    resultado *= base
    contador +=  1
  else
    bandera = false
  end  
end
puts "Resultado: #{resultado}"