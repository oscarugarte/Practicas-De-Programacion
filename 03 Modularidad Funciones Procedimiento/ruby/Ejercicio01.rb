=begin
1.Codifique la función DIGITO que convierta un carácter dígito ingresado por el usuario (‘0’, ‘1’, ‘2’, ..., ‘9’) a
su correspondiente valor numérico. Por ejemplo, si se ingresa el carácter ‘2’ la función retornará el valor numérico 2. S
uponga que el valor de entrada es ingresado en el programa principal. Indique el pasaje de parámetros utilizado.
=end
def DIGITO( caracterNumero )
 case caracterNumero
   when '0'
        return 0
   when '1'
        return 1
   when '2'
        return 2
   when '3'
        return 3
   when '4'
        return 4
   when '5'
        return 5
   when '6'
        return 6
   when '7'
        return 7
   when '8'
        return 8
   when '9'
        return 9                                
   else
       return -1
   end  
end

print "Ingrese un numero del 0 al 9: "
numero = gets.chomp
puts "La funcion retorna (Muestra -1 si no esta entre 0 y 9) : #{ DIGITO(numero) } "
