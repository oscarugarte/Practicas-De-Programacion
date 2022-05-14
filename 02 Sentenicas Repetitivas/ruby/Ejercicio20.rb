=begin
Diseñe un algoritmo que permita ingresar un número entero positivo y determinar la cantidad de dígitos que lo conforman,
por ejemplo, 4567 tiene 4 dígitos.
=end
digitos = 0
print "Ingrese un numero para contar sus digitos: "
numero = gets.chomp.to_i
if numero >= 0
  while numero >= 0
    digitos += 1
    numero = numero / 10
  end 
  puts "Cantidad de digitos: #{digitos} "
else
  puts "Numero negativo."
end