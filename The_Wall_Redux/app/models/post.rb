class Post < ActiveRecord::Base

	belongs_to 	:user
	belongs_to 	:wall, 		class_name: "User"

	has_many	:comments,	dependent:	:destroy

	validates	:content, 	presence:	true,
							length:		{ maximum:	500 }

end
