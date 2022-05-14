=begin
    Realizar un algorimo que calcule una productoria con valor de inicio K=1 y termine en un valor ingresador por el usuario.
    En cada ciclo se multiplicara por el valor de K.
=end
total = 1
print "Ingrese el valor de la productoria: "
valor = gets.chomp.to_i
for k in ( 1..valor )
  total *= k
end  
puts "Total de la productoria: #{total} ."