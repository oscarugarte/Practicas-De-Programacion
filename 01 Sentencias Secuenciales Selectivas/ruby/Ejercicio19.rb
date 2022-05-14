=begin
Diseñe un algoritmo que permita el ingreso del nombre de un alumno y 3 calificaciones. 
En base a los números ingresados calcule la nota promedio y determine si el alumno está 
aprobado (A) o desaprobado (D). Se considerará aprobados a los alumnos que superen o 
igualen un promedio de 6 y desaprobados los que no alcancen a obtener como promedio 6. 
Mostrar luego de los datos ingresados el nombre del alumno, la nota promedio y el resultado 
A de aprobado o D de desaprobado.
=end
print "Ingrese el nombre del alumno: "
nombre = gets.chomp
print "Ingrese primera nota: "
nota1 = gets.chomp.to_i
print "Ingrese segunda nota: "
nota2 = gets.chomp.to_i
print "Ingrese tercera nota: "
nota3 = gets.chomp.to_i
promedio = (nota1 + nota2 + nota3) / 3
if promedio >= 6
    puts "Alumno: " + nombre + " - Promedio: " + promedio.to_s + " - Aprobado."
else
    puts "Alumno: " + nombre + " - Promedio: " + promedio.to_s + " - Desaprobado."
end