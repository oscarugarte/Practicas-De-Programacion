=begin
Elabore un algoritmo que permita ingresar N números y calcular para cada uno el 15%.   
=end
respuesta = 'S'
while respuesta != 'N' and respuesta != 'n'
    print "Ingresar Numeros S/N: "
    respuesta = gets.chomp
    if respuesta != 'N' and respuesta != 'n'
      print "Ingrese un numero: "
      numero = gets.chomp.to_f
      puts "Su 15 % es #{numero * 0.15} ." 
    end
end

