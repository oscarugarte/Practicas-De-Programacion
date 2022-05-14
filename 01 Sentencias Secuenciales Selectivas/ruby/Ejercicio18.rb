=begin
Diseñe un algoritmo que muestre el nombre de un mes del año, de acuerdo a un valor (entre 1 y 12) 
ingresado por el usuario. Además, considere que los nombres de los meses podrán visualizarse en 
español o inglés según lo requiera el usuario. Ejemplo, si el usuario ingresa 1 y la opción de 
idioma seleccionada es español, se mostrará Enero; si es inglés January. En caso de un ingreso 
no contemplado, muestre el mensaje “NO CORRESPONDE A UN MES DEL AÑO”.
=end
print "Ingrese un numero entre 1 y 12 para ver el nombre del mes del año: "
numero = gets.chomp.to_i
case numero
when 1
    print "Enero."
when 2
    print "Febrero."
when 3
    print "Marzo."
when 4
    print "Abril."
when 5
    print "Mayo."
when 6
    print "Junio."
when 7
    print "Julio."
when 8
    print "Agosto."
when 9
    print "Septiembre."
when 10
    print "Octubre."
when 11
    print "Noviembre."
when 12
    print "Diciembre."
else
    print "NO CORRESPONDE A UN MES DEL AÑO."
end    