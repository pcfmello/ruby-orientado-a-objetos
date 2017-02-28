class Person
	# @variavel => Variáveis de instância
	@name = "Paulo Cesar"

	# @@attributo => Atributos de uma determinada classe
	@@age = 20
end

# instance_variables => Mostra as variáveis de instância em uma classe
puts Person.instance_variables

# class_variables => Mostra os atributos de uma classe
puts Person.class_variables

# Gera um erro pois o Ruby não encontrou um método chamado 'name' (get e set)
puts Person.new.name