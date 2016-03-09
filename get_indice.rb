def get_indice(letra)

	26.times do |i|
		if (@abecedario[i] == letra) then
			return i
		end
	end
end
