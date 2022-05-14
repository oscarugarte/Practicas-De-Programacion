=begin
Realice un algoritmo que permita ingresar una serie de números y determinar cuántos de ellos son primos. 
Considere que el ingreso finaliza a petición del usuario.
=end
primos = 0 
respuesta = 'S'
while respuesta == 'S' or respuesta == 's'
  print "Ingresar más numeros S/N: "
  respuesta = gets.chomp
  if respuesta == 'S' or respuesta == 's'
    print "Ingrese un numero: "
    numero = gets.chomp.to_i
    primo = true
    inicio = 2
    while primo and inicio < numero
      if numero % inicio == 0
        primo = false
      else  
        inicio += 1
      end  
    end
    if primo
      puts "Es primo."
      primos += 1
    else      
      puts "No es primo."
    end
  end 
end
puts "Cantidad de primos ingresados #{primos} ."