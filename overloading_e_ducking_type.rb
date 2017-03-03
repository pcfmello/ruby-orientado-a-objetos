class Person

	# *** O Ruby não aceita sobrecarga de métodos ***

	def say # Método principal
		puts "Hello!"
	end

	def say(name) # Sobrecarga de método
		puts "Hello #{name}"
	end

	def say(name, age) # Sobrecarga de método
		puts "Hello #{name}, my age is #{age}"
	end

end

# Ocorre um erro na execução pois o Ruby considera o ultimo método declarado/definição com o mesmo nome
# def say(name, age)
person = Person.new
# person.say
# person.say("Paulo Cesar")
person.say("Paulo Cesar", 33)
# ~> overloading_e_ducking_type.rb:12:in `say': wrong number of arguments (0 for 2) (ArgumentError)
#    	from overloading_e_ducking_type.rb:19:in `<main>'

# <====== DUCKING TYPE ======>
# Concentra a chamada dos métodos/ações semelhantes das classes na herança em um lugar só
class Bird
	def walk(bird)
		bird.walk
	end
end

class Eagle
	attr_accessor :name, :weight, :paws

	def initialize(name, weight, paws)
		@name, @weight, @paws = name, weight, paws
	end

	def walk
		puts "I am a Eagle, my name is #{@name}, my weight is #{@weight}kg and I have #{@paws} paws."
	end
end

class Phalcon
	attr_accessor :name, :weight, :paws

	def initialize(name, weight, paws)
		@name, @weight, @paws = name, weight, paws
	end

	def walk
		puts "I am a Phalcon, my name is #{@name}, my weight is #{@weight}kg and I have #{@paws} paws."
	end

end

eagle = Eagle.new("Joe", 20.5, 2)
phalcon = Phalcon.new("Dad", 15.2, 2)
# eagle.walk
# phalcon.walk
bird = Bird.new
bird.walk(eagle)
bird.walk(phalcon)

