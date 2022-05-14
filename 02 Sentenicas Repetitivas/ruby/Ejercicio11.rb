=begin
Diseñe un algoritmo que determine los valores máximo y mínimo de una serie de números enteros ingresados por el usuario. 
Considere que el ingreso finaliza cuando el valor introducido es CERO. Utilice el concepto de fiscalización de bucle por valor centinela.
=end
menor = 0
mayor = 0
loop do   
  puts "Ingrese un numero (0 para salir) :"   
  numero = gets.chomp.to_i   
  if menor == 0 and mayor == 0
    menor = numero
    mayor = numero
  else
    if numero < menor
      menor = numero
    elsif numero > mayor
      mayor = numero  
    end
  end  
  if numero == 0   
    break   
  end   
end  
if menor == 0 and mayor == 0
  puts "No ingresaste numeros."
else
  puts "El menor es #{menor} y el mayor es #{mayor} ."
end