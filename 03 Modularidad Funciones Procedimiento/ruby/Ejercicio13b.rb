=begin
Codifique un módulo, llamado CUBO, que calcule el cubo de un número entero N aplicando el siguiente método descripto.
1 = 1^3
3 + 5 = 2^3
7 + 9 + 11 = 3^3
13 + 15 + 17 + 19 = 4^3
21 + 23 + 25 + 27 + 29 = 5^3
Suponga que el valor para el cálculo es ingresado en el programa principal. Indique el pasaje de parámetros utilizado.
=end
=begin
Esta version del programa usara x * 2 + 1 = para generar
el resultado. Se contara con una función auxiliar para obtener
el comienzo de la serie correspondiente a la base. Por ejemplo:
0*2+1=1 Para el cubo de 1 se usara 0 y tendra 1 ciclo.
1*2+1=3 Para el cubo de 2 se usara 1 y tendra 2 ciclos crecientes.
2*2+1=5 
3*2+1=7 Para el cubo de 3 se usara 3 y tendra 3 ciclos crecientes
4*2+1=9
5*2+1=11 
=end
def obtenerInicioDeSerie(numero)
    acumulador = 0
    for i in ( 0..numero - 1 )
        acumulador = acumulador + i
    end
    return acumulador    
end    

def CUBO( numeroBase )
    resultado = 0 
    numeroInicialDeSerie = obtenerInicioDeSerie(numeroBase)
    for i in ( 1..numeroBase  )
        resultado = resultado + ( numeroInicialDeSerie * 2 + 1 )
        numeroInicialDeSerie+=1
    end
    return resultado    
end    

print "Ingrese un numero para obtener su cubo : "
numeroBase = gets.chomp.to_i
puts "Resultado del cubo: #{ CUBO(numeroBase) } "
