# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	def test_suma
		assert_equal(Fraccion.new(36, 18), Fraccion.new(12, 9).suma(Fraccion.new(4, 6)))
	end

	def test_resta
                assert_equal(Fraccion.new(12, 18), Fraccion.new(12, 9).resta(Fraccion.new(4, 6)))
        end

	def test_producto
                assert_equal(Fraccion.new(48, 54), Fraccion.new(12, 9).producto(Fraccion.new(4, 6)))
        end

	def test_division
                assert_equal(Fraccion.new(72, 36), Fraccion.new(12, 9).division(Fraccion.new(4, 6)))
        end

end
