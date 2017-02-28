class Person

	# Primeira forma de definir atributos da classe
	# def name
	# 	@name
	# end

	# def age
	# 	@age
	# end

	# def height
	# 	@height
	# end

	# Segunda forma de definir atributos da classe
	# Define os atributos que poderão ser lidos fora da classe
	attr_reader :name, :age, :height

	# Define os atributos que poderão ser escritos/alterados fora da classe
	attr_writer :name

	# Métodos são definidos iniciando com a keyword 'def' + 'nome do método' + 'argumentos'
	def say(name)
		puts "I am talking with #{name}..."
	end

	def walk
		puts "I am walking..."
	end

end

# Cria um novo objeto do tipo Person e atribui à variável local 'person'
person = Person.new

# Chama o método 'say()' da classe
person.say('Claudinha')

# Chama o método 'walk' da classe
person.walk

# Chama o método set() do atributo 'name'
person.name = "Paulo Cesar"

# Chama o método get() do atriguto 'name'
puts person.name