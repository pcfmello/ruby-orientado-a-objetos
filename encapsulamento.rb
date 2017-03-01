class Bank

	# Terceira maneira de criar getters e setters dos atributos
	# Gera os getters e setters de uma vez só
	attr_accessor :number, :total

	def deposit(amount)
		puts "Depositando..."
		@total += amount
	end

	def withdraw(amount)
		puts "Sacando..."
		@total -= amount
	end

	# Segunda maneira de criar getters e setters dos atributos
	# Será criado os getters e setters em tempo de execução
	# attr_reader :number, :total
	# attr_writer :number, :total

	# Primeira maneira de criar getters e setters dos atributos
	# def number
	# 	@number
	# end

	# def number=(value)
	# 	@number = value
	# end

	# def total
	# 	@total
	# end

	# def total=(value)
	# 	@total = value
	# end


end

bank = Bank.new
bank.number = "1075"
bank.total = 1000
puts "Número: #{bank.number}"
puts "Total:  #{bank.total}"

bank.deposit(500)
puts "Total:  #{bank.total}"

bank.withdraw(200)
puts "Total:  #{bank.total}"
