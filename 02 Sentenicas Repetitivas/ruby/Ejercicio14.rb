=begin
Al finalizar el dictado de una materia el profesor a cargo calcula, por cada alumno, el promedio de las 3 evaluaciones 
que se han realizado. Realice un programa que permita al profesor calcular el promedio de sus alumnos y clarificarlos según la siguiente correspondencia:
Insuficiente (entre 0 y 3). Suficiente (entre 4 y 5), Satisfecho (entre 6 y 7), Bueno (entre 8 y 9) y Muy Bueno (10). 
Considera que el numero de alumnos así como sus notas son ingresas por el profesor.
=end
print "Ingrese cantidad de alumnos: "
notas = 0.0
cantidad = gets.chomp.to_i
if cantidad > 0
  for i in ( 1..cantidad )
    print "Ingrese nombre: "
    nombre = gets.chomp
    for j in ( 1..3 )
      print "Ingrese nota #{j} :"
      nota = gets.chomp.to_i
      while nota < 0 or nota > 10
        print "Nota invalida. Ingrese de nuevo la nota: "
        nota = gets.chomp.to_i
      end
      notas += nota
    end
    puts "#{nombre} tiene promedio de #{notas / 3} "
    notas = 0.0
  end
else
  puts "Ingreso cero o negativo alumnos."
end