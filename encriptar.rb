#Este fichero contiene la modificación de la práctica,
#si quiere ver el fichero original abra 'encriptaroriginal.rb'
require_relative "get_indice.rb"
require_relative "print_resultado.rb"

def encriptar(cadena = [],clave = [],abecedario = [])

	@cadena = cadena
	@clave = clave
	@abecedario = abecedario

	encriptado = []



	@aux = 0
	#la variable aux es bastante interesante, es la que permite que introduzcamos espacios en blanco en el mensaje
	#dicha variable aumentará siempre que el caracter que estemos tratando dentro del mensaje NO sea un espacio
	#de esta manera sabremos en que todo momento que caracter de la clave afecta al caracter del mensaje que
	#estamos cifrando.

#Aquí empieza el algoritmo:
	for i in (0..@cadena.size-1) do

		if(@cadena[i] == " ") then
			encriptado[i] = ' '
		end

		if(@cadena[i] != " ") then

			letra = ((get_indice(@cadena[i]))+(get_indice(@clave[@aux % @clave.size]))) % @abecedario.size

			encriptado[i] = @abecedario[letra]

			@aux += 1

		end

	end

	print_resultado("La cadena encriptada es:",encriptado)
	#A partir de aquí viene la modificación, donde debemos separar en grupos los caracteres que han sido
	#encriptados en el mensaje original por el mismo caracter de la clave:
	grupo = []
	auxiliar = 0
	for i in (0..@clave.size-1) do
		for j in (0..@clave.size-1) do
			grupo.push(@cadena[i+(@clave.size*j)])
		end
		puts "bloque #{i}:"
		for j in (0..@clave.size-1) do
			puts grupo[auxiliar]
				auxiliar += 1
		end
		STDOUT.flush
	end

end
