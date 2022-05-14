=begin
    Elabore un algoritmo que permita que calcule la potencia cubica de los números comprendidos entre un rango
    especificado por el usuario. Verifique que los limites del intervalo sean correctos
=end
print "Ingrese el numero de inicio del rango: "
inicio = gets.chop.to_i
print "Ingrese el numero de final del rango: "
final = gets.chop.to_i
if final < inicio
  puts "El final es menor al inicio."
else  
  for i in ( inicio..final  )
  puts "El cubo de #{i} es #{i * i * i} "
  end
end