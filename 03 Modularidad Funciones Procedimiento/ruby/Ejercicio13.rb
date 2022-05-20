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
Esta version del programa usara x * 2 - 1 = para generar
el resultado. Se contara con una función auxiliar para obtener
el final de la serie correspondiente a la base. Por ejemplo:
1*2-1=1 Para el cubo de 1 se usara el 1 y tendra un ciclo.
2*2-1=3
3*2-1=5 Para el cubo de 2 se usara eñ 3 y tendra 2 ciclos decrecientes
4*2-1=7
5*2-1=9
6*2-1=11 Para el cubo de 3 se usara 6 y tendra 3 ciclos decrecientes
=end
def obtenerFinalDeSerie( numero)
    acumulador = 0
    for i in ( 1..numero )
        acumulador = acumulador + i
    end
    return acumulador    
end    

def CUBO( numeroBase )
    resultado = 0 
    numeroFinalDeSerie = obtenerFinalDeSerie(numeroBase)
    for i in ( 1..numeroBase  )
        resultado = resultado + ( numeroFinalDeSerie * 2 - 1 )
        numeroFinalDeSerie-=1
    end
    return resultado    
end    

print "Ingrese un numero para obtener su cubo : "
numeroBase = gets.chomp.to_i
puts "Resultado del cubo: #{ CUBO(numeroBase) } "
