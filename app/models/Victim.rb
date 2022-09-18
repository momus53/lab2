class Victim < ApplicationRecord
    has_many  :attacks , dependent: :destroy

    validates :name, presence: true

    def edad
        return Date.today.year - birthdate.year
    end
end