=begin
    Codifique un programa modular que calcule las raíces de una ecuación cuadrática. Para ello, 
    considere que el programa presentará un menú con las siguientes opciones: 
    1) Ingresar los coeficientes de una ecuación cuadrática, 
    2) Determinar las raíces de la ecuación cuadrática (siempre que sea posible), 
    3) Indicar si las raíces de la ecuación son iguales, distintas o son imaginarias 
    (no existen en el campo de los reales) y 
    4) Salir del Programa. 
    Considere que cada opción se implementa mediante módulos, y que debe controlarse que las 
    opciones que dependen de otras  no se ejecuten antes de aquellas. 

    Como en ruby los valores se pasan por valor usaremos arreglos para
    simular el pasaje por referencia  
    
    Pagina: http://www.sapiensman.com/matematicas/matematicas46.htm#:~:text=Ser%C3%A1n%20imaginarias%20cuando%20el%20n%C3%BAmero,0%20las%20ra%C3%ADces%20son%20imaginarias.
=end

def ingresarCoeficientes(valorA, valorB, valorC)
    print "Ingrese el valor de 'a': "
    valorA[0] = gets.chomp.to_i
    print "Ingrese el valor de 'b': "
    valorB[0] = gets.chomp.to_i
    print "Ingrese el valor de 'c': "
    valorC[0] = gets.chomp.to_i
end

#Verifica que la ecuacion pueda realizarse. Devuelve verdadero o falso.
def esPosible(valorA, valorB, valorC)
    posible = true;
    if valorA[0] == 0
        posible = false
    else
        valorRaiz = valorB[0] ** 2 - 4 * valorA[0] * valorC[0]
        if valorRaiz < 0
            posible = false   
        end    
    end  
    return posible  
end

#Resuelve la ecucación y devuelve 2 resultados pasados en valor1X y valor2X. Para evitar errores deben usarse la funcion esPosible() antes de llamarla.
def resolverEcuacion(valorA, valorB, valorC, valor1X, valor2x)
    valorRaiz = valorB[0] ** 2 - 4 * valorA[0] * valorC[0]
    valor1X[0] =  ( - valorB[0] + valorRaiz ) /  ( 2.0 * valorA[0] ) 
    valor2x[0] =  ( - valorB[0] - valorRaiz ) /  ( 2.01 * valorA[0] )
end    

#En base a los 3 valores devuelve un mensaje con el tipo de raices.
def determinarEcuacion(valorA, valorB, valorC)
    mensaje = ""
    valorRaiz = valorB[0] ** 2 - 4 * valorA[0] * valorC[0]
    if valorRaiz < 0
        mensaje = "Raíces Imaginarias."
    else
        if valorRaiz == 0
            mensaje = "Raíces dobles o iguales."
        else
            mensaje = "Raíces reales y distintas"
        end    
    end
    return mensaje
end    

def mostrarMenu()
    puts "**** M E N U ****"
    puts "1) Ingresar los coeficientes de una ecuación cuadrática."
    puts "2) Determinar las raíces de la ecuación cuadrática (siempre que sea posible)."
    puts "3) Indicar si las raíces de la ecuación son iguales, distintas o son imaginarias."
    puts "4) Salir del programa."
end    

def ingresarOpcion()
    print "Ingrese una opcion: "
    return gets.chomp.to_i
end  

valorA = [0]
valorB = [0]
valorC = [0]
valor1X = [0]
valor2X = [0]
opcion = 0
ingresado1 = false
until opcion == 4 do
    mostrarMenu()
    opcion = ingresarOpcion()
    case opcion
        when 1
            ingresado1 = true
            ingresarCoeficientes(valorA, valorB, valorC)
        when 2
            if ingresado1
                if esPosible(valorA, valorB, valorC)
                    resolverEcuacion(valorA, valorB, valorC, valor1X, valor2x)
                    puts "Resultados de las raices: X1 = #{valor1X} y X2 = #{valor2X} ."
                else
                    puts "No se puede resolver. Division por 0 o raices imaginarias."
                end
            else
                puts "Ingrese por la opcion 1 primero."
            end
        when 3
            if ingresado1
                puts "#{determinarEcuacion(valorA, valorB, valorC)}"
            else    
                puts "Ingrese por la opcion 1 primero."
            end
        when 4
            puts "Salir del programa."
        else
            puts "Opcion invalida."
    end
end