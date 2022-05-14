=begin
Realice un algoritmo que determine el mínimo valor impar de una serie de números ingresado por el usuario. El ingreso finaliza a petición del usuario.
=end
menor = 0
loop do   
  print "Ingrese un numero: "   
  numero = gets.chomp.to_i   
  if menor == 0 and numero % 2 != 0
    menor = numero
  else
    if menor > numero and numero % 2 != 0
      menor = numero
    end
  end  
  print "Ingresar mas numeros S/N: "
  respuesta = gets.chomp
  if respuesta == 'N' or respuesta == 'n'   
    break   
  end   
end  
if menor == 0
  puts "No ingresaste numeros impares."
else
  puts "El menor impar es #{menor} ."
end