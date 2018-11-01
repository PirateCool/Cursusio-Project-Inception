class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
          :validatable, authentication_keys: [:login]

        has_many :courses
        has_many :discussions


attr_writer :login
        # Généré avec 'rails g devise' (template)
        # Devise - Etape 1 : accepté Username en tant que parametre de registration

    def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      elsif conditions.has_key?(:username) || conditions.has_key?(:email)
        where(conditions.to_h).first
      end
    end

  	def login
    	@login || self.username || self.email
  	end



  	validate :validate_username

def validate_username
  if User.where(email: username).exists?
    errors.add(:username, :invalid)
  end
end
  		# Case sensitive
 


end
