=begin
Realice un programa que permita calcular el importe total de una factura. Para ello,
considere que el usuario ingresa el código del producto, la descripción, el precio unitario y la cantidad. Por cada producto ingresado debe visualizarse
el subtotal correspondiente. El codigo de producto CERO indica el final del ingreso.
=end
total = 0.0
loop do
  print "Ingrese codigo del producto ( 0 Para terminar ingreso ) : "
  codigo = gets.chomp.to_i
  if codigo == 0
    break
  else  
    print "Ingrese nombre del producto: "
    nombre = gets.chomp
    print "Ingrese precio unitario: "
    precio = gets.chomp.to_f
    print "Ingrese cantidad comprada: "
    cantidad = gets.chomp.to_i
    total += ( precio * cantidad )
  end
end
puts "Total de la compra: $ #{total}"