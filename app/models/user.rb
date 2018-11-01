class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


        # Généré avec 'rails g devise' (template)
        # Devise - Etape 1 : accepté Username en tant que parametre de registration


        has_many :courses
        has_many :discussions
end
