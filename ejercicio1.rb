class Person 
    attr_accessor :first_name, :last_name, :age
    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
        # @type = type
    end

    def birthday
        age += 1 
    end

    def introduce
        "Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor. #{super}"
    end
end

class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby"
    end
    
    def introduce
        puts "Hola Alumnos. mi nombre es #{super}"
    end
end

class Parent < Person
    def talk
        puts "Aquí es la reunión de apoderados"
    end

    def introduce
        puts "Hola. Soy unos de los apoderados. Mi nombre es #{super}"
    end
end

student1 = Student.new('Jennifer', 'Perez', 29)
puts student1.introduce