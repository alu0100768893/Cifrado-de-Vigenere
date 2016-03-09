 # encoding: utf-8
require_relative "encriptar.rb"
require_relative "desencriptar.rb"

puts ""
puts "1. Encriptar un mensaje"
puts "2. Desencriptar un mensaje"
STDOUT.flush
@opcion = gets.chomp

def elegir_abecedario

	puts ""
	puts "Elija un abecedario: "
	puts "1. Espanyol(con ñ)"
	puts "2. Ingles(sin ñ)"
	STDOUT.flush
	a = gets.chomp

	if a == '1' then
		return @abecedario = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','ñ','o','p','q','r','s','t','u','v','x','y','z']
	end

	if a == '2' then
		return @abecedario = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','x','y','z']
	end
end

if (@opcion == '1') then

	puts ""
	puts "Introduce un mensaje: "
	STDOUT.flush
	@cadena = gets.chomp

	puts ""
	puts "Introduce una clave: "
	STDOUT.flush
	@clave = gets.chomp

	@abecedario = elegir_abecedario

	encriptar(@cadena,@clave,@abecedario)
end

if (@opcion == '2') then

	puts ""
	puts "Introduce un mensaje encriptado: "
	STDOUT.flush
	@cadena = gets.chomp

	puts ""
	puts "Introduce una clave: "
	STDOUT.flush
	@clave = gets.chomp

	@abecedario = elegir_abecedario

	desencriptar(@cadena,@clave,@abecedario)
end
