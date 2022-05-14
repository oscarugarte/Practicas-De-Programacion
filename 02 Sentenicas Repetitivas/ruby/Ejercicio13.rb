=begin
Realice un algoritmo que permita ingresar numero hasta que se detecte un cero. 
Para los valores ingresados debe calcular el promedio de los valores pares.
=end
cantidad = 0;
num_pares = 0.0;
loop do   
  print "Ingrese un numero: "   
  numero = gets.chomp.to_i   
  if numero % 2 == 0 and numero != 0
    cantidad += 1
    num_pares += numero
  end  
  if numero == 0   
    break   
  end   
end  
if cantidad == 0
  puts "No ingresaste numeros pares."
else
  puts "El promedio de los pares es #{ num_pares / cantidad } ."
end