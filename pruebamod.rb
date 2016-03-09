  #aquí realizo la idea de la modificación para luego llevarlo al fichero
  #'encriptar.rb', en el fichero 'encriptaroriginal.rb' se conservará la
  #versión original

  @cadena = "holasoyyo"
  @clave = "tus"
  grupo = []
  aux = 0
  for i in (0..@clave.size-1) do
    for j in (0..@clave.size-1) do
      grupo.push(@cadena[i+(@clave.size*j)])
    end
    puts "bloque #{i}:"
    for j in (0..@clave.size-1) do
      puts grupo[aux]
      aux += 1
    end
    STDOUT.flush
  end



# traza y cálculos para ver como funciona:
#  hol aso yyo
#  tus tus tus
#  012 345 678
#
#  1->0+0*3 = 0
#  2->0+1*3 = 3
#  3->0+2*3 = 6
#  4->1+3*0 = 1
#  5->1+3*1 = 4
#  6->1+3*2 = 7
#  7->2+3*0 = 2
#  8->2+3*1 = 5
#  9->2+3*2 = 8
#hay
#osy
#loo
