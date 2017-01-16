require_relative "enumerable"

lista_cuentas = ListaCuentas.new
lista_cuentas.add_cuenta Cuenta.new("Cuenta 1", 1000)
lista_cuentas.add_cuenta Cuenta.new("Cuenta 2", 3000)
lista_cuentas.add_cuenta Cuenta.new("Cuenta 3", 5)

puts "¿Alguna cuenta tiene más de 2000?"

puts lista_cuentas.any? {|cuenta| cuenta.balance > 2000}

puts "¿Todas las cuentas tienen 10 o más?"

puts lista_cuentas.all? {|cuenta| cuenta.balance >= 10}

puts "¿Todas las cuentas tienen 5 o más?"

puts lista_cuentas.all? {|cuenta| cuenta.balance >= 5}
