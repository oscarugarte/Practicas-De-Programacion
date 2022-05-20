=begin
    14. Codifique un programa modular que INTERCAMBIE el 
    contenido de dos números ingresados por el usuario.

    Como en ruby los valores se pasan por valor usaremos arreglos para
    simular el pasaje por referencia.
=end
def INTERCAMBIE(numero1, numero2)
    auxiliar = numero1[0]
    numero1[0] = numero2[0]
    numero2[0] = auxiliar
end
print "Ingrese el valor del primer numero: "
numero1 = [gets.chomp.to_i]
print "Ingrese el valor del segundo numero: "
numero2 = [gets.chomp.to_i]
INTERCAMBIE(numero1, numero2)
puts "Ahora el primer numero vale: #{numero1[0]} ."
puts "Ahora el segundo numero vale: #{numero2[0]} ."