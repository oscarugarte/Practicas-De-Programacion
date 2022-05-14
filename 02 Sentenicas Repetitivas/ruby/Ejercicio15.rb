=begin
Considerando que la potencia de un numero entero positivo A elevado a un numero entero positivo B,
puede expresarse como el producto positivo de A por B veces. Realice un programa que permita 
calcular la potencia de A elevado a la B mediante producto sucesivos.
=end
resultado = 1
print "Ingrese la base: "
base = gets.chomp.to_i
print "Ingrese el exponente: "
exponente = gets.chomp.to_i
if base > 0 and exponente > 0
  for i in ( 1..exponente )
    resultado *= base
  end
  puts "Resultado: #{resultado} ."
else
  print "Ambos numeros deben ser positivos."
end