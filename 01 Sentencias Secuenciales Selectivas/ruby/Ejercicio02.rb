=begin
Realice un algoritmo que determine si un numero ingresado por el usuario es par o impar
=end
print("Ingrese un numero: ")
numero = gets.chomp.to_i
if numero % 2 == 0
    puts "El numero #{numero} es par."
else 
    puts "El numero #{numero} es impar."
end
