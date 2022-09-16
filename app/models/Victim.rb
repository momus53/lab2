class Victim < ApplicationRecord
    validates :name, presence: true

    def edad
        return Date.today.year - birthdate.year
    end
end