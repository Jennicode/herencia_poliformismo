# Dado los siguientes módulos:
module Habilidades
    module Volador
        def volar 
            "Estoy volandooooo!"
        end

        def aterrizar 
            "Estoy cansado de volar, voy aterrizar"
        end
    end

    module Nadador
        def nadar 
            "Estoy nadando!"
        end

        def sumergir
            "glu glub glub glu"
        end
    end

    module Caminante
        def caminar
            "Puedo caminar!"
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            "Puedo comer plantas"
        end
    end

    module Carnivoro
        def comer
            "Puedo comer carne!"
        end
    end
end

# Crear la clase Animal con un atributo nombre. Agregar un método getter para el atributo nombre

class Animal
    include Habilidades
    include Alimentacion
    attr_reader :nombre

    def initialize(nombre)
        @nombre = nombre
    end
end

# Crear las clases Ave, Mamifero e Insecto. Ambas heredan de Animal.
class Ave < Animal
    include Habilidades::Volador
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
    include Alimentacion::Carnivoro
    
end

class Mamifero < Animal
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    include Alimentacion::Herbivoro
end

class Insecto < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    include Alimentacion::Herbivoro
end

# Crear las clases Pinguino, Paloma y Pato. Las tres heredan de Ave
class Pinguino < Ave
    include Habilidades::Caminante
    include Habilidades::Nadador
    def volar
        "No puedo volar"
    end
    def aterrizar
        "No puedo volar, por ende no puedo aterrizar"
    end
end

class Paloma < Ave
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    include Alimentacion::Herbivoro
end

class Pato < Ave
    include Habilidades::Nadador
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

# Crear las clases Perro, Gato y Vaca. Las tres heredan de Mamifero.
class Perro < Mamifero
    include Habilidades::Caminante
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
    def volar
        "No puedo volar"
    end
    def aterrizar
        "No puedo volar, por ende no puedo aterrizar"
    end
    def nadar
        "No puedo nadar"
    end
    def sumergir
        "No puedo nadar, me ahogo"
    end
end

class Gato < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    def volar
        "No puedo volar"
    end
    def aterrizar
        "No puedo volar, por ende no puedo aterrizar"
    end
    def nadar
        "No puedo nadar"
    end
    def sumergir
        "No puedo nadar, me ahogo"
    end
end

class Vaca < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro

    def volar
        "No puedo volar"
    end
    def aterrizar
        "No puedo volar, por ende no puedo aterrizar"
    end
    def nadar
        "No puedo nadar"
    end
    def sumergir
        "No puedo nadar, me ahogo"
    end
end

# Crear las clases Mosca, Mariposa y Abeja. Las tres heredan de Insecto.
class Mosca < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    include Alimentacion::Herbivoro
    def nadar
        "No puedo nadar"
    end
    def sumergir
        "No puedo nadar, me ahogo."
    end
end

class Mariposa < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro

    def nadar
        "No puedo nadar"
    end
    def sumergir
        "No puedo nadar, me ahogo."
    end

end

class Abeja < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
    def nadar
        "No puedo nadar"
    end
    def sumergir
        "No puedo nadar, me ahogo."
    end
end

#AVE
cadette = Pinguino.new(cadette)
puts cadette.volar
puts cadette.aterrizar
puts cadette.nadar
puts cadette.sumergir
puts cadette.caminar
puts cadette.comer


# INSECTO
# maya = Abeja.new(maya)
# puts maya.volar
# puts maya.aterrizar
# puts maya.nadar
# puts maya.sumergir
# puts maya.caminar
# puts maya.comer

#MAMIFERO
# lola = Vaca.new(lola)
# puts lola.volar
# puts lola.aterrizar
# puts lola.nadar
# puts lola.sumergir
# puts lola.caminar
# puts lola.comer