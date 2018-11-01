class Category < ApplicationRecord

	has_many :courses
	has_many :discussions

	# Généré avec 
	# $ rails g scaffold Categories name:string
	# -> Génere view, controllers, table


end
