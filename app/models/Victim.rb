class Victim < ApplicationRecord
    has_many  :attacks

    validates :name, presence: true

    def edad
        return Date.today.year - birthdate.year
    end
end