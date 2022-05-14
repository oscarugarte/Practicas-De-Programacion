=begin
Realice un algoritmo que permita mostrar N veces una cadena ingresada por el usuario.
Considere la cantidad de veces que se mostrará la cadena también es especificada 
por el usuario.
=end
print "Ingrese una cadena de caracteres: "
cadena = gets.chomp
print "Ingrese la cantidad de veces que se repetira la cadena: "
repeticiones = gets.chomp.to_i
for i in ( 1 .. repeticiones )
    puts cadena
end    