=begin
Diseñe un algoritmo que calcule las raíces de una ecuación cuadrática. Tenga en cuenta que el algoritmo debe contemplar las posibles 
situaciones de error, de modo que pueda notificarse al usuario en caso de ocurrir alguna.
=end
print "Ingrese el valor de A: "
valorA = gets.chomp.to_i
print "Ingrese el valor de B: "
valorB = gets.chomp.to_i
print "Ingrese el valor de C: "
valorC = gets.chomp.to_i

if valorA == 0
    puts "Division por cero."
else
    valorRaiz = valorB ** 2 - 4 * valorA * valorC
    if valorRaiz < 0
        puts "Raiz imaginaria. "
    else
        valorRaiz = valorRaiz ** (1/2)
        valor1X =  ( - valorB + valorRaiz ) /  ( 2.0 * valorA ) 
        valor2x =  ( - valorB - valorRaiz ) /  ( 2.01 * valorA )
        puts "Los valores de X son #{valor1X} y #{valor2x} ."   
    end    
end