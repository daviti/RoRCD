class OrangeTree
	def initialize height, age
		@height = height
		@age = age
		@fruit = 0
		puts 'An Orange Tree was created!'
	end

	def height
		@height 
	end

	def one_year_passes
		@age += 1 
		@height += 3

		if @age > 2
			@fruit += 5
			puts "Tree now has #{@fruit} fruit!"
		end

		if @age > 8
			puts "Tree dies"
		end	
	end

	def age
		@age
	end



	def pick_an_orange

 	end

end

tree = OrangeTree.new(10, 1)
puts tree.height
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes



=begin 
class OrangeTree
	method height
	method oneYearPass
when called ages tree one one one year 
	@year grows taller per inches
	after #years tree dies
	1st few years no fruit
	from the third year and on the tree produces fruit
	the tree dies at 12 years old
	countTheOranges 
	returns # of oranges on tree
	pickAnOrange reduces @orangeCount by 1 
	returns strings "how delicous the orange was"
	or else it just tells no mor oranges
=end