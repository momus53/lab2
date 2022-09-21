class Victim < ApplicationRecord
    has_many  :attacks , dependent: :destroy
    has_many  :monster , through: :attacks
    validates :name, presence: true

    def edad
        return Date.today.year - birthdate.year
    end
end