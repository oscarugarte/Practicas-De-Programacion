=begin
Diseñe un algoritmo que calcule el promedio de los valores ingresados por el usuario. 
Considere que el ingreso finaliza a pedido del usuario.
=end
respuesta = "S"
cantidad = 0 ;
suma = 0.0
while respuesta == 'S' or respuesta == 's'
  print "Ingresar numeros S/N: "
  respuesta = gets.chomp
  if respuesta == 'S' or respuesta == 's'
    print "Ingrese un numero: "
    numero = gets.chomp.to_i
    cantidad += 1
    suma += numero
  end
end
if cantidad != 0
  puts "El promedio de los #{cantidad} numeros ingresados es #{suma / cantidad}  ."
else
  puts "No ingresaste numeros."
end