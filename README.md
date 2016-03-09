# Práctica para la asignatura de [_Seguridad en sistemas informáticos_](https://campusvirtual.ull.es/1516/course/view.php?id=143) en la que se pide:
---
### Objetivo: Implementar el cifrado de Vigenere.

Desarrollo:
Implementa el cifrado y descifrado de Vigenere según la descripción que se incluye a continuación:
Se tendrá la posibilidad de usar alfabeto con ñ o sin ñ y con espacios.

El cifrado opera sobre bloques de letras, y la clave es una palabra o frase que se repite cuantas veces sea necesario.
Si la clave tiene longitud r, entonces el texto se divide en bloques de longitud r y la clave se suma a cada bloque, sumando  letra a letra módulo 26, para producir el texto cifrado.

Dicho de otra forma, dada la clave k1 k2...k introducida por el usuario, la primera letra del texto original se sustituye por otra que ocupa k1 posiciones más allá en el alfabeto, la segunda por la que ocupa k2 posiciones más allá, y así sucesivamente.


#### En la práctica se pidió realizar la siguiente modificación:

Separar en grupos cada caracter del texto que fuese cifrado por el mismo caracter de k, es decir, un grupo para todos aquellos caracteres cifrado con k1, otro para los de k2 y así hasta kn.

#### Para ejecutar: _ruby main.rb_

Al ejecutar, se ejecutará la práctica con la modificación incluida.
El fichero 'pruebamod.rb' contiene las pruebas para realizar la modificación y los cálculos que se necesitaron para ello.

### Enlaces:

+ [Página personal.](http://alu0100768893.github.io/)
+ [Repositorio de la práctica.](https://github.com/alu0100768893/Cifrado-de-Vigenere)
+ [Enlace a la asignatura.](https://campusvirtual.ull.es/1516/course/view.php?id=143)
