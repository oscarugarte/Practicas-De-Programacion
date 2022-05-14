=begin
Realice un algoritmo que permita ingresar el valor dato entre 1 y 10; y determinar sus múltiplos de ese numero en el intervalo [1; limite].
Considere que limite también es ingresado por el usuario, y no puede ser menor que dato. 
Verifique que los datos de entrada cumplan con las condiciones del problema.
=end
print "Ingrese un numero entre 1 y 10 para buscar sus multiplos: "
numero = gets.chomp.to_i 
if numero >= 1 and numero <=10
  print "Ingrese el numero del limite de busqueda."
  limite = gets.chomp.to_i 
  if limite > numero
    for i in ( 1..limite  )
      if i % numero == 0
        puts "#{i} es multiplo de #{numero}."
      end
    end
  else
    puts "El limite es menor al numero elegido."
  end
else
  print "Numero invalido."
end