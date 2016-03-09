def print_resultado(texto,cadena)
	puts ""

	puts "#{texto}"
	for i in (0..cadena.size)
		print cadena[i]
		STDOUT.flush
	end

	puts ""
	puts ""
	STDOUT.flush
end
