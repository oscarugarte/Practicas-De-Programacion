=begin
    Codifique un programa modular que ORDENE de forma creciente 3 valores (a, b, c) 
    ingresados por el usuario. Considere que la ordenación se realiza por 
    intercambio de valores entre las variables indicadas.

    Como en ruby los valores se pasan por valor usaremos arreglos para
    simular el pasaje por referencia
=end
def INTERCAMBIE(numero1, numero2)
    auxiliar = numero1[0]
    numero1[0] = numero2[0]
    numero2[0] = auxiliar
end

def ORDENE(numero1, numero2, numero3)
    if numero1[0] > numero2[0] 
        INTERCAMBIE(numero1, numero2)
    end 
    if numero2[0] > numero3[0]           
        INTERCAMBIE(numero2, numero3)
    end  
    if numero1[0] > numero3[0] 
        INTERCAMBIE(numero1, numero3)
    end 
    if numero1[0] > numero2[0] 
        INTERCAMBIE(numero1, numero2)
    end     
end
print "Ingrese primer numero: "
N1 = [gets.chomp.to_i]
print "Ingrese segundo numero: "
N2 = [gets.chomp.to_i]
print "Ingrese tercer numero: "
N3 = [gets.chomp.to_i]
ORDENE(N1,N2,N3)
puts "#{N1[0]} - #{N2[0]} - #{N3[0]}"
