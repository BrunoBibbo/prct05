# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	attr_reader :x, :y
	def initialize(x, y)
		@x, @y = x, y
		@mcd = gcd(x, y)
	end;
	
	def to_s
		if @x % @y == 0
			"#{@x/@y}"
		else
			"#{@x}/#{@y}"
		end
	end;
	
	def suma(other)
		aux = gcd(@y, other.y)
		if @y > other.y
			aux1 = other.y
		else
			aux1 = @y
		end
		aux = aux1*aux
		aux2 = (@x*(aux/@y))
		aux3 = (other.x*(aux/other.y))
		Fraccion.new(aux2 + aux3, aux)
	end;

	def resta(other)
		aux = gcd(@y, other.y)
                if @y > other.y
                        aux1 = other.y
                else
                        aux1 = @y
                end
                aux = aux1*aux
                aux2 = (@x*(aux/@y))
                aux3 = (other.x*(aux/other.y))
                Fraccion.new(aux2 - aux3, aux)
	end;

	def producto(other)
		Fraccion.new(@x * other.x, @y * other.y)
	end;

	def division(other)
		Fraccion.new(@x * other.y, @y * other.x)
	end;

	def min
		aux = gcd(@x, @y)

		@x = @x/aux
		@y = @y/aux

		if gcd(@x, @y)  > 1
			self.min
		end
	end;		
		
end;

f1 = Fraccion.new(12, 9)
f2 = Fraccion.new(4, 6)

f3 = f1.suma(f2)
f4 = f1.resta(f2)
f5 = f1.producto(f2)
f6 = f1.division(f2)

f3.min
f4.min
f5.min
f6.min

puts ""

puts "La fraccion f1 es: #{f1}"
puts "La fraccion f2 es: #{f2}"

puts ""

puts "El resultado de suma es: #{f3}"
puts "El resultado de resta es: #{f4}"
puts "El resultado de producto es: #{f5}"
puts "El resultado de division es: #{f6}"

puts ""
