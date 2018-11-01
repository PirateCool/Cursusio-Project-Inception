class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :validatable, authentication_keys: [:login]

        # Généré avec 'rails g devise' (template)
        # Devise - Etape 1 : accepté Username en tant que parametre de registration


        has_many :courses
        has_many :discussions


       

        attr_writer :login
 	validate :validate_username

	def validate_username
  		if User.where(email: username).exists?
    		errors.add(:username, :invalid)
  		end
	end

     #case sensitive
 	def self.find_first_by_auth_conditions(warden_conditions)
  conditions = warden_conditions.dup
  if login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  else
    if conditions[:username].nil?
      where(conditions).first
    else
      where(username: conditions[:username]).first
    end
  end

    
	end


  def login
    @login || self.username || self.email
  end



end
