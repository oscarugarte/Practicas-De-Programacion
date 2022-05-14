=begin
Realice un programa que permita ingresar valores y determinar la cantidad de negativos, positivos 
y ceros introducidos. Considere que el ingreso finaliza a petición del usuario.
=end
respuesta = "S"
cant_ceros = 0
cant_positivos = 0 
cant_negativos = 0
while respuesta == "S" or respuesta == "s"
  print "Ingresar numeros S/N: "
  respuesta = gets.chomp
  if respuesta == "S" or respuesta == "s"
    print "Ingrese un numero: "
    numero = gets.chomp.to_i
    if numero == 0
      cant_ceros += 1
    elsif numero > 0  
      cant_positivos += 1
    else
      cant_negativos += 1
    end
  end
end
puts "Ceros: #{cant_ceros} | Positivos: #{cant_positivos} | Negativos: #{cant_negativos} ."