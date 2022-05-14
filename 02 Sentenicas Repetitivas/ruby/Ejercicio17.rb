=begin
Considerando la división entera de 2 numero positivos enteros, a y b, puede expresarse como la resta 
sucesiva entre a y b (Siempre que a sea mayor que b). Realice un programa que permita calcular 
el resto de la división entre a y b (a>=b) indica el cociente de la división.
=end
cociente = 0
print "Ingrese dividendo: "
dividendo = gets.chomp.to_i
print "Ingrese divisor: "
divisor = gets.chomp.to_i
if dividendo >= divisor
  while dividendo >= divisor
    cociente += 1;
    dividendo -= divisor
  end  
  puts "El cociente es #{cociente} ."
else
  puts "El divisor es mayor al dividendo."
end