class Victim < ApplicationRecord
    validates :title, presence: true

    def edad
        return Date.today.year - birthdate.year
    end
end