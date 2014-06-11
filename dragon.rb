class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuffInBelly = 10
		@stuffInIntestine = 0

		puts @name + ' is born.'
	end

 	def feed
 		puts 'You feed ' + @name +'.'
 		@stuffInBelly = 10
 	end

end

chico = Dragon.new 'chico'
chico.feed
