require_relative "print_resultado.rb"
require_relative "get_indice.rb"

def desencriptar(cadena = [],clave = [],abecedario = [])

	@cadena = cadena
	@clave = clave
	@abecedario = abecedario

	desencriptado = []

	@aux = 0

	for i in (0..@cadena.size-1) do

		if(@cadena[i] == " ") then
			desencriptado[i] = ' '
		end

		if(@cadena[i] != " ") then

			letra = ((get_indice(@cadena[i]))-(get_indice(@clave[@aux % @clave.size]))) % @abecedario.size

			#al estar trabajando con aritmética modular, a la hora de desencriptar debemos tener en cuenta que
			#restando podemos caer en un número negativo, con lo cual debemos sumar el modulo de nuestra aritmética
			#para así conseguir el caracter adecuado:
			while letra < 0 do

				letra = letra + @abecedario.size

			end

			desencriptado[i] = @abecedario[letra]

			@aux += 1

		end

	end

	puts ""
	STDOUT.flush

	print_resultado("La cadena original es: ",desencriptado)

end
