class Course < ApplicationRecord
  belongs_to :user
  belongs_to :category

  
  # Généré avec
  # $ rails g scaffold Courses user:references category:references url:string name:string description:text tagline:string rating:integer
  # -> Génrer view Courses (Index, show, new, edit) + Controlleurs
  # 
end
