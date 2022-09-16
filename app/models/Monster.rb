class Monster < ApplicationRecord  
    has_many  :attacks

    validates :name, presence: true
    validates :name, uniqueness: true
    validate :con_miedo_mayor_a_5_no_debe_tener_victimas_menores


    def con_miedo_mayor_a_5_no_debe_tener_victimas_menores
        if(scare_level > 5)
            vic = Attack.where(monster_id)
            for aux in vic do
                if(Victim.find(id: aux.victim_id).edad < 18)
                errors.add("No puede tener victimas menores de edad!")
                end
            end
        end    
    end


end