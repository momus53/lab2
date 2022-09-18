class Monster < ApplicationRecord  
    has_many  :attacks , dependent: :destroy
    has_many  :victims , through: :attacks

    validates :name, presence: true
    validates :name, uniqueness: true

end