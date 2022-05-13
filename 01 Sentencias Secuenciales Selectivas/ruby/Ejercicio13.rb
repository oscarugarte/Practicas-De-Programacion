=begin
Diseñe un algoritmo que permita introducir un tiempo en formato entero de seis dígitos ej. 122233, 
luego exprese dicho tiempo en horas, minutos y segundos ej. Hora: 12 – Minutos: 22 y Segundos: 33. 
Considere que cada oración es una cadena ej: “Hora: 12 – Minutos:22”. Tenga en cuenta que el algoritmo 
debe contemplar solo mostrar horas, minutos y segundos correctos, debe notificarse al usuario en caso de 
ocurrir algún error.
=end
puts "Ingrese una hora en formato de 6 digitos. Los primeros 2 digitos seran las horas, los segundos los minutos y los terceros los segundos."
print "Ingrese una hora en el formato correcto y valido: "
hora = gets.chomp ;
if hora.length == 6 
    horas = hora[0] + hora[1] 
    if horas.to_i >=0 and horas.to_i <= 23
        minutos = hora[2] + hora[3] 
        if minutos.to_i >= 0 and  minutos.to_i <= 59
            segundos = hora[4] + hora[5]
            if segundos.to_i >= 0 and segundos.to_i <= 59
                h = "Hora: " + horas
                m = "Minutos: " + minutos
                s = "Segundos: " + segundos
                print h + " - " + m + " - " + s
            else    
                puts "Los segundos son invalidos."
            end    
        else
            puts "Los minutos son invalidos."
        end    
    else
        puts "La hora es invalida."
    end    
else 
    puts "La hora ingresada no cumple con el formato." 
end   