=begin
Elabore un algoritmo que permita ingresar un valor numérico entero y calcular la suma de los dígitos que conforman el numero. Además se debe visualizar 
el numero introducido y la suma de sus dígitos. Por ejemplo: Numero= 642 y Suma=12.
=end
print "Ingrese un numero: "
num_original = gets.chomp.to_i
num_copia = num_original
suma = 0
while num_copia >= 1
  suma = suma + num_copia % 10
  num_copia = num_copia / 10
end
puts "Original: #{num_original} | Suma de las cifras: #{suma} "