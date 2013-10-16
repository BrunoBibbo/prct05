# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	def setup
		f1 = Fraccion.new(12, 9)
		f2 = Fraccion.new(4, 6)

		@f3 = f1.suma(f2)
		@f4 = f1.resta(f2)
		@f5 = f1.producto(f2)
		@f6 = f1.division(f2)
		
		@f3.min
		@f4.min
		@f5.min
		@f6.min
	end

	def test_suma
		assert_equal("2", @f3.to_s)
	end

	def test_resta
                assert_equal("2/3", @f4.to_s)
        end

	def test_producto
                assert_equal("8/9", @f5.to_s)
        end

	def test_division
                assert_equal("2", @f6.to_s)
        end

end
