=begin
    Diseñe un algoritmo que determine si 3 datos ingresados por el usuario, correspondientes a horas, minutos y segundos,
    son válidos o no. Tenga en cuenta que las horas se encuentran en el rango de 0 a 23, mientras que los minutos 
    y segundos pertenecen al intervalo 0 a 59.
=end
print "Ingrese el valor de la hora: "
horas = gets.chomp.to_i
if horas >= 0 and horas <= 23
    print "Ingrese el valor de los minutos: "
    minutos = gets.chomp.to_i
    if minutos >= 0 and minutos <= 59
        print "Ingrese el valor de los segundos: "
        segundos = gets.chomp.to_i
        if segundos >= 0 and segundos <= 59
            puts horas.to_s + ":" + minutos.to_s + ":" + segundos.to_s
        else    
            puts "Segundos invalidos."
        end    
    else
        print "Minutos invalidos."
    end
else
    puts "Horas invalidas."
end