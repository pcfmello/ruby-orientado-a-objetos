class Person

	attr_reader :name, :age, :height
	attr_writer :name

	# Define o construtor da classe. Necessariamente deve se chamar 'initialize'
	def initialize(color, width)
		puts "My constructor, color: #{color}, width: #{width}"

		# Executando o método privado dentro da classe
		puts "constructor: #{my_private_method()}"
	end

	def say(name)
		puts "I am talking with #{name}..."
	end

	def walk
		puts "I am walking..."
	end

	# Definindo métodos privados(acessados somente pela própria classe)
	private
		def my_private_method()
			puts 'This is my private method'
		end

	#Definindo métodos protegidos(acessados somente pela classe que o declara e suas filhas(herança))
	protected 
		def my_protected_method
			puts "This is my protected method"
		end


end

paulo  = Person.new('Blue', 0.90)
lucas = Person.new('White', 0.50)
claudia = Person.new('Red', 0.70)
# Executando o método privado fora da classe
# Gera o erro em tempo de execução
# => private method `my_private_method' called for #<Person:0x007fb87b1e1d20> (NoMethodError)
paulo.my_private_method

# Executando o método protegido fora da classe principal e fora de suas filhas(herança)
# Gera o erro em tempo de execução
# => controle_de_acesso_e_construtores.rb:48:in `<main>': protected method `my_protected_method' called for #<Person:0x007fa1c28b9488> (NoMethodError)
claudia.my_protected_method