require 'spec_helper'
require './lib/farm/funcion'

RSpec.describe Farm do
  describe Farm::Funcion do
    context "Interfaz de las funcionalidades - Farm::Funcion" do
      context "Componentes del módulo Funcion" do
        it "Existe un módulo para almacenar las funcionalidades" do
          expect(Farm::Funcion).to be_instance_of(Module)
        end

        it "Existe una constante para representar las condiciones de vida (campo abierto, establo)" do
          expect(Farm::Funcion::CONDICIONES_VIDA).to eq(["campo abierto", "establo"])
        end

        it "Existe un procedimiento para establecer los cuidados de los animales" do
          expect(Farm::Funcion::cuidados("Bueno")).to eq("Bueno")
        end

        it "Existe un procedimiento para establecer la reproducción de los animales" do
          expect(Farm::Funcion::reproduccion("Vivíparo")).to eq("Vivíparo")
        end
      end
    end
  end
end