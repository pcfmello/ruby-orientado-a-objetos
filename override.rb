class Animal

	# Getters e setters
	attr_accessor :name, :weight, :paws

# Construtor da classe com dois parâmetros
	def initialize(name, weight)
		@name = name
		@weight = weight
	end

	def walk
		puts "#{@name} is walking with #{@paws} paws"
	end
end

# Classe herdando a classe Animal
class Dog < Animal
	def initialize(name, weight, paws)
		# Atribuindo valores aos atributos em uma linha
		@name, @weight, @paws = name, weight, paws
	end
end

# Classe herdando a classe Animal
class Kangaroo < Animal
	def initialize(name, weight, paws)
		# Atribuindo valores aos atributos em uma linha
		@name, @weight, @paws = name, weight, paws
	end
end

# Classe herdando a classe Animal
class Dolphin < Animal
	def initialize(name, weight, fins)
		# Atribuindo valores aos atributos em uma linha
		@name, @weight, @paws = name, weight, fins
	end

	# Sobrescrevendo o método da classe pai
	def walk
		puts "#{@name} is swimming on the sea with #{@paws} fins"
	end

	# Sobrescrevendo o método get de paws da classe pai
	# Não é recomendado a fazer esse tipo de método
	def paws
		@paws = 20
	end
end

animal = Animal.new('Rob', 2.0)
puts ""
animal.walk
puts "ANIMAL"
puts "------------------------"
puts "Nome: #{animal.name}"
puts "Peso: #{animal.weight}kg"
puts "------------------------"

dog = Dog.new('Joe', 3.5, 4)
puts ""
dog.walk
puts "CÃO"
puts "------------------------"
puts "Nome:  #{dog.name}"
puts "Peso:  #{dog.weight}kg"
puts "Patas: #{dog.paws}"
puts "------------------------"

kangaroo = Dog.new('Silvester', 70, 2)
puts ""
kangaroo.walk
puts "KANGAROO"
puts "------------------------"
puts "Nome:  #{kangaroo.name}"
puts "Peso:  #{kangaroo.weight}kg"
puts "Patas: #{kangaroo.paws}"
puts "------------------------"

dolphin = Dolphin.new('John', 45, 2)
puts ""
dolphin.walk
puts "DOLPHIN"
puts "------------------------"
puts "Nome:       #{dolphin.name}"
puts "Peso:       #{dolphin.weight}kg"
puts "Nadadeiras: #{dolphin.paws}"
puts "------------------------"